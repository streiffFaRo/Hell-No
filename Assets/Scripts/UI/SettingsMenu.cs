using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SettingsMenu : MonoBehaviour
{
    #region PlayerPrefs Keys

    public const string MasterVolumeKey = "Setting.Volume.Master";
    public const string DialogVolumeKey = "Setting.Volume.Dialog";
    public const string SFXVolumeKey = "Setting.Volume.SFX";
    public const string MusicVolumeKey = "Setting.Volume.Music";

    public const string InvertYKey = "Settings.Controls.InvertY";
    public const string ControllerSens = "Settings.Controls.ControllerSens";
    public const string MouseSens = "Settings.Controls.MouseSens";

    #endregion

    #region Default Values

    public const float DefaultMasterVolume = 1.0f;
    public const float DefaultDialogVolume = 1.0f;
    public const float DefaultSFXVolume = 1.0f;
    public const float DefaultMusicVolume = 1.0f;

    public const bool DefaultInvertY = true;
    public const float DefaultControllerSens = 1.0f;
    public const float DefaultMouseSens = 1.0f;
    
    #endregion
    
    #region inspector

    [Header("Volume")]
    [SerializeField] private Slider masterVolumeSlider;
    [SerializeField] private Slider dialogVolumeSlider;
    [SerializeField] private Slider sfxVolumeSlider;
    [SerializeField] private Slider musicVolumeSlider;

    [Header("Controls")]
    [SerializeField] private Toggle invertYToggle;
    [SerializeField] private Slider controllerSensitivity;
    [SerializeField] private Slider mouseSensitivity;
    
    #endregion

    #region Unity Event Functions

    private void Start()
    {
        Initilize(masterVolumeSlider, MasterVolumeKey, DefaultMasterVolume);
        Initilize(dialogVolumeSlider, DialogVolumeKey, DefaultDialogVolume);
        Initilize(sfxVolumeSlider, SFXVolumeKey, DefaultSFXVolume);
        Initilize(musicVolumeSlider,MusicVolumeKey,DefaultMusicVolume);
        
        Initilize(invertYToggle, InvertYKey, DefaultInvertY);
        Initilize(controllerSensitivity, ControllerSens, DefaultControllerSens);
        Initilize(mouseSensitivity, MouseSens, DefaultMouseSens);
    }

    #endregion

    private void Initilize(Slider slider, string key, float defaultValue)
    {
        slider.SetValueWithoutNotify(PlayerPrefs.GetFloat(key, defaultValue));
        slider.onValueChanged.AddListener(
            (float value) =>
            {
                PlayerPrefs.SetFloat(key, value);
            }

        );
    }

    private void Initilize(Toggle toggle, string key, bool defalutValue)
    {
        toggle.SetIsOnWithoutNotify(GetBool(key, defalutValue));
        toggle.onValueChanged.AddListener(
            (bool value) =>
            {
               SetBool(key, value); 
            }
        );
    }

    #region Player Prefs

    public static void SetBool(string key, bool value)
    {
        int intValue = value ? 1 : 0;
        PlayerPrefs.SetInt(key, intValue);
    }

    public static bool GetBool(string key, bool defaultValue = false)
    {
        int defaultIntValue = defaultValue ? 1 : 0;
        int intValue = PlayerPrefs.GetInt(key, defaultIntValue);
        return intValue != 0;
    }

    #endregion
    
}
