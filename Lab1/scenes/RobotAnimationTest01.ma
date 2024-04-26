//Maya ASCII 2024 scene
//Name: RobotAnimationTest01.ma
//Last modified: Fri, Apr 26, 2024 10:17:58 AM
//Codeset: 1252
file -rdi 1 -ns "Lab1Proj" -rfn "Lab1ProjRN" -op "v=0;" -typ "mayaAscii" "C:/Users/Theta Rich/GitHubStuff/University/LabSpring2024/Lab1//Lab1Proj.ma";
file -r -ns "Lab1Proj" -dr 1 -rfn "Lab1ProjRN" -op "v=0;" -typ "mayaAscii" "C:/Users/Theta Rich/GitHubStuff/University/LabSpring2024/Lab1//Lab1Proj.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "B815035E-4D69-71DC-C370-9BADBC1E046C";
createNode transform -s -n "persp";
	rename -uid "E62383D5-4105-03F0-4AB5-E892450226B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0132989450582173 16.462911941169832 28.753325810475154 ;
	setAttr ".r" -type "double3" -26.138352729606936 8.6000000000028241 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DC1668E3-46EB-6D78-6378-EBA06F88DC68";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 30.525611924498985;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
	rename -uid "ABBE6577-4FA0-8D4F-9B5E-C3805A8D20A6";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7C1D0DE0-435A-9EFC-3668-7D9BC699BDCC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D5ED4EA6-443B-4192-A45A-BAB8030DA1AC";
createNode displayLayerManager -n "layerManager";
	rename -uid "BE451586-4E87-EB1B-74EE-02BFA164C42F";
createNode displayLayer -n "defaultLayer";
	rename -uid "FC70BECF-4A2B-0ADD-C5E0-D98C641F602D";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2184EC07-4693-4E98-1C45-5C881C9330D5";
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
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
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
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
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
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 230 ";
	setAttr ".st" 6;
createNode reference -n "Lab1ProjRN";
	rename -uid "4E0787AF-472D-7CA8-79F6-DFAD50399278";
	setAttr -s 24 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Lab1ProjRN"
		"Lab1ProjRN" 0
		"Lab1ProjRN" 54
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
		2 "Lab1Proj:Geo_Layer" "displayType" " 2"
		2 "Lab1Proj:Jnt_Layer" "displayType" " 2"
		2 "Lab1Proj:Jnt_Layer" "visibility" " 0"
		2 "Lab1Proj:Ctrl_Layer" "displayType" " 0"
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
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[10]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[11]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Back_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[12]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[13]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[14]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:R_Front_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[15]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[16]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[17]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Front_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[18]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[19]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[20]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Hip_Ctrl_Grp|Lab1Proj:Hip_Ctrl|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl_Grp|Lab1Proj:L_Back_Lower_Leg_IK_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[21]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl.translateX" 
		"Lab1ProjRN.placeHolderList[22]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl.translateY" 
		"Lab1ProjRN.placeHolderList[23]" ""
		5 4 "Lab1ProjRN" "|Lab1Proj:Robot|Lab1Proj:Controls|Lab1Proj:Transform_Ctrl|Lab1Proj:COG_Ctrl_Grp|Lab1Proj:COG_Ctrl|Lab1Proj:Accordian_Ctrl_Grp|Lab1Proj:Accordian_Ctrl.translateZ" 
		"Lab1ProjRN.placeHolderList[24]" "";
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "R_Back_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "0CAA0C4F-4410-BACC-AF7C-C8A06E538BE2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.6;
createNode animCurveTL -n "R_Back_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "D9B51DB8-4C95-0F9C-9E35-33A2E47A8F04";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1102230246251565e-16;
createNode animCurveTL -n "L_Back_Lower_Leg_IK_Ctrl_translateX";
	rename -uid "1018E04B-48E0-933C-3E7D-8FA36653ADD2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.4408920985006262e-16;
createNode animCurveTL -n "L_Back_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "D63C2B31-4C6C-C0A2-4BDB-93934D2CC365";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.6;
createNode animCurveTL -n "L_Back_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "EFFCEC18-4207-5E28-FD22-5398DE248504";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1102230246251565e-16;
createNode animCurveTL -n "R_Front_Lower_Leg_IK_Ctrl_translateX";
	rename -uid "1B7CA164-48E8-9A30-535E-92A4099E109B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.2204460492503131e-16;
createNode animCurveTL -n "R_Front_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "C274305C-43BE-1F96-155D-C4A4CD7EA1F2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.6;
createNode animCurveTL -n "R_Front_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "75B440B8-46EA-4314-694C-BC9FC9C880EE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1102230246251565e-16;
createNode animCurveTL -n "L_Front_Lower_Leg_IK_Ctrl_translateX";
	rename -uid "2120C1B5-489A-C8E7-12AE-CBA72325105E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.1783622542669501 8 -0.72280514860668765;
createNode animCurveTL -n "L_Front_Lower_Leg_IK_Ctrl_translateY";
	rename -uid "C43974BE-4583-CC69-2EB4-2489944A4535";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.59999999999999654 8 0.59999999999999309;
createNode animCurveTL -n "L_Front_Lower_Leg_IK_Ctrl_translateZ";
	rename -uid "83AEC31A-4CE2-A0C2-40EE-3E9EDF76E9C9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0238357193120966 8 0.15274699652287183;
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
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "4EEB8181-4912-1AE0-0012-9A994D12793A";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av ".unw";
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
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
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
connectAttr "R_Back_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[10]";
connectAttr "R_Back_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[11]";
connectAttr "R_Back_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[12]";
connectAttr "R_Front_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[13]";
connectAttr "R_Front_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[14]";
connectAttr "R_Front_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[15]";
connectAttr "L_Front_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[16]";
connectAttr "L_Front_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[17]";
connectAttr "L_Front_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[18]";
connectAttr "L_Back_Lower_Leg_IK_Ctrl_translateY.o" "Lab1ProjRN.phl[19]";
connectAttr "L_Back_Lower_Leg_IK_Ctrl_translateX.o" "Lab1ProjRN.phl[20]";
connectAttr "L_Back_Lower_Leg_IK_Ctrl_translateZ.o" "Lab1ProjRN.phl[21]";
connectAttr "Accordian_Ctrl_translateX.o" "Lab1ProjRN.phl[22]";
connectAttr "Accordian_Ctrl_translateY.o" "Lab1ProjRN.phl[23]";
connectAttr "Accordian_Ctrl_translateZ.o" "Lab1ProjRN.phl[24]";
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
