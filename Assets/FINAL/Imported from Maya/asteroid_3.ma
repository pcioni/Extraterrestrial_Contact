//Maya ASCII 2014 scene
//Name: asteroid_3.ma
//Last modified: Fri, May 09, 2014 04:41:09 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1286.9477673205577 524.68186145588504 1758.3911380581731 ;
	setAttr ".r" -type "double3" -13.53835272960198 36.199999999999839 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2241.3087707751497;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "GeoSphere010";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr -k on ".MaxHandle" 33;
createNode mesh -n "GeoSphere010Shape" -p "GeoSphere010";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.54997277 0.20812121
		 0.62374264 0.23680231 0.60523772 0.25818574 0.5165385 0.24595585 0.5202589 0.19407257
		 0.57872635 0.17423683 0.41424596 0.33200914 0.41556925 0.30590117 0.60410112 0.26616183
		 0.61586583 0.33722344 0.37182438 0.32806325 0.39649156 0.22908157 0.40317047 0.47171098
		 0.37051973 0.40687871 0.36411557 0.33200914 0.56510276 0.43505898 0.54722631 0.30590117
		 0.60752434 0.41464281 0.39703113 0.17423683 0.4537878 0.18387054 0.35598907 0.19846481
		 0.4206543 0.40687871 0.40317047 0.47171098 0.45921895 0.43505898 0.37051973 0.40687871
		 0.60752434 0.41464281 0.56510276 0.43505898 0.52196968 0.33722344 0.57872635 0.44277492
		 0.5202589 0.41464281 0.40317047 0.47171098 0.35201478 0.44277492 0.41556925 0.26781943
		 0.36411557 0.25034809 0.46865153 0.19825926 0.41556925 0.26781943 0.4537878 0.18387054
		 0.46865153 0.19825926 0.35598907 0.19846481 0.4537878 0.18387054 0.36411557 0.25034809
		 0.35598907 0.19846481;
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 12 ".vt[0:11]"  -0.82161659 -0.95915359 3.66689754 3.10101032 1.17222703 2.70414853
		 2.11703253 2.76129484 0.91364706 -2.59944296 1.85245383 1.69191408 -2.40161419 -2.0031504631 1.1280725
		 0.70732176 -3.47720385 1.90500855 2.45756626 2.17885542 -1.15405917 -0.27842283 3.47720385 -1.87509418
		 -3.10101032 -1.69202566 -2.97259307 -2.31064844 -2.76129484 -1.010053158 2.88968325 -1.67674863 -1.26303506
		 0.73601049 0.59847349 -3.66689754;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 0 0 2 3 0 3 0 0 3 4 0 4 0 0
		 4 5 0 5 0 0 5 1 0 1 10 0 10 6 0 6 1 0 2 6 0 6 7 0 7 2 0 3 7 0 7 8 0 8 3 0 4 8 0 8 9 0
		 9 4 0 5 9 0 9 10 0 10 5 0 11 7 0 6 11 0 11 8 0 11 9 0 11 10 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  -0.25451782 -0.12142837 0.95941436
		 0.68345994 0.29588589 0.66733354 0.39853653 0.85929775 0.32058692 -0.25451782 -0.12142837
		 0.95941436 0.39853653 0.85929775 0.32058692 -0.69983822 0.55466163 0.45008555 -0.25451782
		 -0.12142837 0.95941436 -0.69983822 0.55466163 0.45008555 -0.79152304 -0.47898057
		 0.37956408 -0.25451782 -0.12142837 0.95941436 -0.79152304 -0.47898057 0.37956408
		 0.22706383 -0.89818978 0.37642691 -0.25451782 -0.12142837 0.95941436 0.22706383 -0.89818978
		 0.37642691 0.68345994 0.29588589 0.66733354 0.68345994 0.29588589 0.66733354 0.75972915
		 -0.5157699 -0.39597085 0.77525359 0.5095914 -0.37322727 0.39853653 0.85929775 0.32058692
		 0.77525359 0.5095914 -0.37322727 -0.17757456 0.89652103 -0.40585387 -0.69983822 0.55466163
		 0.45008555 -0.17757456 0.89652103 -0.40585387 -0.63271499 -0.38147902 -0.67390317
		 -0.79152304 -0.47898057 0.37956408 -0.63271499 -0.38147902 -0.67390317 -0.41833237
		 -0.88258785 -0.21456191 0.22706383 -0.89818978 0.37642691 -0.41833237 -0.88258785
		 -0.21456191 0.75972915 -0.5157699 -0.39597085 0.77525359 0.5095914 -0.37322727 0.39853653
		 0.85929775 0.32058692 0.68345994 0.29588589 0.66733354 -0.17757456 0.89652103 -0.40585387
		 -0.69983822 0.55466163 0.45008555 0.39853653 0.85929775 0.32058692 -0.63271499 -0.38147902
		 -0.67390317 -0.79152304 -0.47898057 0.37956408 -0.69983822 0.55466163 0.45008555
		 -0.41833237 -0.88258785 -0.21456191 0.22706383 -0.89818978 0.37642691 -0.79152304
		 -0.47898057 0.37956408 0.75972915 -0.5157699 -0.39597085 0.68345994 0.29588589 0.66733354
		 0.22706383 -0.89818978 0.37642691 0.23857959 0.034016415 -0.97052705 -0.17757456
		 0.89652103 -0.40585387 0.77525359 0.5095914 -0.37322727 0.23857959 0.034016415 -0.97052705
		 -0.63271499 -0.38147902 -0.67390317 -0.17757456 0.89652103 -0.40585387 0.23857959
		 0.034016415 -0.97052705 -0.41833237 -0.88258785 -0.21456191 -0.63271499 -0.38147902
		 -0.67390317 0.23857959 0.034016415 -0.97052705 0.75972915 -0.5157699 -0.39597085
		 -0.41833237 -0.88258785 -0.21456191 0.23857959 0.034016415 -0.97052705 0.77525359
		 0.5095914 -0.37322727 0.75972915 -0.5157699 -0.39597085;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 -3 3 4
		mu 0 3 0 2 3
		f 3 -5 5 6
		mu 0 3 0 3 4
		f 3 -7 7 8
		mu 0 3 0 4 5
		f 3 -9 9 -1
		mu 0 3 0 5 1
		f 3 10 11 12
		mu 0 3 12 10 6
		f 3 13 14 15
		mu 0 3 13 14 7
		f 3 16 17 18
		mu 0 3 15 16 8
		f 3 19 20 21
		mu 0 3 17 8 9
		f 3 22 23 24
		mu 0 3 18 19 20
		f 3 -14 -2 -13
		mu 0 3 6 21 22
		f 3 -17 -4 -16
		mu 0 3 7 23 24
		f 3 -20 -6 -19
		mu 0 3 8 25 26
		f 3 -23 -8 -22
		mu 0 3 27 28 29
		f 3 -11 -10 -25
		mu 0 3 10 30 31
		f 3 25 -15 26
		mu 0 3 11 32 33
		f 3 27 -18 -26
		mu 0 3 11 34 35
		f 3 28 -21 -28
		mu 0 3 11 36 37
		f 3 29 -24 -29
		mu 0 3 11 38 39
		f 3 -27 -12 -30
		mu 0 3 11 40 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode phong -n "FBXASC0481";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.58823532 0.58823532 0.58823532 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "GeoSphere010SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "GeoSphere010SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "MapFBXASC032FBXASC0352";
	setAttr ".ftn" -type "string" "C:\\MAX_SCENES\\Asteroid_deluxe\\av1_colr.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode bump2d -n "bump2d1";
	setAttr ".bd" 0.30000001192092896;
	setAttr ".bi" 1;
createNode file -n "MapFBXASC032FBXASC0353";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\MAX_SCENES\\Asteroid_deluxe\\av1_norm.jpg";
createNode place2dTexture -n "place2dTexture2";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GeoSphere010SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GeoSphere010SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GeoSphere010SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GeoSphere010SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "MapFBXASC032FBXASC0352.oc" "FBXASC0481.c";
connectAttr "bump2d1.o" "FBXASC0481.n";
connectAttr "FBXASC0481.oc" "GeoSphere010SG.ss";
connectAttr "GeoSphere010SG.msg" "materialInfo1.sg";
connectAttr "FBXASC0481.msg" "materialInfo1.m";
connectAttr "MapFBXASC032FBXASC0352.msg" "materialInfo1.t" -na;
connectAttr "FBXASC0481.oc" "GeoSphere010SG1.ss";
connectAttr "GeoSphere010Shape.iog" "GeoSphere010SG1.dsm" -na;
connectAttr "GeoSphere010SG1.msg" "materialInfo2.sg";
connectAttr "FBXASC0481.msg" "materialInfo2.m";
connectAttr "MapFBXASC032FBXASC0352.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture1.o" "MapFBXASC032FBXASC0352.uv";
connectAttr "place2dTexture1.ofu" "MapFBXASC032FBXASC0352.ofu";
connectAttr "place2dTexture1.ofv" "MapFBXASC032FBXASC0352.ofv";
connectAttr "place2dTexture1.rf" "MapFBXASC032FBXASC0352.rf";
connectAttr "place2dTexture1.reu" "MapFBXASC032FBXASC0352.reu";
connectAttr "place2dTexture1.rev" "MapFBXASC032FBXASC0352.rev";
connectAttr "place2dTexture1.vt1" "MapFBXASC032FBXASC0352.vt1";
connectAttr "place2dTexture1.vt2" "MapFBXASC032FBXASC0352.vt2";
connectAttr "place2dTexture1.vt3" "MapFBXASC032FBXASC0352.vt3";
connectAttr "place2dTexture1.vc1" "MapFBXASC032FBXASC0352.vc1";
connectAttr "place2dTexture1.ofs" "MapFBXASC032FBXASC0352.fs";
connectAttr "MapFBXASC032FBXASC0353.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "MapFBXASC032FBXASC0353.uv";
connectAttr "place2dTexture2.ofu" "MapFBXASC032FBXASC0353.ofu";
connectAttr "place2dTexture2.ofv" "MapFBXASC032FBXASC0353.ofv";
connectAttr "place2dTexture2.rf" "MapFBXASC032FBXASC0353.rf";
connectAttr "place2dTexture2.reu" "MapFBXASC032FBXASC0353.reu";
connectAttr "place2dTexture2.rev" "MapFBXASC032FBXASC0353.rev";
connectAttr "place2dTexture2.vt1" "MapFBXASC032FBXASC0353.vt1";
connectAttr "place2dTexture2.vt2" "MapFBXASC032FBXASC0353.vt2";
connectAttr "place2dTexture2.vt3" "MapFBXASC032FBXASC0353.vt3";
connectAttr "place2dTexture2.vc1" "MapFBXASC032FBXASC0353.vc1";
connectAttr "place2dTexture2.ofs" "MapFBXASC032FBXASC0353.fs";
connectAttr "GeoSphere010SG.pa" ":renderPartition.st" -na;
connectAttr "GeoSphere010SG1.pa" ":renderPartition.st" -na;
connectAttr "FBXASC0481.msg" ":defaultShaderList1.s" -na;
connectAttr "MapFBXASC032FBXASC0352.msg" ":defaultTextureList1.tx" -na;
connectAttr "MapFBXASC032FBXASC0353.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of asteroid_3.ma
