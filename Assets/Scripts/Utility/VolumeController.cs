using System;
using System.Collections;
using System.Collections.Generic;

using FMOD.Studio;

using FMODUnity;

using UnityEngine;

public class VolumeController : MonoBehaviour
{
    private VCA master;
    private VCA dialog;
    private VCA sfx;
    private VCA music;

    #region Unity Event Function

    private void Awake()
    {
        master = RuntimeManager.GetVCA("vca:/Master");
        dialog = RuntimeManager.GetVCA("vca:/Dialog");
        sfx = RuntimeManager.GetVCA("vca:/SFX");
        music = RuntimeManager.GetVCA("vca:/Music");
    }

    private void Update()
    {
        master.setVolume(PlayerPrefs.GetFloat(SettingsMenu.MasterVolumeKey, SettingsMenu.DefaultMasterVolume));
        dialog.setVolume(PlayerPrefs.GetFloat(SettingsMenu.DialogVolumeKey, SettingsMenu.DefaultDialogVolume));
        sfx.setVolume(PlayerPrefs.GetFloat(SettingsMenu.SFXVolumeKey, SettingsMenu.DefaultSFXVolume));
        music.setVolume(PlayerPrefs.GetFloat(SettingsMenu.MusicVolumeKey, SettingsMenu.DefaultMusicVolume));

    }

    #endregion
}
