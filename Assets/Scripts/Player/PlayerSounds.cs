using System.Collections;
using System.Collections.Generic;

using FMODUnity;

using UnityEngine;
using UnityEngine.Events;

public class PlayerSounds : MonoBehaviour
{
    #region Inspector

    [SerializeField] private StudioEventEmitter stepSound;
    [SerializeField] private StudioEventEmitter landSound;
    
    
    [Header("Unity Events")]
    [SerializeField] private UnityEvent onStep;
    [SerializeField] private UnityEvent onLand;

    #endregion

    #region AnimationEvents

    // ReSharper disable once UnusedMember.Global - Wird von AnimationsEvents aufgerufen.
    public void PlaySound(AnimationEvent animationEvent)
    {

        if (animationEvent.animatorClipInfo.weight < 0.5f)
        {
            return;
        }
        switch (animationEvent.stringParameter)
        {
            case "Step":
                stepSound.Play();
                onStep.Invoke();
                break;
            case "Land":
                landSound.Play();
                onLand.Invoke();
                break;
            default:
                Debug.LogWarning("Kein eingetragener Soundparameter angegeben", this);
                break;
        }
    }

    #endregion
    

    
}
