using UnityEngine;
using System.Collections;

public class slowDown : MonoBehaviour {
	
	private gameController gameController;
	public int scoreValue;
	public float death = 10f;
	float current_time;

	//Grab control of our game controller and current time
	void Start () {
		GameObject gameControllerObject = GameObject.FindGameObjectWithTag ("GameController");
		gameController = gameControllerObject.GetComponent <gameController> ();
		current_time = Time.time;
		
	}

	//simple destroy-over-time function
	void Update () {
		if (Time.time - current_time > death)
			Destroy (gameObject);
	}
	
	void OnTriggerEnter (Collider other) {
		//don't do anything if we hit a boundary or an enemy
		if (other.tag == "Boundary" || other.tag == "Enemy")
			return;

		// for fun's sake, slow-stars always lose to 
		// fast-stars in case of an overlapping spawn
		if (other.tag == "Star")
			Destroy (gameObject);

		//If we hit a player, decrease our fire emmision rate,
		//enemy speed, player speed, and background scroll speed
		//in order to simulate slower travel.
		if (other.tag == "Player" || other.tag == "Invinceable") {
			GameObject fire = GameObject.Find("Torch");
			enemyMovement.bonus_speed -= .5f;
			BG_scroll.scrollSpeed += .5f;
			fire.particleSystem.emissionRate -= 4;
			playerController.speed -= .5f;
		}

		//Add our score and destroy us.
		gameController.AddScore(scoreValue);
		if (gameObject)
			Destroy (gameObject);

		//No TRUE asteroid goes this slow
		if (enemyMovement.bonus_speed < -3) 
			gameController.GameOverTooSlow();
	}
}
