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

    [SerializeField] private string stepSoundParameterName = "surface";

    [SerializeField] private PhysicMaterial defaultStepSoundPhysicMaterial;
    
    [Header("Raycast")]
    [SerializeField] private LayerMask layerMask;
    
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
                ChangeStepSounds(stepSound);
                onStep.Invoke();
                break;
            case "Land":
                landSound.Play();
                ChangeStepSounds(landSound);
                onLand.Invoke();
                break;
            default:
                Debug.LogWarning("Kein eingetragener Soundparameter angegeben", this);
                break;
        }
    }

    #endregion

    private void ChangeStepSounds(StudioEventEmitter emitter)
    {
        if (!Physics.Raycast(transform.position + Vector3.up * 0.01f,
                             Vector3.down,
                             out RaycastHit hit,
                             5f,
                             layerMask, 
                             QueryTriggerInteraction.Ignore))
        {
            return;
        }

        PhysicMaterial groundPhysicMaterial = hit.collider.sharedMaterial;
        int stepSoundParameterValue = GetStepSoundParameterValue(groundPhysicMaterial);


        emitter.SetParameter(stepSoundParameterName, stepSoundParameterValue);
    }

    private int GetStepSoundParameterValue(PhysicMaterial physicMaterial)
    {
        if (physicMaterial == null)
        {
            physicMaterial = defaultStepSoundPhysicMaterial;
        }

        switch (physicMaterial.name)
        {
            case "Grass":  //Physic Material Name, nicht Parameter Label
                return 0;  //Paramter Wert in FMOD!!
            case "Wood":
                return 1;
            default:
                return 0;
            
        }
    }
}
