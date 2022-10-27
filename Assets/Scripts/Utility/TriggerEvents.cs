using System;

using Cinemachine.Editor;

using UnityEngine;
using UnityEngine.Events;

public class TriggerEvents : MonoBehaviour
{
    private const string UntaggedTag = "Untagged";
    private const string PlayerTag = "Player";
    #region Inspector

    [SerializeField] private UnityEvent<Collider> onTriggerEnter;
    [SerializeField] private UnityEvent<Collider> onTriggerExit;
    [SerializeField] private bool filterOnTag = true;
    [SerializeField] private string reactOn = PlayerTag;
    
    #endregion

    private void OnValidate() //Verhindert, dass kein Tag im Editor gesetzt ist --> setzt immer zu untagged sonst
    {
        if (string.IsNullOrWhiteSpace(reactOn))
        {
            reactOn = UntaggedTag;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (filterOnTag && !other.CompareTag(reactOn))
        {
            return;
        }
        onTriggerEnter.Invoke(other);
    }

    private void OnTriggerExit(Collider other)
    {
        if (filterOnTag && !other.CompareTag(reactOn))
        {
            return;
        }
        onTriggerExit.Invoke(other);
    }
}
