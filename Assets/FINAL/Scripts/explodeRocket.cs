using UnityEngine;
using System.Collections;

public class explodeRocket : MonoBehaviour {

	public GameObject explosion;
	public GameObject playerExplosion;
	public GameObject shot;
	public int scoreValue;
	public Transform shotSpawn;
	private gameController gameController;

	Vector3 directions;

	//grab our game controller
	void Start () {
		GameObject gameControllerObject = GameObject.FindGameObjectWithTag ("GameController");
		gameController = gameControllerObject.GetComponent <gameController>();
	}
	
	void OnTriggerEnter (Collider other) {
		if (other.tag == "Star" || other.tag == "Boundary")
			return;

		else if (other.tag == "Enemy" || other.tag == "Player") {
			//if we hit an enemy, we'll actually blow them up too. Rockets cause 3 bullets to
			//scatter in random directions from the impact location.
			//If we hit the player, its gameOver(). But for consistency's sake, the bullets
			//still instantiate and scatter.
			Instantiate(explosion, transform.position, transform.rotation);
			Instantiate(playerExplosion, other.transform.position, other.transform.rotation);
			Destroy (other.gameObject);
			for (int i = 0; i < 3; ++i) 
				Instantiate(shot, gameObject.transform.position, Quaternion.Euler(0.0f, Random.Range(0.0f, 360.0f), 0.0f) );
			if (other.tag == "Player")
				gameController.GameOver();

		}

		//fireball state destroys the rocket entirely.
		else if (other.tag == "Invinceable") {
			Instantiate(explosion, transform.position, transform.rotation);
			gameController.AddScore(scoreValue);
		}

		Destroy (gameObject);
	}
}
