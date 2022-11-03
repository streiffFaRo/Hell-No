using System;
using System.Collections;
using System.Collections.Generic;

using Ink;
using Ink.Runtime;

using UnityEngine;

public class DialogueController : MonoBehaviour
{
    public static event Action DialogueOpend;
    public static event Action DialogueClosed;
    
    
    #region Inspector

    [Header("Ink")]
    [Tooltip("Compiled ink text asset")]
    [SerializeField] private TextAsset inkAsset;

    [Header("UI")]
    [Tooltip("Dialogbox in der der Text erscheint")]
    [SerializeField] private DialogueBox dialogueBox;

    #endregion

    private Story inkStory;

    #region UnityEventFunctions

    private void Awake()
    {
        inkStory = new Story(inkAsset.text);
        inkStory.onError += OnInkError;
    }

    private void OnEnable()
    {
        DialogueBox.DialogueContinued += OnDialogueContinued;
        DialogueBox.ChoiceSelected += OnChoiceSelected;
    }

    private void Start()
    {
        dialogueBox.gameObject.SetActive(false);
    }

    private void OnDisable()
    {
        DialogueBox.DialogueContinued -= OnDialogueContinued;
        DialogueBox.ChoiceSelected -= OnChoiceSelected;
    }
    
    private void OnDestroy()
    {
        inkStory.onError -= OnInkError;
    }

    #endregion
    
    #region Dialogue Lifecycle

    public void StartDialogue(string dialoguePath)
    {
        //TODO Open Dialogue UI 
        OpenDialogue();
        
        inkStory.ChoosePathString(dialoguePath);
        ContinueDialogue();
    }

    private void OpenDialogue()
    {
        dialogueBox.gameObject.SetActive(true);
        
        DialogueOpend?.Invoke();
    }

    private void CloseDialogue()
    {
        dialogueBox.gameObject.SetActive(false);
        DialogueClosed?.Invoke();
        //TODO Clean up
    }

    private void ContinueDialogue()
    {
        if (IsAtEnd())
        {
            //TODO Class Dialogue UI
            CloseDialogue();
            return;
        }

        DialogueLine line = new DialogueLine();
        if (CanContinue())
        {
            string inkLine = inkStory.Continue();
            if (inkLine == String.Empty)
            {
                ContinueDialogue();
                return;
            }
            //TODO Prase text

            line.text = inkLine;
        }
        line.choices = inkStory.currentChoices;

        dialogueBox.DisplayText(line);
    }

    private void SelectChoice(int choiceIndex)
    {
        inkStory.ChooseChoiceIndex(choiceIndex);
        ContinueDialogue();
    }

    public void OnDialogueContinued(DialogueBox _)
    {
        ContinueDialogue();
    }

    private void OnChoiceSelected(DialogueBox _, int choiceIndex)
    {
        SelectChoice(choiceIndex);
    }

    #endregion

    #region Ink

    private bool CanContinue()
    {
        return inkStory.canContinue;
    }

    private bool HasChoices()
    {
        return inkStory.currentChoices.Count > 0;
    }

    private bool IsAtEnd()
    {
        return !CanContinue() && !HasChoices();
    }



    private void OnInkError(String message, ErrorType type)
    {
        switch (type)
        {
            case ErrorType.Author:
                break;
            case ErrorType.Warning:
                Debug.LogWarning(message);
                break;
            case ErrorType.Error:
                Debug.LogError(message);
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(type), type, null);
        }
    }

    #endregion
    

}

public struct DialogueLine
{
    public string speaker;
    public string text;
    public List<Choice> choices;

    //TODO AudioClip hinzufügen?
}