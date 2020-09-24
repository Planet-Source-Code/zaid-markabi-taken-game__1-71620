Attribute VB_Name = "Missions"
Global TV As New TVEngine
Global Room As New TVMesh
Global TextureFactory As New TVTextureFactory
Global Scene As New TVScene
Global Objects(999) As New TVMesh
Global Ski As New TVAtmosphere
Global FogMax As Single
Global Camera As New TVCamera
Global CameraFar As Integer
Global CameraMaxFar As Integer

Global Land As New TVLandscape
Global LandEnbl As Boolean
Global MatFactory As New TVMaterialFactory
Global LightEngine As New TVLightEngine
Global EffectEngine As New TVGraphicEffect
Global LandHei1 As Single
Global LandHei2 As Single

Global DmOh(99) As New TVMesh
Global DmOhAngl(99) As Single
Global DmOhUsed(99) As Boolean
Global DmOhFrame(99) As Integer
Global DmOhFreeOne As Integer

Sub Mission0()
Room.AddFloor GetTex("Floor"), -100000, -100000, 100000, 100000, , 10, 10
End Sub

Sub Mission1()
LandHei1 = 0
LandHei2 = 0
Effect_Fade_In 1
LandEnbl = False
TextureFactory.LoadTexture App.Path + "\Data\Room\Floor.png", "Floor"
Room.AddFloor GetTex("Floor"), -10000, -1000, 10000, 1000, , 30, 3

TextureFactory.LoadTexture App.Path + "\Data\Room\sky_back2.JPG", "sky_back"
TextureFactory.LoadTexture App.Path + "\Data\Room\sky_front2.JPG", "sky_front"
TextureFactory.LoadTexture App.Path + "\Data\Room\sky_left2.JPG", "sky_left"
TextureFactory.LoadTexture App.Path + "\Data\Room\sky_right2.JPG", "sky_right"
TextureFactory.LoadTexture App.Path + "\Data\Room\sky_top2.JPG", "sky_top"

Scene.SetSceneBackGround 0, 0, 0
Camera.SetViewFrustum 65, 3000
CameraFar = -300
CameraMaxFar = 500

FogMax = 100
Ski.Fog_Enable False

Ski.Rain_Enable True
Ski.Rain_Init 100, GetTex("snow"), -1, Camera.GetPosition.x, , 0.3, , 2, , 10

Set Objects(0) = Scene.CreateMeshBuilder
Objects(0).Load3DSMesh App.Path + "\Data\Room\Tree1.3ds", False, False, False, False, False
TextureFactory.LoadTexture App.Path + "\Data\Room\Tree1.png", "Tree1", , , TV_COLORKEY_BLACK
Objects(0).SetTexture GetTex("Tree1")
Objects(0).SetPosition -450, 0, 300
Objects(0).ScaleMesh 12, 12, 12

Set Objects(1) = Scene.CreateMeshBuilder
Objects(1).Load3DSMesh App.Path + "\Data\Room\Tree1.3ds", False, False, False, False, False
Objects(1).SetTexture GetTex("Tree1")
Objects(1).SetPosition 450, 0, 400
Objects(1).ScaleMesh 12, 12, 12
Objects(1).RotateY 90

Set Objects(2) = Scene.CreateMeshBuilder
Objects(2).Load3DSMesh App.Path + "\Data\Room\Tree1.3ds", False, False, False, False, False
Objects(2).SetTexture GetTex("Tree1")
Objects(2).SetPosition -500, 0, -100
Objects(2).ScaleMesh 12, 12, 12
Objects(2).RotateY -55

Set Objects(3) = Scene.CreateMeshBuilder
Objects(3).Load3DSMesh App.Path + "\Data\Room\Tree1.3ds", False, False, False, False, False
Objects(3).SetTexture GetTex("Tree1")
Objects(3).SetPosition 450, 0, 300
Objects(3).ScaleMesh 12, 12, 12
Objects(3).RotateY -166

Set Objects(11) = Scene.CreateMeshBuilder
Objects(11).Load3DSMesh App.Path + "\Data\Room\Tree1.3ds", False, False, False, False, False
Objects(11).SetTexture GetTex("Tree1")
Objects(11).SetPosition 450, 0, 600
Objects(11).ScaleMesh 12, 12, 12

Set Objects(12) = Scene.CreateMeshBuilder
Objects(12).Load3DSMesh App.Path + "\Data\Room\Tree1.3ds", False, False, False, False, False
Objects(12).SetTexture GetTex("Tree1")
Objects(12).SetPosition -900, 0, 600
Objects(12).ScaleMesh 12, 12, 12

Set Objects(13) = Scene.CreateMeshBuilder
Objects(13).Load3DSMesh App.Path + "\Data\Room\Tree1.3ds", False, False, False, False, False
Objects(13).SetTexture GetTex("Tree1")
Objects(13).SetPosition -600, 0, 1000
Objects(13).ScaleMesh 12, 12, 12

Set Objects(4) = Scene.CreateMeshBuilder
Objects(4).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
TextureFactory.LoadTexture App.Path + "\Data\Room\Tree2.png", "Tree2", , , TV_COLORKEY_BLACK
Objects(4).SetTexture GetTex("Tree2")
Objects(4).SetPosition 400, 0, 300
Objects(4).ScaleMesh 12, 12, 12

Set Objects(5) = Scene.CreateMeshBuilder
Objects(5).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(5).SetTexture GetTex("Tree2")
Objects(5).SetPosition -400, 0, 300
Objects(5).ScaleMesh 12, 12, 12
Objects(5).RotateY -166

Set Objects(6) = Scene.CreateMeshBuilder
Objects(6).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(6).SetTexture GetTex("Tree2")
Objects(6).SetPosition -600, 0, 500
Objects(6).ScaleMesh 12, 12, 12
Objects(6).RotateY 90

Set Objects(7) = Scene.CreateMeshBuilder
Objects(7).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(7).SetTexture GetTex("Tree2")
Objects(7).SetPosition 600, 0, 300
Objects(7).ScaleMesh 12, 12, 12
Objects(7).RotateY 90

Set Objects(8) = Scene.CreateMeshBuilder
Objects(8).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(8).SetTexture GetTex("Tree2")
Objects(8).SetPosition -400, 0, 600
Objects(8).ScaleMesh 12, 12, 12

Set Objects(9) = Scene.CreateMeshBuilder
Objects(9).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(9).SetTexture GetTex("Tree2")
Objects(9).SetPosition 400, 0, 600
Objects(9).ScaleMesh 12, 12, 12

Set Objects(10) = Scene.CreateMeshBuilder
Objects(10).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(10).SetTexture GetTex("Tree2")
Objects(10).SetPosition 600, 0, 600
Objects(10).ScaleMesh 12, 12, 12

Set Objects(14) = Scene.CreateMeshBuilder
Objects(14).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(14).SetTexture GetTex("Tree2")
Objects(14).SetPosition -500, 0, 800
Objects(14).ScaleMesh 12, 12, 12

Set Objects(15) = Scene.CreateMeshBuilder
Objects(15).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(15).SetTexture GetTex("Tree2")
Objects(15).SetPosition -400, 0, 800
Objects(15).ScaleMesh 12, 12, 12

Set Objects(16) = Scene.CreateMeshBuilder
Objects(16).LoadXFile App.Path + "\Data\Room\House.x", True, False
TextureFactory.LoadTexture App.Path + "\Data\Room\House.jpg", "House"
Objects(16).SetTexture GetTex("House")
Objects(16).SetPosition 0, 270, 400
Objects(16).ScaleMesh 0.5, 0.5, 0.5
Objects(16).RotateY 55

Dim IX As Integer
Dim IY As Integer
Dim INUM As Integer
INUM = 17
For IX = 1 To 6
For IY = 1 To 3
If Sqr((-1000 + (IX * 300)) ^ 2) > 400 Then
Set Objects(INUM) = Scene.CreateMeshBuilder
Objects(INUM).Load3DSMesh App.Path + "\Data\Room\Tree2.3ds", False, False, False, False, False
Objects(INUM).SetTexture GetTex("Tree2")
Objects(INUM).SetPosition -1000 + (IX * 300), 0, 100 + (IY * 150)
Objects(INUM).ScaleMesh 12, 12, 12
INUM = INUM + 1
End If
Next
Next

TextureFactory.LoadTexture App.Path + "\Data\Room\Grass7.bmp", "Grass7", , , TV_COLORKEY_BLACK
For IX = -30 To 30
Set Objects(INUM) = Scene.CreateMeshBuilder
Objects(INUM).AddWall GetTex("Grass7"), -8000, IX * 20, 8000, IX * 10, 100, -10, 100
Objects(INUM).SetColor RGBA(0.7, 0.7, 0.7, 0.5)
INUM = INUM + 1
Next
End Sub

Sub Mission2()
' get FULL version from
'   http://www.yazanmarkabi.jeeran.com/
End Sub

Sub Mission3()
' get FULL version from
'   http://www.yazanmarkabi.jeeran.com/
End Sub


Sub Land_Create(Optimize As Boolean, Global_Texture_File As String, Texture_Size As Single, Height_Map_File As String, Quietly_0_to_4 As Integer, Smooth As Boolean, Land_Size As Integer, Height As Single)
If Optimize = True Then
Scene.SetTextureFilter TV_FILTER_TRILINEAR
End If

TextureFactory.LoadTexture Global_Texture_File, "LandTxt"

Land.SetFactorY Height

If Smooth = False Then
Select Case Quietly_0_to_4
Case Is = 0
Land.GenerateHugeTerrain Height_Map_File, TV_PRECISION_VERY_LOW, Land_Size, Land_Size, 0, 0, True
Case Is = 1
Land.GenerateHugeTerrain Height_Map_File, TV_PRECISION_LOW, Land_Size, Land_Size, 0, 0, True
Case Is = 2
Land.GenerateHugeTerrain Height_Map_File, TV_PRECISION_AVERAGE, Land_Size, Land_Size, 0, 0, True
Case Is = 3
Land.GenerateHugeTerrain Height_Map_File, TV_PRECISION_HIGH, Land_Size, Land_Size, 0, 0, True
Case Is = 4
Land.GenerateHugeTerrain Height_Map_File, TV_PRECISION_BEST, Land_Size, Land_Size, 0, 0, True
End Select
Else
Select Case Quietly_0_to_4
Case Is = 0, 1, 2, 3
Land.GenerateHugeTerrain Height_Map_File, TV_PRECISION_ULTRA_LOW, Land_Size, Land_Size, 0, 0, True
Case Is = 4
Land.GenerateHugeTerrain Height_Map_File, TV_PRECISION_ULTRA, Land_Size, Land_Size, 0, 0, True
End Select
End If

Land.SetTexture GetTex("LandTxt")
Land.SetTextureScale Texture_Size, Texture_Size

Land.SetLandscapePosition -Land_Size * 100, 0, -Land_Size * 100

LandEnable = True
End Sub

Sub Land_Add_3D_Light(Light_Power As Single, Light_Color_Red As Single, Green As Single, Blue As Single, Sun_Lighting As Single, Direct_L_R_U_D_A As String)
Dim LandMat As Long
LandMat = MatFactory.CreateMaterial("Mat")
MatFactory.SetDiffuse LandMat, Light_Power, Light_Power, Light_Power, 1

MatFactory.SetAmbient LandMat, Light_Color_Red / 100, Green / 100, Blue / 100, 1
MatFactory.SetEmissive LandMat, Light_Color_Red / 100, Green / 100, Blue / 100, 1

MatFactory.SetPower LandMat, 0

Select Case Direct_L_R_U_D_A
Case Is = "U"
    LightEngine.CreateQuickDirectionalLight Vector(0, 0, -1), 1, 1, 1, "Light"
Case Is = "D"
    LightEngine.CreateQuickDirectionalLight Vector(0, 0, 1), 1, 1, 1, "Light"
Case Is = "R"
    LightEngine.CreateQuickDirectionalLight Vector(-1, 0, 0), 1, 1, 1, "Light"
Case Is = "L"
    LightEngine.CreateQuickDirectionalLight Vector(1, 0, 0), 1, 1, 1, "Light"
Case Is = "A"
    LightEngine.CreateQuickDirectionalLight Vector(0, -1, 0), 1, 1, 1, "Light"
End Select

Dim Light As D3DLIGHT8
    Light.Direction = Vector(1, -1, 1)
    Light.specular.r = Sun_Lighting
    Light.specular.g = Sun_Lighting
    Light.specular.b = Sun_Lighting
LightEngine.CreateLight Light

Land.SetMaterial LandMat
End Sub

Sub Land_Add_Detail(Detail_Texture_File As String, Detail_Size As Single, Detail_Mode_0_to_4 As Integer)
TextureFactory.LoadTexture Detail_Texture_File, "Detail"

Land.SetDetailTexture GetTex("Detail")
Land.SetDetailTextureScale Detail_Size, Detail_Size

Select Case Detail_Mode_0_to_4
Case Is = 0
Land.SetDetailTextureMode TV_DETAILMAP_SUBTRACT
Case Is = 1
Land.SetDetailTextureMode TV_DETAILMAP_ADD
Case Is = 2
Land.SetDetailTextureMode TV_DETAILMAP_ADDSIGNED
Case Is = 3
Land.SetDetailTextureMode TV_DETAILMAP_MODULATE
Case Is = 4
Land.SetDetailTextureMode TV_DETAILMAP_MODULATE2X
End Select
End Sub

Sub Land_Add_Water(Water_Altitude As Single, Hidden As Single, Moving As Boolean, Texture_File As String, Texture_Size As Single, Water_Mode_0_to_12 As Integer, Stretch As Single)
Land.SetWaterAltitude Water_Altitude

Select Case Water_Mode_0_to_12
Case Is = 0
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_SRCALPHA, D3DBLEND_SRCALPHA, True, Stretch
Case Is = 1
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_SRCALPHASAT, D3DBLEND_SRCALPHASAT, True, Stretch
Case Is = 2
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_SRCCOLOR, D3DBLEND_SRCCOLOR, True, Stretch
Case Is = 3
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_ZERO, D3DBLEND_ZERO, True, Stretch
Case Is = 4
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_ONE, D3DBLEND_ONE, True, Stretch
Case Is = 5
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_INVSRCCOLOR, D3DBLEND_INVSRCCOLOR, True, Stretch
Case Is = 6
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_INVSRCALPHA, D3DBLEND_INVSRCALPHA, True, Stretch
Case Is = 7
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_INVDESTCOLOR, D3DBLEND_INVDESTCOLOR, True, Stretch
Case Is = 8
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_INVDESTALPHA, D3DBLEND_INVDESTALPHA, True, Stretch
Case Is = 9
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_DESTCOLOR, D3DBLEND_DESTCOLOR, True, Stretch
Case Is = 10
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_DESTALPHA, D3DBLEND_DESTALPHA, True, Stretch
Case Is = 11
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_BOTHSRCALPHA, D3DBLEND_BOTHSRCALPHA, True, Stretch
Case Is = 12
Land.SetWaterEffect True, Hidden / 100, Moving, D3DBLEND_BOTHINVSRCALPHA, D3DBLEND_BOTHINVSRCALPHA, True, Stretch
End Select

Land.SetWaterEnable True
TextureFactory.LoadTexture Texture_File, "Water"
Land.SetWaterTexture GetTex("Water")
Land.SetWaterTextureScale Texture_Size

LandWaterEnable = True
End Sub

Sub Effect_Fade_In(Time_In_Second As Single)
EffectEngine.FadeIn Time_In_Second * 1000
End Sub

Sub Light_Rotate(Light_Number As Integer, Speed As Single)
LightEngine.SetLightDirection Light_Number, Vector(Cos(TV.TickCount / Speed), -1, Sin(TV.TickCount / Speed))
End Sub

Sub AddDM(Pos As D3DVECTOR)
If Int(Rnd * 10) > 4 Then
DmOh(DmOhFreeOne).SetPosition Pos.x, Pos.y - (Rnd * 50), Pos.z + (Rnd * 50)
Else
DmOh(DmOhFreeOne).SetPosition Pos.x, Pos.y + (Rnd * 50), Pos.z - (Rnd * 50)
End If
DmOhUsed(DmOhFreeOne) = True
DmOhAngl(DmOhFreeOne) = Rnd * 3
'DmOh(DmOhFreeOne).LookAtPoint Pos
'DmOh(DmOhFreeOne).RotateX 90 + Rad2Deg(DmOhAngl(DmOhFreeOne))
'DmOh(DmOhFreeOne).RotateY -90
DmOhFrame(DmOhFreeOne) = 0
Dim i As Integer
For i = 0 To 99
If DmOhUsed(i) = False Then
DmOhFreeOne = i
Exit For
End If
Next

End Sub

Sub RefDM()
Dim i As Integer
For i = 0 To 99
If DmOhUsed(i) = True Then
If DmOhFrame(i) < 100 Then
DmOhFrame(i) = DmOhFrame(i) + 1

DmOh(i).SetPosition DmOh(i).GetPosition.x + Cos(Rad2Deg(DmOhAngl(i))) * 1, DmOh(i).GetPosition.y - 1, DmOh(i).GetPosition.z

Else
DmOhUsed(i) = False
DmOhFrame(i) = 0
DmOh(i).SetPosition DmOh(i).GetPosition.x, Land.GetHeight(DmOh(i).GetPosition.x, DmOh(i).GetPosition.z) + 3, DmOh(i).GetPosition.z
End If
End If
Next
End Sub

