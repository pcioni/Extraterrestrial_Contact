using UnityEngine;
using System.Collections;

public class gameController : MonoBehaviour {

	//Variable town; population 17. GUITexts, Vec3's, bools, and various floats.
	public GameObject[] enemies;
	public Vector3 spawnBounds;
	public float spawnDelay;
	public float startDelay;

	public GUIText scoreText;
	public GUIText restartText;
	public GUIText gameOverText;
	public GUIText winText;
	public GUIText powerText;

	int highScore;
	
	bool gameOver;
	bool restart;
	bool win;
	int score;

	public GameObject fastStar;
	public GameObject slowStar;
	public float StarChance = .05f;

	Vector3 starSpawn;
	bool keepSpawning = true;
	
	void Start () {

		//helps keep our music from sneaking by and overlapping.
		GameObject juke = GameObject.Find("jukebox");
		if (juke) {
			juke.audio.Stop ();
			Destroy (juke);
		}

		//default all our GUIs/values
		gameOver = false;
		restart = false;
		restartText.text = "";
		gameOverText.text = "";
		winText.text = "";

		score = 0;
		UpdateScore ();
		StartCoroutine (SpawnWaves ());
	}

	//simple re-play function
	//also dynamically update our power display
	void Update () {
		if (restart) {
			if (Input.GetKeyDown (KeyCode.R))
				Application.LoadLevel (Application.loadedLevel);
		}

		powerText.text = "Power: " + enemyMovement.bonus_speed;
	}
	
	IEnumerator SpawnWaves () {
		yield return new WaitForSeconds (startDelay);
		while (keepSpawning) {
			//Pick an enemy at random from our list and spawn it at a random location within certain bounds
			GameObject hazard = enemies [Random.Range (0, enemies.Length)];
			Vector3 spawnPosition = new Vector3 (Random.Range (-spawnBounds.x, spawnBounds.x), spawnBounds.y, spawnBounds.z);
			Quaternion spawnRotation = Quaternion.identity;
			Instantiate (hazard, spawnPosition, spawnRotation);

			//Grab random locations for our stars to spawn. Spawn chance is a simple x < y ratio.
			if (Random.value < StarChance) {
				starSpawn = new Vector3 (Random.Range (-spawnBounds.x, spawnBounds.x), spawnBounds.y,
				                         Random.Range (spawnBounds.z - 8, spawnBounds.z - 27 )		 );
				Instantiate(fastStar, starSpawn, spawnRotation);
			}

			if (Random.value < StarChance) {
				starSpawn = new Vector3 (Random.Range (-spawnBounds.x, spawnBounds.x), spawnBounds.y,
				                         Random.Range (spawnBounds.z - 8, spawnBounds.z - 27 )		 );
				Instantiate(slowStar, starSpawn, spawnRotation);
			}

			//delay for waves, for testing purposes
			yield return new WaitForSeconds (spawnDelay);

			//check if we've won so enemies dont keep cluttering our game over screen
			if (gameOver || win) {
				enemyMovement.bonus_speed = 0;
				restartText.text = "Press 'R' to Restart";
				restart = true;
				keepSpawning = false;
			}
		}
	}

	//add score
	public void AddScore (int newScoreValue) {
		score += newScoreValue;
		UpdateScore ();
	}
	//update the score display
	void UpdateScore () {
		scoreText.text = "Score: " + score;
	}
	//display game over if we lose,
	public void GameOver () {
		gameOverText.text = "Game Over!";
		gameOver = true;
	}
	//display shameful defeat,
	public void GameOverTooSlow () {
		gameOverText.text = "Game Over! \n Power dropped below 4";
		gameOver = true;
	}
	//...and glorious victory
	public void winGame() {
		score += (int) (enemyMovement.bonus_speed * 10);
		if (score > highScore)
			highScore = score;
		winText.text = "Planet Destroyed! Power x 10 added to score\n Final Score: " + score + "\nHigh Score: " + highScore;
		win = true;
	}
}