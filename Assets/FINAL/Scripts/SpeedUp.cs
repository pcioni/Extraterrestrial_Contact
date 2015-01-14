using UnityEngine;
using System.Collections;

public class SpeedUp : MonoBehaviour {

	//This class functions the same as slowDown, except in reverse!

	private gameController gameController;
	public int scoreValue;
	public float death = 10f;
	public AudioClip sound;
	float current_time;

	void Start () {
		GameObject gameControllerObject = GameObject.FindGameObjectWithTag ("GameController");
		gameController = gameControllerObject.GetComponent <gameController> ();
		current_time = Time.time;

	}

	void Update () {
		if (Time.time - current_time > death)
			Destroy (gameObject);
	}

	void OnTriggerEnter (Collider other) {
		if (other.tag == "Boundary" || other.tag == "Enemy" || other.tag == "Star")
			return;

		//If we hit a player, increase our fire emmision rate,
		//enemy speed, player speed, and background scroll speed
		//in order to simulate faster travel.
		if (other.tag == "Player" || other.tag == "Invinceable") {
			AudioSource.PlayClipAtPoint(sound,transform.position);
			GameObject fire = GameObject.Find("Torch");
			enemyMovement.bonus_speed += .5f;
			BG_scroll.scrollSpeed -= .5f;
			fire.particleSystem.emissionRate += 4;
			playerController.speed += .5f;
		}

		gameController.AddScore(scoreValue);
		Destroy (gameObject);
	}
}
