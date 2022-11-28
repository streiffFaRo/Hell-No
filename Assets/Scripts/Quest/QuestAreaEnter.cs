using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class QuestAreaEnter : MonoBehaviour
{
    [SerializeField] private GameObject area;

    [SerializeField] private UnityEvent onEnter;

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Player"))
        {
            onEnter.Invoke();
            area.SetActive(false);
        }
        
    }
}
