using UnityEngine;
using System.Collections;

public class dontDestroyOnLoad : MonoBehaviour {

	//save our jukebox so the music doesn't restart/change unless we start the game
	void Start() {
		DontDestroyOnLoad(this.gameObject);
	}
}
