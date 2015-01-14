using UnityEngine;

public class tutorial : MonoBehaviour {

	//GUI. Boring. Self-explanatory.

	public GUIText title;
	public Texture aTexture;
	
	void OnGUI() {
		title.text = "Instructions";
		const int buttonWidth = 84;
		const int buttonHeight = 60;

		GUI.DrawTexture (new Rect( 420, 100, 1000, 800) , aTexture);
		
		if ( GUI.Button( new Rect(875, 
		                          850, 
		                          buttonWidth, buttonHeight ),
		                "Return to\nMenu)") )
		{
			audio.Play();
			Application.LoadLevel("Menu");
		}


	}
}
