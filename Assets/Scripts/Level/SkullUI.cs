using System.Collections;
using System.Collections.Generic;

using DG.Tweening;
using DG.Tweening.Core;
using DG.Tweening.Plugins.Options;

using UnityEngine;

public class SkullUI : MonoBehaviour
{

    [SerializeField] private RectTransform rectTransform;
    [SerializeField] private CanvasGroup canvasGroup;
    [SerializeField] private GameObject Kopf;


    /*private void Start()
       {
          StartCoroutine(ShowSkullUI());
       }*/
    
       #region Animations
    
       public Tween DOShow()
       {
          float height = rectTransform.rect.height;
            
          this.DOKill();
          Sequence sequence = DOTween.Sequence(this);
    
          sequence.Append(DOMove(Vector2.zero).From(new Vector2(0, -height)))
                  .Join(DOFade(1).From(0));
            
          return sequence;
       }
    
       public Tween DOHide()
       {
          float height = rectTransform.rect.height + 80f;
            
          this.DOKill();
          Sequence sequence = DOTween.Sequence(this);
        
          sequence.Append(DOMove(new Vector2(0, -height)).From(Vector2.zero))
                  .Join(DOFade(0).From(1));
            
          return sequence;
       }
    
       private TweenerCore<Vector2, Vector2, VectorOptions> DOMove(Vector2 targetPosition)
       {
          return rectTransform.DOAnchorPos(targetPosition, 0.75f).SetEase(Ease.OutBack);
       }
    
       private TweenerCore<float, float, FloatOptions> DOFade(float targetAlpha)
       {
          return canvasGroup.DOFade(targetAlpha, .75f).SetEase(Ease.InOutSine);
       }
    
       #endregion
    
       
       private IEnumerator ShowSkullUI()
       {
          Kopf.SetActive(true);
          DOShow();
          yield return new WaitForSeconds(3f);
          DOHide();
       }

       public void StartUI()
       {
          StartCoroutine(ShowSkullUI());
       }

}
