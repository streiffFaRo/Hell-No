using UnityEditor;
using UnityEngine;

using Object = UnityEngine.Object;

namespace Kataigida.Utility.Editor.Wizards
{
    /// <summary>
    /// Replace selected <see cref="UnityEngine.GameObject"/>s with a prefab.
    /// </summary>
    public class ReplaceSelectedWithPrefab : EditorWindow
    {
        private const string WizardName = "Replace selected with prefab";
        private const string ReplaceButtonName = "Replace";

        [SerializeField] private GameObject prefab;
        [SerializeField] private bool keepSortingLayer = true;
        [SerializeField] private bool keepName;

        [MenuItem("Tools/Replace/" + WizardName, false, 1030)]
        private static void Init()
        {
            EditorWindow.GetWindow(typeof(ReplaceSelectedWithPrefab), false, WizardName).Show();
        }

        private void OnSelectionChange()
        {
            Repaint();
        }

        private void OnGUI()
        {
            EditorGUILayout.BeginVertical();
            prefab = EditorGUILayout.ObjectField("Prefab", prefab, typeof(GameObject), false) as GameObject;
            keepSortingLayer = EditorGUILayout.Toggle("Keep Sorting Layer", keepSortingLayer);
            keepName = EditorGUILayout.Toggle("Keep Name", keepName);
            
            EditorGUILayout.EndVertical();
            
            GUILayout.FlexibleSpace();

            if (GUILayout.Button(ReplaceButtonName))
            {
                OnButton();
            }
        }
        
        private void OnButton()
        {
            var transforms = UnityEditor.Selection.transforms;
            var newObjects = new Object[UnityEditor.Selection.transforms.Length];

            for(var i = 0; i < transforms.Length; i++)
            {
                var original = transforms[i];
                
                var replacement = (GameObject)PrefabUtility.InstantiatePrefab(prefab, original.parent);
                
                Undo.RegisterCreatedObjectUndo(replacement, "");
                newObjects[i] = replacement;
                
                var newTransform = replacement.transform;
                newTransform.position = original.position;
                newTransform.rotation = original.rotation;
                newTransform.SetSiblingIndex(original.GetSiblingIndex());

                if (keepName)
                {
                    replacement.name = original.name;
                }
                
                if (keepSortingLayer)
                {
                    var originalRenderer = original.GetComponentInChildren<Renderer>();
                    var replacementRenderer = replacement.GetComponentInChildren<Renderer>();

                    if (originalRenderer != null && replacementRenderer != null)
                    {
                        replacementRenderer.sortingLayerID = originalRenderer.sortingLayerID;
                        replacementRenderer.sortingOrder = originalRenderer.sortingOrder;
                    }
                }
                
                Undo.DestroyObjectImmediate(original.gameObject);
                Undo.CollapseUndoOperations(Undo.GetCurrentGroup());
                Undo.SetCurrentGroupName(WizardName);
            }
            
            UnityEditor.Selection.objects = newObjects;
        }
    }
}
