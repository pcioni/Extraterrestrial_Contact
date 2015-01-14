using UnityEngine;
using System.Collections;

public class enemyMovement : MonoBehaviour {

	//bonus_speed is synonimous with "power" in-game.
	public static float bonus_speed = 0f;
	public float speed;

	float prev_speed;
	Vector3 transform_save;

	//Take note of the current speed, and apply our velocity with our current values
	void Start () {
		prev_speed = bonus_speed;
		transform_save = transform.forward;
		if (bonus_speed < 0)
			rigidbody.velocity = transform.forward * (speed - (-bonus_speed) );
		else 
			rigidbody.velocity = transform.forward * (speed - bonus_speed);
	}

	//If our current speed doesnt match our old ones, update our velocity
	void Update() {
		if (prev_speed != bonus_speed)
			rigidbody.velocity = transform_save * (speed - bonus_speed);
	}

	
}
