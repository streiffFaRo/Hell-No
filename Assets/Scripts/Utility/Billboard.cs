using System;

using UnityEngine;

public class Billboard : MonoBehaviour
{
    
    private new Camera camera;


    #region Unity Event Function

    private void Awake()
    {
        camera = Camera.main;
    }

    private void Update()
    {
        transform.rotation = camera.transform.rotation;
    }

    #endregion
}
