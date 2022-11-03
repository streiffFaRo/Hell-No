using System;

using UnityEngine;

public class GameController : MonoBehaviour
{
    private PlayerController player;
    private DialogueController dialogueController;

    private void Awake()
    {
        player = FindObjectOfType<PlayerController>();

        if (player == null)
        {
            Debug.Log("No Player found in scene.", this);
        }

        dialogueController = FindObjectOfType<DialogueController>();

        if (dialogueController == null)
        {
            Debug.LogError("No dialogueController found in scenen", this);
        }
    }

    private void OnEnable()
    {
        DialogueController.DialogueClosed += EndDialogue;
    }

    private void Start()
    {
        EnterPlayMode();
    }

    private void OnDisable()
    {
        DialogueController.DialogueClosed -= EndDialogue;
    }

    #region Modes

    private void EnterPlayMode()
    {
        Cursor.lockState = CursorLockMode.Locked;
        player.EnableInput();
    }

    private void EnterDialogMode()
    {
        Cursor.lockState = CursorLockMode.None;
        player.DisableInput();
    }

    #endregion

    public void StartDialogue(string dialoguePath)
    {
        EnterDialogMode();
        dialogueController.StartDialogue(dialoguePath);
    }

    private void EndDialogue()
    {
        EnterPlayMode();
    }
}
