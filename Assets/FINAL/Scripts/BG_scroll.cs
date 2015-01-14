using UnityEngine;
using System.Collections;

public class BG_scroll : MonoBehaviour {

	//Set sizing properties
	public static float scrollSpeed = -5;
	public float tileSizeZ;

	Vector3 startPosition;

	void Start () {
		startPosition = transform.position;
	}

	//run the background like a treadmill; this method causes a few minor clipping issues

	void Update () {
		float newPosition = Mathf.Repeat(Time.time * scrollSpeed, tileSizeZ);
		transform.position = startPosition + Vector3.forward * newPosition;
	}
}