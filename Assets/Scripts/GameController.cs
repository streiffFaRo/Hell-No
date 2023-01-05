using System;

using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

public class GameController : MonoBehaviour
{
    private PlayerController player;
    private DialogueController dialogueController;
    private MenuController menuController;

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
            Debug.LogError("No dialogueController found in scene", this);
        }
        
        menuController = FindObjectOfType<MenuController>();

        if (menuController == null)
        {
            Debug.LogError("No menuController found in scene", this);
        }
    }

    private void OnEnable()
    {
        DialogueController.DialogueClosed += EndDialogue;

        MenuController.BaseMenuOpening += EnterPauseMode;
        MenuController.BaseMenuClosed += EnterPlayMode;
    }

    private void Start()
    {
        EnterPlayMode();
    }

    private void OnDisable()
    {
        DialogueController.DialogueClosed -= EndDialogue;
        
        MenuController.BaseMenuOpening -= EnterPauseMode;
        MenuController.BaseMenuClosed -= EnterPlayMode;
    }

    #region Modes

    public void EnterPlayMode()
    {
        Time.timeScale = 1;
        Cursor.lockState = CursorLockMode.Locked;
        player.EnableInput();
        menuController.enabled = true;
    }

    public void EnterDialogMode()
    {
        Time.timeScale = 1;
        Cursor.lockState = CursorLockMode.None;
        player.DisableInput();
        menuController.enabled = false;
    }

    public void EnterCutsceneMode()
    {
        Time.timeScale = 1;
        Cursor.lockState = CursorLockMode.Locked;
        player.DisableInput();
        menuController.enabled = false;
    }

    public void EnterPauseMode()
    {
        Time.timeScale = 0;
        Cursor.lockState = CursorLockMode.None;
        player.DisableInput();
        menuController.enabled = true;
    }

    #endregion
    
    

    public void StartDialogue(string dialoguePath, UnityEvent onEndDialogue)
    {
        EnterDialogMode();
        dialogueController.StartDialogue(dialoguePath, onEndDialogue);
    }

    private void EndDialogue()
    {
        EnterPlayMode();
    }
}
