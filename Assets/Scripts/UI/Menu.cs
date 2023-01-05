using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;

using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Menu : MonoBehaviour
{
    [SerializeField] private Selectable selectOnOnpen;

    [SerializeField] private bool selectPreviousClose = true;
    
    [SerializeField] private bool disableOnAwake;

    private Selectable selectOnClose;
    
    private void Awake()
    {
        if (disableOnAwake)
        {
            gameObject.SetActive(false);
        }
        else
        {
            Open();
        }
    }

    public void Open()
    {
        gameObject.SetActive(true);

        if (selectPreviousClose)
        {
            GameObject previousSelection = EventSystem.current.currentSelectedGameObject;
            if (previousSelection != null)
            {
                selectOnClose = previousSelection.GetComponent<Selectable>();
            }
        }

        StartCoroutine(DelayedSelection(selectOnOnpen));
    }

    public void Close()
    {
        if (selectPreviousClose && selectOnClose != null)
        {
            //selectOnClose.StartCoroutine(DelayedSelection(selectOnClose));
            Select(selectOnClose);
        }
        gameObject.SetActive(false);
    }

    public void Show()
    {
        gameObject.SetActive(true);
    }

    public void Hide()
    {
        gameObject.SetActive(false);
    }

    private IEnumerator DelayedSelection(Selectable selectable)
    {
        yield return null;
        Select(selectable);
    }

    private void Select(Selectable selection)
    {
        if (selection == null) { return; }
        selection.Select();
    }


}
