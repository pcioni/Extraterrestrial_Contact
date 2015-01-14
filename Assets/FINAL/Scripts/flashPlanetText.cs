using UnityEngine;
using System.Collections;

public class flashPlanetText : MonoBehaviour {

	//Make the planet-approaching text flash, just in case you forgot your destination

	public GUIText planetText;

	void Start () {
		planetText.text = "";
		StartCoroutine ( flashText() );
	}

	IEnumerator flashText() {
		while (true) {
			for (int i = 0; i < 5; i++) {
				//Just change the text from blank to full across time intervals
				if (Time.time >= (SpawnPlanet.spawnTime - 10f) && Time.time < SpawnPlanet.spawnTime) {
					planetText.text = "Planet Approaching!";
					yield return new WaitForSeconds (.5f); 
					planetText.text = "";
				} 
				yield return new WaitForSeconds (.5f); 
			}
		}
	}
		
}
