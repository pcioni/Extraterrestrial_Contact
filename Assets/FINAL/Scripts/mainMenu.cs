using UnityEngine;

public class mainMenu : MonoBehaviour {

	//Simple GUI with default (read: ugly) Unity buttons. 
	//Screen dimensions may vary on different resolutions.

	public GUIText title;

	void OnGUI() {
		title.text = "Extraterrestrial\n          Contact";
		const int buttonWidth = 87;
		const int buttonHeight = 60;

		if ( GUI.Button( new Rect( Screen.width / 2 - (buttonWidth / 2), 
								 ( 2 * Screen.height / 3) - (buttonHeight / 2), 
		                           buttonWidth, buttonHeight ),
						"Enter Orbit \n(Start)") )
		{
			audio.Play();
			GameObject juke = GameObject.Find("jukebox");
			juke.audio.Stop();
			Destroy(juke);
			Application.LoadLevel("main scene");
		}

		if ( GUI.Button( new Rect( Screen.width / 2 - (buttonWidth / 2), 
		                          ( 2 * Screen.height / 4) - (buttonHeight / 2), 
		                          buttonWidth, buttonHeight ),
		                "Info Chart\n(Instructions)") )
		{
			audio.Play();
			Application.LoadLevel("Tutorial");
		}

		if ( GUI.Button( new Rect( Screen.width / 2 - (buttonWidth / 2), 
		                          ( 2 * Screen.height / 5) - (buttonHeight / 2), 
		                          buttonWidth, buttonHeight ),
		                "Memorial\n(Credits)") )
		{
			audio.Play();
			Application.LoadLevel("credits");
		}
	}
}
