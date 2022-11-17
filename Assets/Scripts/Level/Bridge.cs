using System;
using System.Collections;
using System.Collections.Generic;

using DG.Tweening;

using UnityEngine;
using UnityEngine.UIElements;

public class Bridge : MonoBehaviour
{

    #region Inspector

    [SerializeField] private Transform platform;

    [SerializeField] private Vector3 retractedPosition;
    
    [SerializeField] private Vector3 extendedPosition;

    [SerializeField] private bool startExtended;

    [Header("Animation")]
    [Min(0)]
    [SerializeField] private float moveDuration = 1f;

    [SerializeField] private Ease ease = DOTween.defaultEaseType;

    #endregion

    private bool extended;

    private void Awake()
    {
        extended = startExtended;
        platform.localPosition = startExtended ? extendedPosition : retractedPosition;
    }

    public void Toggle()
    {
        if (extended == true)
        {
            Retract();
        }
        else
        {
            Extend();
        }
    }

    public void Extend()
    {
        extended = true;
        MovePlatform(extendedPosition);
    }

    public void Retract()
    {
        extended = false;
        MovePlatform(retractedPosition);
    }

    private void MovePlatform(Vector3 targetPosition)
    {
        float speed = (retractedPosition - extendedPosition).magnitude / moveDuration;
        
        platform.DOKill();
        platform.DOLocalMove(targetPosition, speed).SetSpeedBased().SetEase(ease).OnComplete(() =>
        {
            Debug.Log("Ende der Animation!");
        }
            );
    }

}
