using System;
using System.Collections;
using System.Collections.Generic;

using DG.Tweening;

using FMODUnity;

using TMPro;

using UnityEngine;
using UnityEngine.Events;

public class Pickup : MonoBehaviour
{

    [SerializeField] private Transform Schädel;
    [SerializeField] private MeshRenderer Kopf;
    [SerializeField] private MeshCollider Collider;
    [SerializeField] private TextMeshProUGUI Text;

    [SerializeField] private Vector3 Rotation;
    [SerializeField] private Ease ease;
    
    [SerializeField] private StudioEventEmitter collectSound;
    
    [SerializeField] private State state;
    [SerializeField] private UnityEvent onCollected;
    

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
            FindObjectOfType<GameState>().Count();
            onCollected.Invoke();
            collectSound.Play();
            FindObjectOfType<GameState>().Add(state);
            Text.SetText($"{FindObjectOfType<GameState>().skulltotal} / 8");
            FindObjectOfType<SkullUI>().StartUI();
            Destroy(Kopf);
            Destroy(Collider);
        }
    }
}
