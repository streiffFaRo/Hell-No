using System;
using System.Collections;
using System.Collections.Generic;

using DG.Tweening;
using DG.Tweening.Core;
using DG.Tweening.Plugins.Options;

using Ink.Runtime;

using TMPro;

using UnityEngine;
using UnityEngine.UI;

public class DialogueBox : MonoBehaviour
{
    public static event Action<DialogueBox> DialogueContinued;
    public static event Action<DialogueBox, int> ChoiceSelected;

    #region Inspector

    [Tooltip("Momentaner Sprecher")]
    [SerializeField] private TextMeshProUGUI dialogueSpeaker;

    [Tooltip("gezeigter Text")]
    [SerializeField] private TextMeshProUGUI dialogueText;

    [Tooltip("Knopf um fort zu fahren")]
    [SerializeField] private Button continueButton;

    
    [Header("Wahlen")]
    [Tooltip("Platzhalter für jede Möglichkeit")]
    [SerializeField] private Transform choiceContainer;

    [Tooltip("Prefab für Möglichekteiten-Knöpfe")]
    [SerializeField] private Button choiceButtonPrefab;

    #endregion

    private RectTransform rectTransform;
    private CanvasGroup canvasGroup;
    
    #region Unity Event Functions

    private void Awake()
    {
        rectTransform = GetComponent<RectTransform>();
        canvasGroup = GetComponent<CanvasGroup>();
        continueButton.onClick.AddListener(
            () =>
            {
                DialogueContinued?.Invoke(this);
            }
        );
    }
    private void OnEnable()
    {
        dialogueSpeaker.SetText(string.Empty);
        dialogueText.SetText(string.Empty);
    }

    #endregion

    public void DisplayText(DialogueLine dialogueLine)
    {
        if (dialogueSpeaker != null)
        {
            dialogueSpeaker.SetText(dialogueLine.speaker);
        }
        dialogueText.SetText(dialogueLine.text);
        
        DisplayButtons(dialogueLine.choices);
    }

    private void DisplayButtons(List<Choice> choices)
    {
        Selectable newSelection;
        
        if (choices == null || choices.Count == 0)
        {
            ShowContinueButton(true);
            ShowChoices(false);
            newSelection = continueButton;
        }
        else
        {
            ClearChoices();
            List<Button> choiceButtons = GenerateChoices(choices);

            ShowChoices(true);
            ShowContinueButton(false);
            newSelection = choiceButtons[0];
        }

        StartCoroutine(DelayedSelect(newSelection));
    }

    private void ClearChoices()
    {
        foreach (Transform child in choiceContainer)
        {
            Destroy(child.gameObject);
        }
    }

    private List<Button> GenerateChoices(List<Choice> choices)
    {
        List<Button> choiceButtons = new List<Button>();

        for (int i = 0; i < choices.Count; i++)
        {
            Choice choice = choices[i];

            Button button = Instantiate(choiceButtonPrefab, choiceContainer);

            int index = i;
            button.onClick.AddListener(
            ()=>
            {
                ChoiceSelected?.Invoke(this, index);
            }
            );
            
            TextMeshProUGUI buttonText = button.GetComponentInChildren<TextMeshProUGUI>();
            buttonText.SetText(choice.text);
            button.name = choice.text;


            choiceButtons.Add(button);
        }

        if (choiceButtons.Count > 1)
        {
            for (int i = 1; i < choiceButtons.Count-1; i++)
            {
                SetNavigation(choiceButtons,i,i-1,i+1);
            }
        
            SetNavigation(choiceButtons, 0, choiceButtons.Count-1, 1);
            SetNavigation(choiceButtons, choiceButtons.Count-1, choiceButtons.Count-2, 0);
        }

        return choiceButtons;
    }

    private void SetNavigation(List<Button> list, int index, int up, int down)
    {
        Button button = list[index];

        Navigation navigation = button.navigation;
            
        navigation.mode = Navigation.Mode.Explicit;
        navigation.selectOnUp = list[up];
        navigation.selectOnDown = list[down];
            
        button.navigation = navigation;
    }

    private void ShowContinueButton(bool show)
    {
        continueButton.gameObject.SetActive(show);
    }

    private void ShowChoices(bool show)
    {
        choiceContainer.gameObject.SetActive(show);
    }

    private IEnumerator DelayedSelect(Selectable selectable)
    {
        yield return null;
        selectable.Select();
    }

    #region Animations

    public Tween DOShow()
    {
        float height = rectTransform.rect.height;
        
        this.DOKill();
        Sequence sequence = DOTween.Sequence(this);

        sequence.Append(DOMove(Vector2.zero).From(new Vector2(0, -height)))
                .Join(DOFade(1).From(0));
        
        return sequence;
    }

    public Tween DOHide()
    {
        float height = rectTransform.rect.height;
        
        this.DOKill();
        Sequence sequence = DOTween.Sequence(this);
        
        sequence.Append(DOMove(new Vector2(0, -height)).From(Vector2.zero))
                .Join(DOFade(0).From(1));
        
        return sequence;
    }

    private TweenerCore<Vector2, Vector2, VectorOptions> DOMove(Vector2 targetPosition)
    {
        return rectTransform.DOAnchorPos(targetPosition, 0.75f).SetEase(Ease.OutBack);
    }

    private TweenerCore<float, float, FloatOptions> DOFade(float targetAlpha)
    {
        return canvasGroup.DOFade(targetAlpha, .75f).SetEase(Ease.InOutSine);
    }

    #endregion
}
