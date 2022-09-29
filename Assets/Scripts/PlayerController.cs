using System;

using Unity.Mathematics;

using UnityEngine;
using UnityEngine.Assertions.Must;
using UnityEngine.InputSystem;


public class PlayerController : MonoBehaviour
{
    
    /////////////////////////////////////////////////////////////////////////////////////////////

    #region Inspector

    [Header("Movement")]
    [Min(0)]
    [Tooltip("Maximale Geschwindikeit in uu/s.")]
    [SerializeField] private float movementSpeed = 8f;
    [Min(0)]
    [Tooltip("Stärke der Geschwindikeits Zu- und Abnahme.")]
    [SerializeField] private float speedChangeRate = 10f;
    [Min(0)]
    [SerializeField] private float rotationSpeed = 10f;

    [Header("Camera")]
    [Tooltip("Fokus und Rotationspunkt der Kamera")]
    [SerializeField] private Transform cameraTarget;
    [Range(-89f, 0f)]
    [Tooltip("Mindest Kamera Winkel. Untere Hälfte des Horizonts")]
    [SerializeField] private float verticalCameraRotationMin = -30f;
    [Range(0f, 89f)]
    [Tooltip("Maximaler Kamera Winkel")]
    [SerializeField] private float verticalCameraRotationMax = 70f;
    [Tooltip("Sensitivität der horizonalen Kamerabewegung")]
    [SerializeField] private float cameraHorizontalSpeed = 200f;
    [Tooltip("Sensitivität der vertikalen Kamerabewegung")]
    [SerializeField] private float cameraVerticalSpeed = 130f;

    [Header("Mouse Settings")]
    [Range(0f, 2f)]
    [Tooltip("Multiplikator für Mausgeschwindigkeit")]
    [SerializeField] private float mouseCameraSensitivity = 1f;

    
    [Header("Controller Settings")]
    [Range(0f, 2f)]
    [Tooltip("Multiplikator für Mausgeschwindigkeit")]
    [SerializeField] private float controllerCameraSensitivity = 1f;

    [Tooltip("Kehrt die Y-Achse für Controller")]
    [SerializeField] private bool invertY = true;

    
    #endregion


    private CharacterController characterController;
    private GameInput input;
    private InputAction moveAction;
    private InputAction lookAction;
    private Vector2 moveInput;
    private Vector2 lookInput;
    private Vector2 cameraRotation;
    private Vector3 lastMovement;
    private Quaternion characterTargetRotation = Quaternion.identity;
    
    /////////////////////////////////////////////////////////////////////////////////////////////

    #region Eventfunctions

    private void Awake()
    {
        input = new GameInput();
        moveAction = input.Player.Move;
        lookAction = input.Player.Look;
        characterController = GetComponent<CharacterController>();

        //TODO Subscribe to input Events
    }

    private void OnEnable()
    {
        input.Enable();
    }

    private void Update()
    {
        ReadInput();

        Rotate(moveInput);
        Move(moveInput);
    }

    private void LateUpdate()
    {
        RotateCamera(lookInput);
    }

    private void OnDisable()
    {
        input.Disable();
    }

    private void OnDestroy()
    {
        //TODO unsubscribe from input events
    }

    #endregion
    /////////////////////////////////////////////////////////////////////////////////////////////

    #region Camera
    private void RotateCamera(Vector2 lookInput)
    {
        if (lookInput != Vector2.zero)
        {
            bool isMouseLook = IsMouselook();

            float deltaTimeMultiplier = isMouseLook ? 1f : Time.deltaTime;

            float sensitivity = isMouseLook ? mouseCameraSensitivity : controllerCameraSensitivity;
            
            lookInput *= deltaTimeMultiplier * sensitivity;
            
            cameraRotation.x += lookInput.y * cameraVerticalSpeed * (!isMouseLook && invertY ? -1 : 1);
            cameraRotation.y += lookInput.x * cameraHorizontalSpeed;

            cameraRotation.x = NormalizeAngle(cameraRotation.x);
            cameraRotation.y = NormalizeAngle(cameraRotation.y);

            cameraRotation.x = Mathf.Clamp(cameraRotation.x, verticalCameraRotationMin, verticalCameraRotationMax);

        }
        cameraTarget.rotation = Quaternion.Euler(cameraRotation.x, cameraRotation.y, z: 0f);
    }

    private float NormalizeAngle(float angle)
    {
        angle %= 360;

        if (angle < 0)
        {
            angle += 360;
        }
        if (angle > 180)
        {
            angle -= 360;
        }
        return angle;
    }

    private bool IsMouselook()
    {
        if (lookAction.activeControl == null)
        {
            return true;
        }

        return lookAction.activeControl.name == "delta";
    }
    
    #endregion
    
    
    private void ReadInput()
    {
        moveInput = moveAction.ReadValue<Vector2>();
        lookInput = lookAction.ReadValue<Vector2>();
    }
     
    #region Movement

    private void Rotate(Vector2 moveInput)
    {
        if (moveInput != Vector2.zero)
        {
            Vector3 inputDirection = new Vector3(moveInput.x, 0f, moveInput.y).normalized;

            Vector3 worldInputDirection = cameraTarget.TransformDirection(inputDirection);
            worldInputDirection.y = 0;
            
            characterTargetRotation = Quaternion.LookRotation(worldInputDirection);
        }
        
        if (Quaternion.Angle(transform.rotation, characterTargetRotation) > 0.1f)
        {
            transform.rotation = Quaternion.Slerp(transform.rotation, characterTargetRotation, rotationSpeed * Time.deltaTime);
        }
        else
        {
            transform.rotation = characterTargetRotation;
        }
    }

    private void Move(Vector2 moveInput)
    {
        float targetspeed = moveInput == Vector2.zero ? 0f : movementSpeed * moveInput.magnitude;

        Vector3 currentVelocity = lastMovement;
        currentVelocity.y = 0f;
        float currentspeed = currentVelocity.magnitude;

        if (math.abs(currentspeed - targetspeed) > 0.01f)
        {
            currentspeed = Mathf.Lerp(currentspeed, targetspeed, speedChangeRate * Time.deltaTime);
        }
        else
        {
            currentspeed = targetspeed;
        }

        Vector3 targetDirection = characterTargetRotation * Vector3.forward;
        
        Vector3 movement = targetDirection * currentspeed;
        characterController.SimpleMove(movement);
        lastMovement = movement;
    }

    #endregion

    ///////////////////////////////////////////////////////////////////////////////////


}
