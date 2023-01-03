using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class QuestFade : MonoBehaviour
{

    [SerializeField] private UnityEvent preFade;
    [SerializeField] private UnityEvent postFade;

    public void FadeStart()
    {
        preFade.Invoke();
        FindObjectOfType<GameController>().EnterCutsceneMode();
        StartCoroutine(Wait());

    }
    
    private IEnumerator Wait()
    {
        yield return new WaitForSeconds(1.16f);
        postFade.Invoke();
        FindObjectOfType<GameController>().EnterDialogMode();
    }
}
