using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Reactor : MonoBehaviour
{
    #region Inspector
    
    [SerializeField] private List<State> conditions;

    [SerializeField] private UnityEvent onFulfilled;

    [SerializeField] private UnityEvent onUnfulfilled;

    [SerializeField] private QuestEntry questEntry;

    #endregion

    private bool fulfilled = false;

    
    private void OnEnable()
    {
        OnStateChanged(FindObjectOfType<GameState>());
        GameState.StateChanged += OnStateChanged;

        if (questEntry != null)
        {
            questEntry.gameObject.SetActive(true);
        }
    }

    private void OnDisable()
    {
        GameState.StateChanged -= OnStateChanged;
        
        if (questEntry != null)
        {
            questEntry.gameObject.SetActive(true);
        }
    }

    private void OnStateChanged(GameState gameState)
    {
        bool newFulfilled = gameState.CheckConditions(conditions);

        if (!fulfilled && newFulfilled)
        {
            if (questEntry != null)
            {
                questEntry.setQuestStatus(true);
            }
            onFulfilled.Invoke();
        }
        else if (fulfilled && !newFulfilled)
        {
            if (questEntry != null)
            {
                questEntry.setQuestStatus(false);
            }
            onUnfulfilled.Invoke();
        }
        fulfilled = newFulfilled;
    }
}
