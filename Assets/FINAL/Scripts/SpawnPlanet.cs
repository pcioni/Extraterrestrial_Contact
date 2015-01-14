using UnityEngine;
using System.Collections;

public class SpawnPlanet : MonoBehaviour {

	//Determine when our planet will be instantiated and flung into us. 
	//Estimating actual distances and literally traveling to a planet object
	//is far too difficult. 

	//spawnTime performs best when a multiple of 60
	public GameObject Target;
	public static float spawnTime =120f;

	bool spawned = false;

	void Update () {
		if (Time.time >= spawnTime && spawned == false) {
			//Time.timeScale = 0.70F;
			Instantiate(Target, transform.position, Quaternion.identity);
			spawned = true;
		}
	}
	

}

