using System;
using System.Collections;
using System.Collections.Generic;

using DG.Tweening;

using UnityEngine;

public class ButtonAnimation : MonoBehaviour
{
    #region Inspector

    [Tooltip("Wie weit der Knopf rein gedrückt wird.")]
    [SerializeField] private float yMovement = -0.049f;

    [Tooltip("Welche Farbe der Knopf hat wenn er gedrückt wird.")]
    [SerializeField] private Color pressColor = Color.yellow;

    [Tooltip("Wie lange der Knopf gedrückt bleiben soll.")]
    [Min(0)]
    [SerializeField] private float downDuration = 0.3f;

    [Header("In")]
    [SerializeField] private Ease easeIn = Ease.InSine;
    [SerializeField] private float durationIn = 0.3f;
    
    [Header("Out")]
    [SerializeField] private Ease easeOut = Ease.OutElastic;
    [SerializeField] private float durationOut = 0.5f;
    
    #endregion

    private MeshRenderer meshRenderer;
    private Color originalColor;
    private Sequence sequence;

    #region UnityEventFunction

    private void Awake()
    {
        meshRenderer = GetComponent<MeshRenderer>();
        originalColor = meshRenderer.material.color;
    }
    #endregion

    public void PlayAnimation()
    {
        sequence.Complete(true);
        
        sequence = DOTween.Sequence();

        sequence.Append(transform.DOLocalMoveY(yMovement, durationIn).SetRelative().SetEase(easeIn))
                .Join(meshRenderer.material.DOColor(pressColor, durationIn).SetEase(Ease.Linear))
                .AppendInterval(downDuration)
                .Append(transform.DOLocalMoveY(-yMovement, durationOut).SetRelative().SetEase(easeOut))
                .Join(meshRenderer.material.DOColor(originalColor, durationOut).SetEase(Ease.Linear));

        sequence.Play();

    }

}
