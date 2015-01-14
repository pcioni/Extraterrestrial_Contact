using UnityEngine;
using System.Collections;

public class planetHit : MonoBehaviour {

	public GameObject explosion;
	private gameController gameController;
	public GameObject playerExplosion;
	public float deathAmount;
	public AudioClip planetDie;
	public AudioClip playerDie;

	//Grab our game controller
	void Start () {
		GameObject gameControllerObject = GameObject.FindGameObjectWithTag ("GameController");
		gameController = gameControllerObject.GetComponent <gameController>();
	}


	void OnTriggerEnter (Collider other) {
		//Do nothing if we don't hit a player
		if (other.tag == "Boundary" || other.tag == "Enemy" || other.tag == "Star")
			return;
		
		if (other.tag == "Player") { 
			//If we have enough "power", the planet explodes. The planet and the player
			//explode, and the background stops moving since the planet has as well.
			if (enemyMovement.bonus_speed >= deathAmount) {
				AudioSource.PlayClipAtPoint(planetDie,transform.position);
				BG_scroll.scrollSpeed = 0.0f;
				Instantiate(explosion, transform.position, Quaternion.identity);
				Destroy(gameObject);
				Destroy(other.gameObject);
				gameController.winGame();
			} else {
				//otherwise, only destroy the player and call gameOver.
				AudioSource.PlayClipAtPoint(playerDie,transform.position);
				Instantiate(playerExplosion, other.transform.position, other.transform.rotation);
				Destroy(other.gameObject);
				gameController.GameOver();
			}
		}
	}

}

