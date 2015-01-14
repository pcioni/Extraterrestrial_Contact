using UnityEngine;
using System.Collections;

public class shootWeapons : MonoBehaviour {

	public GameObject shot;
	public Transform shotSpawn;
	public float fireRate;
	public float delay;

	//Grab a preset bullet, bullet-transform, and other numbers. 
	//Shoot the bullet forward.
	//Repeat the process for the duration of the objects life.

	void Start () {
		InvokeRepeating ("Fire", delay, fireRate);
	}

	void Fire () {
		Instantiate(shot, shotSpawn.position, shotSpawn.rotation);
		audio.Play();
	}
}
