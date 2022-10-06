using System;

using UnityEngine;

public class GameController : MonoBehaviour
{
    private void Start()
    {
        Enterplaymode();
    }

    #region Modes

    private void Enterplaymode()
    {
        Cursor.lockState = CursorLockMode.Locked;
    }

    #endregion
}
