using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StateUpdater : MonoBehaviour
{
   #region Inspector

   [Tooltip("Liste an States die zum Gamestate bei Aufruf von UpdateStates gegeben wird.")]
   [SerializeField] private List<State> stateUpdates;

   #endregion

   public void UpdateStates()
   {
      FindObjectOfType<GameState>().Add(stateUpdates);
   }

}
