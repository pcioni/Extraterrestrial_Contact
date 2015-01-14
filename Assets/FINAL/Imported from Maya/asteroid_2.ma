//Maya ASCII 2014 scene
//Name: asteroid_2.ma
//Last modified: Fri, May 09, 2014 04:40:45 PM
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
	setAttr ".t" -type "double3" 1400.1344891399335 1050.1008668549516 1400.1344891399351 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2241.3087707693926;
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
createNode transform -n "GeoSphere009";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr -k on ".MaxHandle" 32;
createNode mesh -n "GeoSphere009Shape" -p "GeoSphere009";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVChannel_1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.41777712 0.29864174
		 0.47374603 0.3164705 0.46009758 0.34241706 0.37906614 0.31195042 0.35201478 0.26006711
		 0.41860014 0.25846812 0.4966265 0.28659463 0.53464067 0.2449487 0.53241879 0.2088266
		 0.56064844 0.25373146 0.45420498 0.32721007 0.54724491 0.30632335 0.46830994 0.44201314
		 0.51565987 0.37512952 0.48032051 0.28659463 0.51114333 0.34230256 0.49200895 0.2449487
		 0.55356491 0.34313059 0.42088518 0.41239327 0.41510898 0.25373146 0.49543694 0.35110286
		 0.59669131 0.34230256 0.51565987 0.37512952 0.55356491 0.34313059 0.51114333 0.34230256
		 0.38098389 0.25373146 0.41860014 0.41239327 0.35201478 0.34313059 0.46830994 0.44201314
		 0.42088518 0.41239327 0.53464067 0.33535254 0.48032051 0.35110286 0.61658633 0.28592968
		 0.53464067 0.33535254 0.59477359 0.25140363 0.61658633 0.28592968 0.46001324 0.17423679
		 0.41510898 0.25373146 0.46001324 0.17423679;
	setAttr ".cuvs" -type "string" "UVChannel_1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 12 ".vt[0:11]"  -0.31631672 -0.1940695 3.63614511 2.65976286 1.13084161 3.69764948
		 1.93402207 3.059006691 1.85049498 -2.37472773 0.79493749 0.94389713 -3.81315088 -3.060667038 0.96676552
		 -0.27255309 -3.179492 2.87962389 3.81315088 3.70447683 -0.59461248 0.92474103 2.53402185 -1.74476731
		 -3.43262243 -1.13874018 -2.74236727 -2.27275324 -3.70447683 -1.50220978 1.59209883 -0.15112758 0.52708161
		 0.25452673 0.37677395 -3.69764948;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 0 0 2 3 0 3 0 0 3 4 0 4 0 0
		 4 5 0 5 0 0 5 1 0 1 10 0 10 6 0 6 1 0 2 6 0 6 7 0 7 2 0 3 7 0 7 8 0 8 3 0 4 8 0 8 9 0
		 9 4 0 5 9 0 9 10 0 10 5 0 11 7 0 6 11 0 11 8 0 11 9 0 11 10 0;
	setAttr -s 60 ".n[0:59]" -type "float3"  -0.34570962 0.1756646 0.92175204
		 0.62443429 0.064996824 0.77836829 -0.098082624 0.88817739 0.44891039 -0.34570962
		 0.1756646 0.92175204 -0.098082624 0.88817739 0.44891039 -0.72984195 0.63143253 0.26196137
		 -0.34570962 0.1756646 0.92175204 -0.72984195 0.63143253 0.26196137 -0.82679999 -0.45256606
		 0.33404467 -0.34570962 0.1756646 0.92175204 -0.82679999 -0.45256606 0.33404467 0.25112104
		 -0.78773707 0.56250197 -0.34570962 0.1756646 0.92175204 0.25112104 -0.78773707 0.56250197
		 0.62443429 0.064996824 0.77836829 0.62443429 0.064996824 0.77836829 0.7966364 -0.57241184
		 -0.19420417 0.74204814 0.61287063 -0.27157706 -0.098082624 0.88817739 0.44891039
		 0.74204814 0.61287063 -0.27157706 -0.30392951 0.84694958 -0.43623781 -0.72984195
		 0.63143253 0.26196137 -0.30392951 0.84694958 -0.43623781 -0.73966599 0.075512022
		 -0.66872424 -0.82679999 -0.45256606 0.33404467 -0.73966599 0.075512022 -0.66872424
		 -0.041069321 -0.89119631 -0.45175487 0.25112104 -0.78773707 0.56250197 -0.041069321
		 -0.89119631 -0.45175487 0.7966364 -0.57241184 -0.19420417 0.74204814 0.61287063 -0.27157706
		 -0.098082624 0.88817739 0.44891039 0.62443429 0.064996824 0.77836829 -0.30392951
		 0.84694958 -0.43623781 -0.72984195 0.63143253 0.26196137 -0.098082624 0.88817739
		 0.44891039 -0.73966599 0.075512022 -0.66872424 -0.82679999 -0.45256606 0.33404467
		 -0.72984195 0.63143253 0.26196137 -0.041069321 -0.89119631 -0.45175487 0.25112104
		 -0.78773707 0.56250197 -0.82679999 -0.45256606 0.33404467 0.7966364 -0.57241184 -0.19420417
		 0.62443429 0.064996824 0.77836829 0.25112104 -0.78773707 0.56250197 0.27114987 0.01937831
		 -0.96234208 -0.30392951 0.84694958 -0.43623781 0.74204814 0.61287063 -0.27157706
		 0.27114987 0.01937831 -0.96234208 -0.73966599 0.075512022 -0.66872424 -0.30392951
		 0.84694958 -0.43623781 0.27114987 0.01937831 -0.96234208 -0.041069321 -0.89119631
		 -0.45175487 -0.73966599 0.075512022 -0.66872424 0.27114987 0.01937831 -0.96234208
		 0.7966364 -0.57241184 -0.19420417 -0.041069321 -0.89119631 -0.45175487 0.27114987
		 0.01937831 -0.96234208 0.74204814 0.61287063 -0.27157706 0.7966364 -0.57241184 -0.19420417;
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
		mu 0 3 18 19 10
		f 3 -14 -2 -13
		mu 0 3 20 2 1
		f 3 -17 -4 -16
		mu 0 3 7 21 22
		f 3 -20 -6 -19
		mu 0 3 8 23 24
		f 3 -23 -8 -22
		mu 0 3 25 26 27
		f 3 -11 -10 -25
		mu 0 3 10 28 29
		f 3 25 -15 26
		mu 0 3 11 30 31
		f 3 27 -18 -26
		mu 0 3 11 32 33
		f 3 28 -21 -28
		mu 0 3 11 34 35
		f 3 29 -24 -29
		mu 0 3 36 10 37
		f 3 -27 -12 -30
		mu 0 3 38 6 10;
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
createNode shadingEngine -n "GeoSphere009SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "GeoSphere009SG1";
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
relationship "link" ":lightLinker1" "GeoSphere009SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GeoSphere009SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GeoSphere009SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GeoSphere009SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "MapFBXASC032FBXASC0352.oc" "FBXASC0481.c";
connectAttr "bump2d1.o" "FBXASC0481.n";
connectAttr "FBXASC0481.oc" "GeoSphere009SG.ss";
connectAttr "GeoSphere009SG.msg" "materialInfo1.sg";
connectAttr "FBXASC0481.msg" "materialInfo1.m";
connectAttr "MapFBXASC032FBXASC0352.msg" "materialInfo1.t" -na;
connectAttr "FBXASC0481.oc" "GeoSphere009SG1.ss";
connectAttr "GeoSphere009Shape.iog" "GeoSphere009SG1.dsm" -na;
connectAttr "GeoSphere009SG1.msg" "materialInfo2.sg";
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
connectAttr "GeoSphere009SG.pa" ":renderPartition.st" -na;
connectAttr "GeoSphere009SG1.pa" ":renderPartition.st" -na;
connectAttr "FBXASC0481.msg" ":defaultShaderList1.s" -na;
connectAttr "MapFBXASC032FBXASC0352.msg" ":defaultTextureList1.tx" -na;
connectAttr "MapFBXASC032FBXASC0353.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of asteroid_2.ma
