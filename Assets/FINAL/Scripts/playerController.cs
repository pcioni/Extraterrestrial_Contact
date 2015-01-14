using UnityEngine;
using System.Collections;

//I don't know what this does, but it makes Boundary work according to google.
[System.Serializable]
public class Boundary {
	public float xMin, xMax, zMin, zMax;
}

public class playerController : MonoBehaviour {

	public static float speed = 10;

	public Boundary boundary;

	public float fireDelay;
	public float timeOnFire;
	public float rotation;
	float nextFire;
	

	void Update () {
		//enter fireball mode if we hit mouse1 or space && our fireDelay is passed.
		if ( (Input.GetButton("Fire1") || Input.GetKeyDown("space")  ) && Time.time > nextFire) {
			nextFire = Time.time + fireDelay;
			GameObject fire = GameObject.Find("Torch");
			fire.audio.Play();
			StartCoroutine( fireball() );
		}
	}

	IEnumerator fireball() {
		//Turn ourselves into a fiery mass, using some power and making
		//everything move a bit faster to simulate increased speed,
		//and change our tag so we can adjust our collision properties
		//easily. Once the waitTime is up, reverse the whole process.
		enemyMovement.bonus_speed -= 1;
		GameObject fire = GameObject.Find("Torch");
		gameObject.tag = "Invinceable"; 
		fire.particleSystem.emissionRate += 100;
		yield return new WaitForSeconds (timeOnFire);
		gameObject.tag = "Player";
		fire.particleSystem.emissionRate -= 100;
	}

	//movement controls that restrict movement to the screen boundaries.
	void FixedUpdate () {

		Vector3 movement = new Vector3 ( Input.GetAxis ("Vertical"),
		                                 0.0f, 
		                                 Input.GetAxis ("Horizontal") );

		rigidbody.velocity = movement * speed;
		
		rigidbody.position = new Vector3 ( Mathf.Clamp (rigidbody.position.x, boundary.xMin, boundary.xMax), 
		  								   0.0f, 
		  								   Mathf.Clamp (rigidbody.position.z, boundary.zMin, boundary.zMax) );

		//rotate over time
		transform.Rotate(0f, 0f , rotation * Time.deltaTime); 
	}
}
