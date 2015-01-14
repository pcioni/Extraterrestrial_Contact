using UnityEngine;
using System.Collections;

public class rotateOverTime : MonoBehaviour {

	//GameMechanicsStudentFirstScript.jpg

	public float rotationAmount;
	
	void Update() {
		transform.Rotate ( 0, 0, (enemyMovement.bonus_speed + rotationAmount) * Time.deltaTime);
	}
}
