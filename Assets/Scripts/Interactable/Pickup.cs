using System;
using System.Collections;
using System.Collections.Generic;

using DG.Tweening;

using FMODUnity;

using UnityEngine;
using UnityEngine.Events;

public class Pickup : MonoBehaviour
{

    [SerializeField] private Transform Schädel;

    [SerializeField] private Vector3 Rotation;
    [SerializeField] private Ease ease;
    
    [SerializeField] private State state;
    [SerializeField] private UnityEvent onCollected;
    
    [SerializeField] private StudioEventEmitter collectSound;
    
    
    private void Awake()
    {
        if (Schädel != null)
        {
            Schädel.DORotate(Rotation, 5).SetEase(ease).SetLoops(-1);
        }
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Player"))
        {
            onCollected.Invoke();
            collectSound.Play();
            FindObjectOfType<GameState>().Add(state);
            Destroy(gameObject);
        }
    }
}
