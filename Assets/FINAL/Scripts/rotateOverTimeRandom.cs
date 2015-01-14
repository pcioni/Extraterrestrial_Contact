using UnityEngine;
using System.Collections;

public class rotateOverTimeRandom : MonoBehaviour 
{
	public float tumble;


	//funky script I found online. Essentially condenses 3 rotateOverTime lines
	//into one nice random sphere-tumbler
	void Start () {
		rigidbody.angularVelocity = Random.insideUnitSphere * tumble;
	}
}