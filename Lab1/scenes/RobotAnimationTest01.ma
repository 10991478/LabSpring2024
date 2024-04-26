//Maya ASCII 2024 scene
//Name: RobotAnimationTest01.ma
//Last modified: Fri, Apr 26, 2024 12:06:37 PM
//Codeset: 1252
file -rdi 1 -ns "Lab1Proj" -rfn "Lab1ProjRN" -op "v=0;" -typ "mayaAscii" "C:/Users/Theta Rich/GitHubStuff/University/LabSpring2024/Lab1//Lab1Proj.ma";
file -r -ns "Lab1Proj" -dr 1 -rfn "Lab1ProjRN" -op "v=0;" -typ "mayaAscii" "C:/Users/Theta Rich/GitHubStuff/University/LabSpring2024/Lab1//Lab1Proj.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "5E889262-4514-9D7A-BCF5-A3AEA8F3EC8B";
createNode transform -s -n "persp";
	rename -uid "E62383D5-4105-03F0-4AB5-E892450226B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6799306783795878 6.647575471132134 53.855084980106305 ;
	setAttr ".r" -type "double3" -2.1383527293064115 -1077.3999999998118 1.2436844587995783e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DC1668E3-46EB-6D78-6378-EBA06F88DC68";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 52.764416904991137;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.5637903653751701 0.60837290813762479 -2.8298655962800234 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CEA42F35-4D2E-AF6C-1AAB-F0974EC876A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "739850F0-460E-1D3C-4992-73B60538EA6B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DE8CC845-46B2-936C-E870-2FBA11377414";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D035E118-43B6-5864-BC40-D48E53C8F2DA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A758063C-495C-827D-F130-DE9E80B8F648";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E1CA902A-4F2F-772C-D71F-A88A04D1C215";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "43D35395-47E0-AB69-4479-FE9A2D99AB19";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "663774F0-4DB7-2A3D-8CD3-398C15784DA5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5C5208F2-42C3-F254-C956-73B9073F4316";
createNode displayLayerManager -n "layerManager";
	rename -uid "EA28841B-44C2-E117-BA0B-3EA069008787";
createNode displayLayer -n "defaultLayer";
	rename -uid "FC70BECF-4A2B-0ADD-C5E0-D98C641F602D";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2DD8AB05-4EB1-EEBA-000E-9BBEFA0CB198";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4229EE57-48BB-A36C-E2EA-308484F8F23A";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "865251C7-442B-98EB-CEAE-3289138489CB";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "4297BC4C-4BBD-E847-BAA9-029B85AA0378";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "FED34D30-4BE6-65CB-6C95-C682EE0E591B";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "FB18AC74-4E64-E21F-B625-3DB252F628E4";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DB9AEC8A-4306-51E1-AF73-EFB3A6946167";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 638\n            -height 440\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1237\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1237\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1237\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F6920732-4948-A1D9-F4A6-E995EB863FB6";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 69 -ast 0 -aet 230 ";
	setAttr ".st" 6;
createNode reference -n "Lab1ProjRN";
	rename -uid "4E0787AF-472D-7CA8-79F6-DFAD50399278";
	setAttr -s 54 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Lab1ProjRN"
		"Lab1ProjRN" 0
		"Lab1ProjRN" 86
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:Transform_CtrlShape" 
		"overrideEnabled" " 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl" 
		"visibility" " -av 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl" 
		"Geo_Resolution" " -k 1 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl" 
		"visibility" " 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl" 
		"IKFK_R_Front_Leg" " -k 1 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl" 
		"IKFK_R_Back_Leg" " -k 1 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl" 
		"IKFK_L_Front_Leg" " -k 1 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl" 
		"IKFK_L_Back_Leg" " -k 1 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Leg_Pole_Vector_Ctrl_Grp|Lab1Proj:L_Front_Leg_Pole_Vector_Ctrl_Offset_Grp|Lab1Proj:L_Front_Leg_Pole_Vector_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl" 
		"overrideEnabled" " 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_CtrlShape" 
		"overrideEnabled" " 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl|Lab1Proj:ikHandle9" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl" 
		"visibility" " 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "Lab1Proj:Geo_Layer" "displayType" " 2"
		2 "Lab1Proj:Jnt_Layer" "displayType" " 2"
		2 "Lab1Proj:Jnt_Layer" "visibility" " 0"
		2 "Lab1Proj:Ctrl_Layer" "displayType" " 0"
		2 "Lab1Proj:Ctrl_Layer" "visibility" " 0"
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[1]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[2]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[3]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[4]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[5]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[6]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[7]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[8]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[9]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl_Grp|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl_Offset_Grp|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[10]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl_Grp|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl_Offset_Grp|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[11]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl_Grp|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl_Offset_Grp|Lab1Proj:R_Back_Leg_Pole_Vector_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[12]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[13]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[14]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[15]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[16]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[17]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[18]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[19]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[20]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[21]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[22]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[23]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[24]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[25]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[26]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[27]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[28]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[29]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[30]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[31]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[32]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[33]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[34]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[35]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[36]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[37]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[38]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[39]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl|Lab1Proj:R_Lower_Arm_Ctrl_Grp|Lab1Proj:R_Lower_Arm_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[40]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl|Lab1Proj:R_Lower_Arm_Ctrl_Grp|Lab1Proj:R_Lower_Arm_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[41]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl|Lab1Proj:R_Lower_Arm_Ctrl_Grp|Lab1Proj:R_Lower_Arm_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[42]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl|Lab1Proj:R_Lower_Arm_Ctrl_Grp|Lab1Proj:R_Lower_Arm_Ctrl|Lab1Proj:R_Palm_Ctrl_Grp|Lab1Proj:R_Palm_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[43]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl|Lab1Proj:R_Lower_Arm_Ctrl_Grp|Lab1Proj:R_Lower_Arm_Ctrl|Lab1Proj:R_Palm_Ctrl_Grp|Lab1Proj:R_Palm_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[44]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:R_Upper_Arm_Ctrl_Grp|Lab1Proj:R_Upper_Arm_Ctrl|Lab1Proj:R_Lower_Arm_Ctrl_Grp|Lab1Proj:R_Lower_Arm_Ctrl|Lab1Proj:R_Palm_Ctrl_Grp|Lab1Proj:R_Palm_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[45]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[46]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[47]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[48]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl|Lab1Proj:L_Lower_Arm_Ctrl_Grp|Lab1Proj:L_Lower_Arm_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[49]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl|Lab1Proj:L_Lower_Arm_Ctrl_Grp|Lab1Proj:L_Lower_Arm_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[50]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl|Lab1Proj:L_Lower_Arm_Ctrl_Grp|Lab1Proj:L_Lower_Arm_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[51]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl|Lab1Proj:L_Lower_Arm_Ctrl_Grp|Lab1Proj:L_Lower_Arm_Ctrl|Lab1Proj:L_Palm_Ctrl_Grp|Lab1Proj:L_Palm_Ctrl.rotateX" 
		"Lab1ProjRN.placeHolderList[52]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl|Lab1Proj:L_Lower_Arm_Ctrl_Grp|Lab1Proj:L_Lower_Arm_Ctrl|Lab1Proj:L_Palm_Ctrl_Grp|Lab1Proj:L_Palm_Ctrl.rotateY" 
		"Lab1ProjRN.placeHolderList[53]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl|Lab1Proj:Lower_Torso_Ctrl_Grp|Lab1Proj:Lower_Torso_Ctrl|Lab1Proj:Upper_Torso_Ctrl_Grp|Lab1Proj:Upper_Torso_Ctrl|Lab1Proj:L_Upper_Arm_Ctrl_Grp|Lab1Proj:L_Upper_Arm_Ctrl|Lab1Proj:L_Lower_Arm_Ctrl_Grp|Lab1Proj:L_Lower_Arm_Ctrl|Lab1Proj:L_Palm_Ctrl_Grp|Lab1Proj:L_Palm_Ctrl.rotateZ" 
		"Lab1ProjRN.placeHolderList[54]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Hip_Ctrl_translateX";
	rename -uid "05F07FEC-4EF9-36A5-7E54-25AE8B0EC48F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.6;
createNode animCurveTL -n "Hip_Ctrl_translateY";
	rename -uid "1B3CF181-4666-7C05-41CF-5ABB0C8850AB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.540979117872439e-18;
createNode animCurveTL -n "Hip_Ctrl_translateZ";
	rename -uid "512A2E85-4597-4A32-4BD8-5E8B3C32FD79";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.6290440444017269e-17;
createNode animCurveTL -n "R_Back_Lower_Leg_IK_Ctrl_translateX";
	rename -uid "C19D9C1E-4C71-39FD-C979-119125212D3D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1.1783622542669503 3 1.1783622542669501
		 4 0.91720008029040601 5 0.64102035042473593 7 0.055899641804097538 9 -0.52786361356790279
		 10 -0.82013946398434423 11 -1.1175404443596588 15 -0.10755162279665684 19 0.955083967941043
		 20 0.73232863913464341 21 0.50736352454209654 23 0.11907806232737528 25 -0.22410486433120363
		 27 -0.49890014786424075 31 -1.2070949966067175 35 -0.7628206071148993 36 -0.81145585999949854
		 37 -0.85099168479303922 39 -0.92997639514511676 40 -0.96460947727056268 41 -1.007841967126426
		 42 -1.042000858758847 45 -0.5280200714151112 47 0.066038270691084255 48 0;
createNode animCurveTL -n "R_Back_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "0CAA0C4F-4410-BACC-AF7C-C8A06E538BE2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.93800000281375961 3 0.59999999999999654
		 4 0.59999999999999598 5 0.59999999999999509 7 0.59999999999999509 9 0.59999999999999443
		 10 0.59999999999999376 11 0.59999999999999332 15 1.4594553051536889 19 0.59999999999999121
		 20 0.59999999999999121 21 0.59999999999999165 23 0.59999999999999076 25 0.59999999999999132
		 27 0.59999999999999165 31 1.4097561612151226 35 0.59999999999999165 36 0.59999999999999176
		 37 0.59999999999999176 39 0.59999999999999187 40 0.59999999999999165 41 0.59999999999999143
		 42 0.59999999999999121 45 0.90627566263259463 47 0.59999999999999121 48 0.59999999999999121;
createNode animCurveTL -n "R_Back_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "D9B51DB8-4C95-0F9C-9E35-33A2E47A8F04";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1.0238357193120966 3 1.0238357193120966
		 4 0.90439967441757974 5 0.82238517894355556 7 0.70276495540577677 9 0.62404911553425724
		 10 0.59528484812152938 11 0.56314880771855103 15 0.35557325759535174 19 0.74079112508700085
		 20 0.62968285418468628 21 0.49153289045633525 23 0.19200534145302325 25 -0.20811150542921261
		 27 -0.69183736061692058 31 1.3474198912433746 35 1.4973173967708113 36 1.148632754148547
		 37 0.75827379274914442 39 0.027278317026089738 40 -0.34925903588472956 41 -0.72856725573779946
		 42 -1.1044776709926405 45 0.89371757271859886 47 0.34437212577499032 48 0;
createNode animCurveTL -n "L_Back_Lower_Leg_IK_Ctrl_translateX";
	rename -uid "1018E04B-48E0-933C-3E7D-8FA36653ADD2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -0.77478323956444639 4 1.0637230155011856
		 8 0.98131641376156153 9 0.68839130721920028 10 0.36323925129668544 12 -0.22033141255112126
		 14 -0.82528447807311833 15 -1.1552137752279845 16 -1.4372294538187247 20 0.58782353813053689
		 24 0.13817554623674289 25 -0.027065786191408897 26 -0.16516804718523109 28 -0.41899207729955912
		 32 -0.77329678668466739 35 0.59397009838236658 39 0.2577142605802647 40 0.21698735018152596
		 41 0.19114849819583268 42 0.13448460340948853 43 0.24576285555978639 44 0.21487620435283272
		 45 0.16834228289297573 46 0.13417337226576467 48 0;
createNode animCurveTL -n "L_Back_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "D63C2B31-4C6C-C0A2-4BDB-93934D2CC365";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.59999999999999831 4 1.4398384515564129
		 8 0.60000000000000253 9 0.60000000000000242 10 0.6000000000000022 12 0.60000000000000386
		 14 0.6000000000000032 15 0.60000000000000275 16 0.60000000000000253 20 1.3887630488758074
		 24 0.60000000000000253 25 0.60000000000000286 26 0.6000000000000032 28 0.60000000000000298
		 32 0.60000000000000253 35 1.158109249668559 39 0.60000000000000075 40 0.60000000000000087
		 41 0.60000000000000098 42 0.60000000000000042 43 0.72193288274999456 44 0.7463348160406571
		 45 0.60000000000000175 46 0.60000000000000209 48 0.60000000000000253;
createNode animCurveTL -n "L_Back_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "EFFCEC18-4207-5E28-FD22-5398DE248504";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -0.14744133228760412 4 -0.98533268474885893
		 8 -0.08595402255335792 9 -0.20005735947556674 10 -0.29523178337552869 12 -0.46766879684869417
		 14 -0.64199861536938463 15 -0.69414210219192141 16 -0.74915792289830752 20 -0.31019791001292985
		 24 1.5028265511179804 25 1.2932375663546485 26 1.0721892326285754 28 0.53391393345787896
		 32 -0.69709506362933338 35 0.76030252001152243 39 1.553858359763532 40 1.1708863264163338
		 41 0.8065523216634245 42 0.39366545745474246 43 0.7114308690609954 44 1.0953756963216139
		 45 1.023464764665299 46 0.70186192329257779 48 0;
createNode animCurveTL -n "R_Front_Lower_Leg_IK_Ctrl_translateX";
	rename -uid "1B7CA164-48E8-9A30-535E-92A4099E109B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.22537713166388737 3 -0.77478323956444639
		 7 -0.14484282412487984 11 1.3442877978255661 12 1.071077513268307 14 0.5516870751977978
		 19 -0.53706485694753148 23 -0.6281874539110468 27 0.19543796021125992 29 -0.023017787358022734
		 31 -0.21213049295826381 35 -0.46893029638166617 39 -0.21957734828186842 43 0.27637544092945254
		 44 0.23349090601492561 45 0.18024459224739062 48 0;
	setAttr -s 17 ".kit[8:16]"  1 10 10 10 10 10 10 10 
		10;
	setAttr -s 17 ".kot[6:16]"  1 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 17 ".kix[8:16]"  0.1112276451255229 0.37850467145449113 
		0.48903366350899646 0.9997505429303527 0.40827122987431536 1 1 0.58097837048673628 
		0.56987326652938852;
	setAttr -s 17 ".kiy[8:16]"  0.99379495418312058 -0.92559938077287396 
		-0.87226491156928321 -0.022334992958692516 0.91286067001318116 0 0 -0.81391899660013867 
		-0.82173259646622543;
	setAttr -s 17 ".kox[6:16]"  0.96392944118883672 0.41419166564480708 
		0.38181053461289277 0.37850467145449113 0.48903366350899646 0.9997505429303527 0.40827122987431536 
		1 1 0.58097837048673628 0.56987326652938852;
	setAttr -s 17 ".koy[6:16]"  0.26615790878607581 0.91018968578554016 
		0.92424061567246496 -0.92559938077287396 -0.87226491156928321 -0.022334992958692516 
		0.91286067001318116 0 0 -0.81391899660013867 -0.82173259646622543;
createNode animCurveTL -n "R_Front_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "C274305C-43BE-1F96-155D-C4A4CD7EA1F2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.60000000000000075 3 0.59999999999999831
		 7 1.4431283179920622 11 0.60000000000000242 12 0.59999999999999953 14 0.60000000000000442
		 19 0.6 23 1.4853368825306008 27 0.60000000000000242 29 0.60000000000000242 31 0.60000000000000242
		 35 0.60000000000000242 39 1.159222660862683 43 0.60000000000000286 44 0.60000000000000286
		 45 0.60000000000000275 48 0.60000000000000242;
	setAttr -s 17 ".kit[8:16]"  1 10 10 10 10 10 10 10 
		10;
	setAttr -s 17 ".kot[6:16]"  1 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 17 ".kix[8:16]"  0.19392393529854657 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  -0.98101656831998774 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[6:16]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[6:16]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Front_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "75B440B8-46EA-4314-694C-BC9FC9C880EE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.1494025944017098 3 -0.14744133228760412
		 7 1.2258390812546847 11 0.6211023018215317 12 0.56289771295566693 14 0.46773514497078167
		 19 0.29803166416657789 23 2.2242600859155996 27 1.8350616296164226 29 1.320806856266342
		 31 0.68738095471679728 35 -0.67814289712192188 39 1.2949826524869368 43 1.7545486270067827
		 44 1.3762337708103149 45 1.0339338598713961 48 0;
	setAttr -s 17 ".kit[8:16]"  1 10 10 10 10 10 10 10 
		10;
	setAttr -s 17 ".kot[6:16]"  1 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 17 ".kix[8:16]"  0.26569600081012446 0.1437129447448478 
		0.1240988989812964 0.48097948244469568 0.13575396775977497 0.93165286217371068 0.1148764262427301 
		0.12022505236139248 0.12002351975949078;
	setAttr -s 17 ".kiy[8:16]"  -0.96405686302909865 -0.98961941649947649 
		-0.9922698540576701 0.8767318503780005 0.99074258020813755 0.36334961731579263 -0.99337978975500529 
		-0.99274666294311997 -0.99277104848224862;
	setAttr -s 17 ".kox[6:16]"  0.26152556483760531 0.21194171651285953 
		0.26669375169932769 0.1437129447448478 0.1240988989812964 0.48097948244469568 0.13575396775977497 
		0.93165286217371068 0.1148764262427301 0.12022505236139248 0.12002351975949078;
	setAttr -s 17 ".koy[6:16]"  0.96519654938068011 0.97728230762742385 
		-0.9637813252001397 -0.98961941649947649 -0.9922698540576701 0.8767318503780005 0.99074258020813755 
		0.36334961731579263 -0.99337978975500529 -0.99274666294311997 -0.99277104848224862;
createNode animCurveTL -n "L_Front_Lower_Leg_IK_Ctrl_translateX";
	rename -uid "2120C1B5-489A-C8E7-12AE-CBA72325105E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1.1783622542669501 4 0.18101400333633269
		 7 -0.61294266295306266 8 -0.86403215828828506 12 0.59623099659657297 16 0.955083967941043
		 18 0.48047824388052168 20 0.034310405166435937 22 -0.37904214144780934 24 -0.7433178850861335
		 28 0.44617124153119486 32 0.032442391403899151 34 -0.093862371768667713 36 -0.19019333837346511
		 40 -0.36413181595860777 43 -0.021294178563506572 45 0.18466032230553195 48 0;
createNode animCurveTL -n "L_Front_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "C43974BE-4583-CC69-2EB4-2489944A4535";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0.59999999999999654 4 0.59999999999999365
		 7 0.5999999999999871 8 0.59999999999998754 12 1.4594553051536929 16 0.59999999999999121
		 18 0.59999999999998987 20 0.59999999999998954 22 0.59999999999999398 24 0.5999999999999911
		 28 1.3917879557671708 32 0.5999999999999911 34 0.59999999999999087 36 0.59999999999999098
		 40 0.59999999999999098 43 1.0538817151921607 45 0.59999999999999121 48 0.59999999999999098;
createNode animCurveTL -n "L_Front_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "83AEC31A-4CE2-A0C2-40EE-3E9EDF76E9C9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1.0238357193120966 4 0.35319400951418933
		 7 -0.029877171878397737 8 -0.014147005530509182 12 1.9210981436771417 16 0.74079112508700085
		 18 0.53366909487117242 20 0.33792881610420689 22 0.083127109506015304 24 -0.3034885727084734
		 28 1.313859513798544 32 1.9659299802547432 34 1.3241060505255486 36 0.57032084600270561
		 40 -0.90208269744429437 43 0.2899316388219384 45 1.0252889299607324 48 0;
createNode animCurveTL -n "Accordian_Ctrl_translateX";
	rename -uid "E6D0D01D-4788-8CCE-2114-FE8AEA6AD473";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.40718327587109721;
createNode animCurveTL -n "Accordian_Ctrl_translateY";
	rename -uid "72A8438F-45B7-326F-F86A-5590169BEF7E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.8622937353617317e-17;
createNode animCurveTL -n "Accordian_Ctrl_translateZ";
	rename -uid "909CE176-470D-9A35-7314-FEBE0F034DA2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0770606943056179e-20;
createNode animCurveTL -n "COG_Ctrl_translateX";
	rename -uid "07926B13-43AE-2C83-27FC-44952123467A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 1.7364581994527839e-15 48 -9.1419927183977734e-16;
createNode animCurveTL -n "COG_Ctrl_translateY";
	rename -uid "9D94AA97-41BB-B71B-74AA-51848C4642BD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 1.3254924474415275 48 9.3807287525997793;
createNode animCurveTL -n "COG_Ctrl_translateZ";
	rename -uid "3AC13B0B-47D4-B4B4-BD82-A5AADEDA7BA7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 6.4010472383983528 48 8.1207946408083895;
createNode animCurveTA -n "COG_Ctrl_rotateX";
	rename -uid "87DCF942-43F6-D66A-C84E-3BBC4BACAF17";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.735439384921268 24 0 48 0;
createNode animCurveTA -n "COG_Ctrl_rotateY";
	rename -uid "0F805992-4CEC-C189-B859-928AFD3F4E7D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTA -n "COG_Ctrl_rotateZ";
	rename -uid "7FD00C3E-48E3-4B6A-B61A-E28346736463";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTL -n "R_Back_Leg_Pole_Vector_Ctrl_translateX";
	rename -uid "D3B83597-4A80-4E49-B354-299EFFAFDB6B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 27 0 31 2.4980018054066022e-16 36 2.4980018054066022e-16
		 42 0 45 2.9420910152566648e-15 48 0;
createNode animCurveTL -n "R_Back_Leg_Pole_Vector_Ctrl_translateY";
	rename -uid "2EBE5C38-4243-0B3C-4D97-7EADB989C48A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 27 0 31 -3.7870582994440829 36 -3.7870582994440829
		 42 0 45 -1.8020664799027737 48 0;
createNode animCurveTL -n "R_Back_Leg_Pole_Vector_Ctrl_translateZ";
	rename -uid "36ABCFF9-4411-F6D3-C43D-A0903DA973E4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 27 0 31 4.4933000426960241 36 4.4933000426960241
		 42 0 45 2.2348043142875973 48 0;
createNode animCurveTA -n "Lower_Torso_Ctrl_rotateX";
	rename -uid "BFA72082-428C-AABB-0E6E-48A548DFFED1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.31902759297727695 6 1.728348940149534
		 12 -0.055107376043438662 16 0 45 0 50 0.91178750000000008 54 5.565932 58 0 63 0;
createNode animCurveTA -n "Lower_Torso_Ctrl_rotateY";
	rename -uid "563675B6-4539-BF3D-296F-ADB9CEE075FB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.9741894815702725 6 -6.8759905348150836
		 12 1.3102980522692635 16 0 45 0 50 -3.3146024999999999 54 1.2340625000000001 58 0
		 63 0;
createNode animCurveTA -n "Lower_Torso_Ctrl_rotateZ";
	rename -uid "2BD41F71-4DCE-8606-128A-F4B04471DA8C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -11.040183598187959 6 -6.5362160806348211
		 12 -2.4084872431233739 16 0 45 0 50 12.5919965 54 -12.045105 58 2.9193811427678438
		 63 0;
createNode animCurveTL -n "Lower_Torso_Ctrl_translateX";
	rename -uid "4683CCB9-4059-7E07-9D3E-3BB4BD2D054C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 50 0.26191842985003783 54 0;
createNode animCurveTL -n "Lower_Torso_Ctrl_translateY";
	rename -uid "8EC3E5DE-4FD4-405B-3927-9C8F123B6CDF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 50 0.57868065854632189 54 0;
createNode animCurveTL -n "Lower_Torso_Ctrl_translateZ";
	rename -uid "D880EA2E-4A6D-CF06-0E01-229DDC8A5D13";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 50 0.069378133718455623 54 0;
createNode animCurveTA -n "Upper_Torso_Ctrl_rotateX";
	rename -uid "52B48A0A-466B-3F10-55BA-CA99F5432339";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.970902426668502 8 24.451490182104376
		 23 -390.5439967361234 30 -343.02403469759923 37 -360;
createNode animCurveTA -n "Upper_Torso_Ctrl_rotateY";
	rename -uid "8C803F53-4D1F-34BC-D833-9FA6F047A9F3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 23 0 30 0 37 0;
createNode animCurveTA -n "Upper_Torso_Ctrl_rotateZ";
	rename -uid "763891A8-449D-7D67-7B36-E3B27FCB30BA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 23 0 30 0 37 0;
createNode animCurveTA -n "L_Upper_Arm_Ctrl_rotateX";
	rename -uid "69452E71-462C-4C3C-F780-0EA6414C322C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 -17.512054134864428 12 60.753726649161578
		 20 -19.665431237655707 25 65.964312950620055 30 -42.746368082945274 32 -42.457333415754782
		 37 -15.85498189620364 42 0 46 0 51 0 56 0 59 0 64 0;
	setAttr -s 14 ".kit[3:13]"  1 10 1 10 10 10 10 10 
		10 10 10;
	setAttr -s 14 ".kot[3:13]"  1 10 1 10 10 10 10 10 
		10 10 10;
	setAttr -s 14 ".kix[3:13]"  0.44291301173158204 0.71893615351976514 
		0.33046486744530157 1 0.49012073912075826 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[3:13]"  -0.89656458999832223 -0.69507611609247844 
		-0.94381829362667002 0 0.87165455375608614 0 0 0 0 0 0;
	setAttr -s 14 ".kox[3:13]"  0.44291301173158204 0.71893615351976514 
		0.33046486744530157 1 0.49012073912075826 1 1 1 1 1 1;
	setAttr -s 14 ".koy[3:13]"  -0.89656458999832223 -0.69507611609247844 
		-0.94381829362667002 0 0.87165455375608614 0 0 0 0 0 0;
createNode animCurveTA -n "L_Upper_Arm_Ctrl_rotateY";
	rename -uid "70D1AD14-429D-DC45-7A42-639B0B79720B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 12.520624079571334 12 -27.89948580401358
		 20 -63.830053018470011 25 17.987776738876011 30 -8.5197471785910164 32 -16.664093371941405
		 37 1.195101409453994 42 0 46 0 51 0 56 0 59 0 64 0;
	setAttr -s 14 ".kit[3:13]"  1 10 1 10 10 10 10 10 
		10 10 10;
	setAttr -s 14 ".kot[3:13]"  1 10 1 10 10 10 10 10 
		10 10 10;
	setAttr -s 14 ".kix[3:13]"  0.32975677746702992 0.39628555102293694 
		0.86270999429745221 0.86452978847621753 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[3:13]"  -0.94406592339442041 0.91812731255008817 
		-0.50569898728323526 0.50258158028052158 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[3:13]"  0.32975677746702992 0.39628555102293694 
		0.86270999429745221 0.86452978847621753 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[3:13]"  -0.94406592339442041 0.91812731255008817 
		-0.50569898728323526 0.50258158028052158 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Upper_Arm_Ctrl_rotateZ";
	rename -uid "E5205BF8-41C8-5275-4E0D-25BC75935045";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 32.917888280799701 12 -65.084168202313549
		 20 0 25 -50.127272438447541 30 6.8662779194792023 32 32.280216845061403 37 -24.120182693382244
		 42 0 46 0 51 -14.915177183715649 56 12.790424726495555 59 -10.241604787424077 64 0;
	setAttr -s 14 ".kit[3:13]"  1 10 1 10 10 10 10 10 
		10 10 10;
	setAttr -s 14 ".kot[3:13]"  1 10 1 10 10 10 10 10 
		10 10 10;
	setAttr -s 14 ".kix[3:13]"  0.53142329699159663 0.96104021114742422 
		0.74040874366081555 0.4746777880268932 0.59461574922933969 1 1 0.88146170730057927 
		0.97133999871224952 0.83088327682552787 0.75893557489792562;
	setAttr -s 14 ".kiy[3:13]"  0.84710641563771738 0.27640859711252536 
		0.67215689560593861 -0.88015964322041929 -0.80401001907216996 0 0 0.4722555013578435 
		0.23769435605770547 -0.55644674524313009 0.65116571865720552;
	setAttr -s 14 ".kox[3:13]"  0.53142329699159663 0.96104021114742422 
		0.74040874366081555 0.4746777880268932 0.59461574922933969 1 1 0.88146170730057927 
		0.97133999871224952 0.83088327682552787 0.75893557489792574;
	setAttr -s 14 ".koy[3:13]"  0.84710641563771738 0.27640859711252536 
		0.67215689560593861 -0.88015964322041929 -0.80401001907216996 0 0 0.4722555013578435 
		0.23769435605770547 -0.55644674524313009 0.65116571865720563;
createNode animCurveTA -n "R_Upper_Arm_Ctrl_rotateX";
	rename -uid "BDD02CE1-4F76-0BAF-87D6-49B56C1DF7ED";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 17.512 12 -60.754000000000005 20 19.665
		 25 -65.964 30 42.746 32 42.457 37 15.855 42 0 46 0 51 0 56 0 59 0 64 0;
	setAttr -s 14 ".kit[2:13]"  1 1 10 1 10 10 10 10 
		10 10 10 1;
	setAttr -s 14 ".kot[2:13]"  1 1 1 1 10 10 10 10 
		10 10 10 10;
	setAttr -s 14 ".kix[2:13]"  0.20881258981866793 0.44291301173158204 
		0.71893520311828552 0.33046486744530157 1 0.49012366345810965 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0.97795567503502978 -0.89656458999832223 
		0.69507709911726301 -0.94381829362667002 0 -0.87165290943035434 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  0.20881258981866793 0.44291301173158204 
		0.71893615351976514 0.33046486744530157 1 0.49012366345810965 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0.97795567503502978 -0.89656458999832223 
		-0.69507611609247844 -0.94381829362667002 0 -0.87165290943035434 0 0 0 0 0 0;
createNode animCurveTA -n "R_Upper_Arm_Ctrl_rotateY";
	rename -uid "8E3FDF9E-458C-329D-CC37-5C8B13A1FD6A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 12.521 12 -27.89948580401358 20 -63.830053018470011
		 25 17.987776738876011 30 -8.5197471785910164 32 -16.664093371941405 37 1.195101409453994
		 42 0 46 0 51 0 56 0 59 0 64 0;
	setAttr -s 14 ".kit[2:13]"  1 1 10 1 10 10 10 10 
		10 10 10 1;
	setAttr -s 14 ".kot[2:13]"  1 1 1 1 10 10 10 10 
		10 10 10 10;
	setAttr -s 14 ".kix[2:13]"  0.38207275189022694 0.32975677746702992 
		0.39628555102293694 0.86270999429745221 0.86452978847621753 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  -0.92413224825401974 -0.94406592339442041 
		0.91812731255008817 -0.50569898728323526 0.50258158028052158 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  0.38207275189022694 0.32975677746702992 
		0.39628555102293694 0.86270999429745221 0.86452978847621753 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  -0.92413224825401974 -0.94406592339442041 
		0.91812731255008817 -0.50569898728323526 0.50258158028052158 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Upper_Arm_Ctrl_rotateZ";
	rename -uid "90AD2A99-41D4-FAAE-7D5E-0A8A337E4FCC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 -32.918 12 65.084 20 0 25 50.127 30 -6.866
		 32 -32.28 37 24.12 42 0 46 0 51 -14.915177183715649 56 12.790424726495555 59 -10.241604787424077
		 64 0;
	setAttr -s 14 ".kit[2:13]"  1 1 10 1 10 10 10 10 
		10 10 10 1;
	setAttr -s 14 ".kot[2:13]"  1 1 1 1 10 10 10 10 
		10 10 10 10;
	setAttr -s 14 ".kix[2:13]"  0.16809326832867258 0.53142329699159663 
		0.96104318305628911 0.74040874366081555 0.47468325428550939 0.59461833133370323 1 
		1 0.88146170730057927 0.97133999871224952 0.83088327682552787 0.75893557489792562;
	setAttr -s 14 ".kiy[2:13]"  -0.98577109571268362 0.84710641563771738 
		-0.27639826392550998 0.67215689560593861 0.8801566951974622 0.80400810943791001 0 
		0 0.4722555013578435 0.23769435605770547 -0.55644674524313009 0.65116571865720552;
	setAttr -s 14 ".kox[2:13]"  0.16809326832867258 0.53142329699159663 
		0.96104021114742422 0.74040874366081555 0.47468325428550939 0.59461833133370323 1 
		1 0.88146170730057927 0.97133999871224952 0.83088327682552787 0.75893557489792574;
	setAttr -s 14 ".koy[2:13]"  -0.98577109571268362 0.84710641563771738 
		0.27640859711252536 0.67215689560593861 0.8801566951974622 0.80400810943791001 0 
		0 0.4722555013578435 0.23769435605770547 -0.55644674524313009 0.65116571865720563;
createNode animCurveTA -n "L_Lower_Arm_Ctrl_rotateX";
	rename -uid "8294A216-4DBA-B76F-C590-59966F20C921";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  23 0 27 -24.718108255845426 30 58.632333024868473
		 34 109.76860070078301 38 52.97898520058019 42 41.271408292413604 46 0 49 0 52 0 54 0
		 58 0 61 0 65 0;
createNode animCurveTA -n "L_Lower_Arm_Ctrl_rotateY";
	rename -uid "751BD15C-4FCF-4DCC-EE98-AFA7A85C2057";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  23 0 27 39.876290173379815 30 45.338320500940995
		 34 -5.053564744520008 38 2.8916019171623479 42 5.1524508437397047 46 0 49 0 52 0
		 54 0 58 0 61 0 65 0;
createNode animCurveTA -n "L_Lower_Arm_Ctrl_rotateZ";
	rename -uid "ED9D2A43-406E-EA1F-62B7-83AF7FB8E0B1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  23 0 27 -43.445925646313974 30 -70.341508231761708
		 34 28.299148002760674 38 -7.8475334259841869 42 12.50801910808069 46 0 49 0 52 -15.445364355612554
		 54 -15.445364355612554 58 19.737759995471915 61 -3.0374268493953882 65 0;
createNode animCurveTA -n "L_Palm_Ctrl_rotateX";
	rename -uid "94492FF5-4E76-323D-93D9-4389A5467FBB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  8 0 11 27.868605241205842 20 0 25 0 28 25.951912085256645
		 30 -31.292241137101215 32 -23.851921419140726 35 -16.79626552470674 38 8.7565803896021102
		 41 32.983366575357095 45 50.988774033903049 50 36.268155172985864 54 21.699225956651453
		 58 15.978904831358742 62 0 67 0;
createNode animCurveTA -n "L_Palm_Ctrl_rotateY";
	rename -uid "610E2BBA-43FD-FECC-2E76-99A7363A76AC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  8 0 11 26.466016798472353 20 0 25 0 28 30.619576179870908
		 30 30.619576179870982 32 -12.30135113998784 35 18.221689140098782 38 33.194064491175503
		 41 -26.735198383150109 45 9.1492211250972844 50 2.509765423503584 54 -15.087766524546383
		 58 4.1770461719613046 62 -4.7612753317746375 67 0;
createNode animCurveTA -n "L_Palm_Ctrl_rotateZ";
	rename -uid "305B7B40-4D68-14D2-5298-C0955281145D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  8 0 11 11.95861074971199 20 0 25 0 28 7.753227809979756
		 30 7.7532278099798262 32 -6.6581978155759485 35 0.59799221573554595 38 2.9949085660718926
		 41 -21.669937061829714 45 22.169503990281196 50 14.069460982793366 54 -24.250428289443406
		 58 19.037816067136493 62 -9.0864649961015722 67 0;
createNode animCurveTA -n "R_Lower_Arm_Ctrl_rotateX";
	rename -uid "AA159611-4455-C687-5D59-AF9228AE2348";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  23 0 27 24.718 30 -58.632 34 -109.769 38 -52.979
		 42 -41.271 46 0 49 0 52 0 54 0 58 0 61 0 65 0;
createNode animCurveTA -n "R_Lower_Arm_Ctrl_rotateY";
	rename -uid "CBD205B9-4EE5-2A87-98BA-05AED6B113A6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  23 0 27 39.876290173379815 30 45.338320500940995
		 34 -5.053564744520008 38 2.8916019171623479 42 5.1524508437397047 46 0 49 0 52 0
		 54 0 58 0 61 0 65 0;
createNode animCurveTA -n "R_Lower_Arm_Ctrl_rotateZ";
	rename -uid "CE9D85DB-48D6-66EE-6AEE-CFBE77E2A6D2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  23 0 27 43.446 30 70.342 34 -28.299 38 7.8480000000000008
		 42 -12.508 46 0 49 0 52 -15.445364355612554 54 -15.445364355612554 58 19.737759995471915
		 61 -3.0374268493953882 65 0;
createNode animCurveTA -n "R_Palm_Ctrl_rotateX";
	rename -uid "76258F3F-4AFF-F748-5BB1-8BAC393E047D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  8 0 11 -27.869 20 0 25 0 28 -25.952 30 31.292
		 32 23.852 35 16.796 38 8.757 41 32.983 45 50.988774033903049 50 36.268155172985864
		 54 21.699225956651453 58 15.978904831358742 62 0 67 0;
createNode animCurveTA -n "R_Palm_Ctrl_rotateY";
	rename -uid "EAE63AC7-499B-3053-B940-7C98B43E0BC0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  8 0 11 26.466016798472353 20 0 25 0 28 30.619576179870908
		 30 30.619576179870982 32 -12.30135113998784 35 18.221689140098782 38 33.194064491175503
		 41 -26.735198383150109 45 9.1492211250972844 50 2.509765423503584 54 -15.087766524546383
		 58 4.1770461719613046 62 -4.7612753317746375 67 0;
createNode animCurveTA -n "R_Palm_Ctrl_rotateZ";
	rename -uid "7F288924-4523-6AF8-72EC-43B04CA1666B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  8 0 11 -11.959 20 0 25 0 28 -7.753 30 -7.753
		 32 6.658 35 -0.598 38 -2.995 41 21.67 45 22.169503990281196 50 14.069460982793366
		 54 -24.250428289443406 58 19.037816067136493 62 -9.0864649961015722 67 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "C928B7AB-47DF-C375-9463-0D8BBDF4D9C3";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 2;
	setAttr -av ".unw" 2;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".hfd";
	setAttr -av ".hfs";
	setAttr -av ".hfe";
	setAttr -av ".hfcr";
	setAttr -av ".hfcg";
	setAttr -av ".hfcb";
	setAttr -av ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 44 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 44 ".gn";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
connectAttr "COG_Ctrl_translateX.o" "Lab1ProjRN.phl[1]";
connectAttr "COG_Ctrl_translateY.o" "Lab1ProjRN.phl[2]";
connectAttr "COG_Ctrl_translateZ.o" "Lab1ProjRN.phl[3]";
connectAttr "COG_Ctrl_rotateX.o" "Lab1ProjRN.phl[4]";
connectAttr "COG_Ctrl_rotateY.o" "Lab1ProjRN.phl[5]";
connectAttr "COG_Ctrl_rotateZ.o" "Lab1ProjRN.phl[6]";
connectAttr "Hip_Ctrl_translateX.o" "Lab1ProjRN.phl[7]";
connectAttr "Hip_Ctrl_translateY.o" "Lab1ProjRN.phl[8]";
connectAttr "Hip_Ctrl_translateZ.o" "Lab1ProjRN.phl[9]";
connectAttr "R_Back_Leg_Pole_Vector_Ctrl_translateX.o" "Lab1ProjRN.phl[10]";
connectAttr "R_Back_Leg_Pole_Vector_Ctrl_translateY.o" "Lab1ProjRN.phl[11]";
connectAttr "R_Back_Leg_Pole_Vector_Ctrl_translateZ.o" "Lab1ProjRN.phl[12]";
connectAttr "R_Back_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[13]";
connectAttr "R_Back_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[14]";
connectAttr "R_Back_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[15]";
connectAttr "R_Front_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[16]";
connectAttr "R_Front_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[17]";
connectAttr "R_Front_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[18]";
connectAttr "L_Front_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[19]";
connectAttr "L_Front_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[20]";
connectAttr "L_Front_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[21]";
connectAttr "L_Back_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[22]";
connectAttr "L_Back_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[23]";
connectAttr "L_Back_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[24]";
connectAttr "Accordian_Ctrl_translateX.o" "Lab1ProjRN.phl[25]";
connectAttr "Accordian_Ctrl_translateY.o" "Lab1ProjRN.phl[26]";
connectAttr "Accordian_Ctrl_translateZ.o" "Lab1ProjRN.phl[27]";
connectAttr "Lower_Torso_Ctrl_translateX.o" "Lab1ProjRN.phl[28]";
connectAttr "Lower_Torso_Ctrl_translateY.o" "Lab1ProjRN.phl[29]";
connectAttr "Lower_Torso_Ctrl_translateZ.o" "Lab1ProjRN.phl[30]";
connectAttr "Lower_Torso_Ctrl_rotateX.o" "Lab1ProjRN.phl[31]";
connectAttr "Lower_Torso_Ctrl_rotateY.o" "Lab1ProjRN.phl[32]";
connectAttr "Lower_Torso_Ctrl_rotateZ.o" "Lab1ProjRN.phl[33]";
connectAttr "Upper_Torso_Ctrl_rotateX.o" "Lab1ProjRN.phl[34]";
connectAttr "Upper_Torso_Ctrl_rotateY.o" "Lab1ProjRN.phl[35]";
connectAttr "Upper_Torso_Ctrl_rotateZ.o" "Lab1ProjRN.phl[36]";
connectAttr "R_Upper_Arm_Ctrl_rotateX.o" "Lab1ProjRN.phl[37]";
connectAttr "R_Upper_Arm_Ctrl_rotateY.o" "Lab1ProjRN.phl[38]";
connectAttr "R_Upper_Arm_Ctrl_rotateZ.o" "Lab1ProjRN.phl[39]";
connectAttr "R_Lower_Arm_Ctrl_rotateX.o" "Lab1ProjRN.phl[40]";
connectAttr "R_Lower_Arm_Ctrl_rotateY.o" "Lab1ProjRN.phl[41]";
connectAttr "R_Lower_Arm_Ctrl_rotateZ.o" "Lab1ProjRN.phl[42]";
connectAttr "R_Palm_Ctrl_rotateX.o" "Lab1ProjRN.phl[43]";
connectAttr "R_Palm_Ctrl_rotateY.o" "Lab1ProjRN.phl[44]";
connectAttr "R_Palm_Ctrl_rotateZ.o" "Lab1ProjRN.phl[45]";
connectAttr "L_Upper_Arm_Ctrl_rotateX.o" "Lab1ProjRN.phl[46]";
connectAttr "L_Upper_Arm_Ctrl_rotateY.o" "Lab1ProjRN.phl[47]";
connectAttr "L_Upper_Arm_Ctrl_rotateZ.o" "Lab1ProjRN.phl[48]";
connectAttr "L_Lower_Arm_Ctrl_rotateX.o" "Lab1ProjRN.phl[49]";
connectAttr "L_Lower_Arm_Ctrl_rotateY.o" "Lab1ProjRN.phl[50]";
connectAttr "L_Lower_Arm_Ctrl_rotateZ.o" "Lab1ProjRN.phl[51]";
connectAttr "L_Palm_Ctrl_rotateX.o" "Lab1ProjRN.phl[52]";
connectAttr "L_Palm_Ctrl_rotateY.o" "Lab1ProjRN.phl[53]";
connectAttr "L_Palm_Ctrl_rotateZ.o" "Lab1ProjRN.phl[54]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of RobotAnimationTest01.ma
