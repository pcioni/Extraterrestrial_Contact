using UnityEngine;
using System.Collections;

public class outOfBounds : MonoBehaviour
{

	//script to take care of garbage collection (when objects go out of sight)

	void OnTriggerExit (Collider other)  {
		Destroy(other.gameObject);
	}
}