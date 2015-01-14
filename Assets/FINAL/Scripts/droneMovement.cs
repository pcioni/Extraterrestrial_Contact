using UnityEngine;
using System.Collections;

public class droneMovement : MonoBehaviour {

	public Boundary boundary;
	public float rotateAmnt;
	public float dodgeAmnt;

	float currentSpeed;
	float maneuver;

	void Start () {
		currentSpeed = rigidbody.velocity.z;
		StartCoroutine(Evade());
	}

	//RNG to determine when/how long the drones should roll for.
	//Most of this is mix-and-matching various scripts off Google.
	IEnumerator Evade () {
		yield return new WaitForSeconds (Random.Range (.5f, 1f));
		while (true) {
			maneuver = Random.Range (1, dodgeAmnt) * -Mathf.Sign (transform.position.x);
			yield return new WaitForSeconds (Random.Range (1f, 2f) );
			maneuver = 0;
			yield return new WaitForSeconds (Random.Range (.5f, 2f) );
		}
	}

	//Physically roll the drones, restricting their movement to on-screen.
	//Unfortunately, nothing stops them from clipping through objects.
	void FixedUpdate () {
		float newManeuver = Mathf.MoveTowards (rigidbody.velocity.x, maneuver, Time.deltaTime);
		rigidbody.velocity = new Vector3 (newManeuver, 0.0f, currentSpeed);
		rigidbody.position = new Vector3 ( Mathf.Clamp(rigidbody.position.x, boundary.xMin, boundary.xMax), 
										   0.0f, 
										   Mathf.Clamp(rigidbody.position.z, boundary.zMin, boundary.zMax) );
		
		rigidbody.rotation = Quaternion.Euler (0, 0, rigidbody.velocity.x * -rotateAmnt);
	}
}
