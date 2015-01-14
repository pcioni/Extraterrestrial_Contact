using UnityEngine;
using System.Collections;

public class collisionDestroy : MonoBehaviour
{
	public GameObject explosion;
	public GameObject playerExplosion;
	public int scoreValue;
	gameController gameController;
	public AudioClip enemyDie;
	public AudioClip playerDie;


	void Start () {
		GameObject gameControllerObject = GameObject.FindGameObjectWithTag ("GameController");
		gameController = gameControllerObject.GetComponent <gameController>();
	}

	void OnTriggerEnter (Collider other) {
		if (other.tag == "Boundary" || other.tag == "Enemy" || other.tag == "Star")
			return;

		//Play our "player death" sound, create the two colliding object's exlplosions,
		//and destroy the objects themselves. Then call gameOver();
		if (other.tag == "Player") {
			AudioSource.PlayClipAtPoint(playerDie,transform.position);
			Instantiate(explosion, transform.position, transform.rotation);
			Instantiate(playerExplosion, other.transform.position, other.transform.rotation);
			Destroy (other.gameObject);
			Destroy (gameObject);
			gameController.GameOver();
		}

		//If we're a fireball, just plow through the object
		if (other.tag == "Invinceable") {
			AudioSource.PlayClipAtPoint(enemyDie, transform.position);
			Instantiate(explosion, transform.position, transform.rotation);
			gameController.AddScore(scoreValue);
			Destroy (gameObject);
		}

	}
}