using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestEntry : MonoBehaviour
{

    [SerializeField] private GameObject statusIcon;

    private void Awake()
    {
        setQuestStatus(false);
    }

    public void setQuestStatus(bool fulfilled)
    {
        statusIcon.SetActive(fulfilled);
    }

}
