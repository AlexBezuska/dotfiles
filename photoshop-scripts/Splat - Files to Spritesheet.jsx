
$.localize = true;
var g_StackScriptFolderPath = app.path + "/"+ localize("$$$/ScriptingSupport/InstalledScripts=Presets/Scripts") + "/"

$.evalFile(g_StackScriptFolderPath + "Load Files into Stack.jsx");

var docRef = activeDocument;  

activeDocument.trim();

	var activeLayer = docRef.activeLayer;

	numLayers = docRef.artLayers.length; 	
	
	var rows = numLayers;
	
 	var spriteX = docRef.width;
 	var spriteY = docRef.height;	
	
	app.preferences.rulerUnits = Units.PIXELS;
 	docRef.resizeCanvas( spriteX * rows, spriteY, AnchorPosition.TOPLEFT );
 	 	
 	
 	for (i=0;i < numLayers ;i++) 
 	{ 	
		
 		docRef.artLayers[i].visible = true;
 		
  		var movX = spriteX*i;
  		
 		docRef.artLayers[i].translate(movX, 0);
 		
 
 	}
