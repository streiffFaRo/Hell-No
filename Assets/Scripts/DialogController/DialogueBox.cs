using System;
using System.Collections;
using System.Collections.Generic;

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

    #region Unity Event Functions

    private void Awake()
    {
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

        return choiceButtons;
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

}
