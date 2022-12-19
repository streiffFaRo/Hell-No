
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;

using DG.Tweening;

using UnityEngine;
using UnityEngine.Events;

public class Interactable : MonoBehaviour
{
    #region Inspector

    [SerializeField] private UnityEvent onInteracted;
    
    [SerializeField] private UnityEvent onSelected;
    
    [SerializeField] private UnityEvent onDeselected;
    

    #endregion

    #region Unity Event Function

    private void Start()
    {
        List<Interaction> interactions = GetComponentsInChildren<Interaction>(true).ToList();

        if (interactions.Count > 0)
        {
            interactions[0].gameObject.SetActive(true);
        }
    }

    #endregion
    
    public void Interact()
    {
        Interaction interaction = FindActiveInteraction();

        if (interaction != null)
        {
            interaction.Execute();
        }
        
        onInteracted.Invoke();
    }

    public void Selected()
    {
        onSelected.Invoke();
    }

    public void Deselect()
    {
        onDeselected.Invoke();
    }

    private Interaction FindActiveInteraction()
    {
        return GetComponentInChildren<Interaction>(false);
    }
    
}
