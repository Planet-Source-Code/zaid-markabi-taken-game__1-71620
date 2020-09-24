VERSION 5.00
Begin VB.Form Main 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5955
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8715
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   397
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   581
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer KickBP1 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   240
      Top             =   2040
   End
   Begin VB.Timer KickBP2 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   840
      Top             =   2040
   End
   Begin VB.PictureBox GM 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   5415
      Left            =   0
      ScaleHeight     =   361
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   545
      TabIndex        =   0
      Top             =   0
      Width           =   8175
      Begin VB.Timer ComputerMovements 
         Enabled         =   0   'False
         Interval        =   500
         Left            =   3600
         Top             =   240
      End
      Begin VB.Timer DmOhP 
         Enabled         =   0   'False
         Interval        =   1
         Left            =   2640
         Top             =   240
      End
      Begin VB.Timer StandP2 
         Interval        =   100
         Left            =   840
         Top             =   3600
      End
      Begin VB.Timer StandP1 
         Interval        =   100
         Left            =   240
         Top             =   3600
      End
      Begin VB.Timer SmackP2 
         Enabled         =   0   'False
         Interval        =   150
         Left            =   840
         Top             =   3000
      End
      Begin VB.Timer SmackP1 
         Enabled         =   0   'False
         Interval        =   150
         Left            =   240
         Top             =   3000
      End
      Begin VB.Timer FogTimer 
         Interval        =   100
         Left            =   2160
         Top             =   240
      End
      Begin VB.Timer DieP2 
         Enabled         =   0   'False
         Interval        =   1
         Left            =   840
         Top             =   2520
      End
      Begin VB.Timer DieP1 
         Enabled         =   0   'False
         Interval        =   1
         Left            =   240
         Top             =   2520
      End
      Begin VB.Timer WalkP2 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   840
         Top             =   1440
      End
      Begin VB.Timer WalkP1 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   240
         Top             =   1440
      End
      Begin VB.Timer KickP2 
         Enabled         =   0   'False
         Interval        =   200
         Left            =   840
         Top             =   840
      End
      Begin VB.Timer KickP1 
         Enabled         =   0   'False
         Interval        =   200
         Left            =   240
         Top             =   840
      End
      Begin VB.Timer JumpP2 
         Enabled         =   0   'False
         Interval        =   300
         Left            =   840
         Top             =   240
      End
      Begin VB.Timer JumpP1 
         Enabled         =   0   'False
         Interval        =   300
         Left            =   240
         Top             =   240
      End
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Programmed By [ Zaid Markabi ]
' ___________________________________________________________________________________________________
'|                                                                                                   |\_______________________
'|  ###############        ###         #####   ######                ######    #####                 |                        |\0 1 1 1 0 0 1 1 0 0 0 1 0 0 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 0 0 1 0 0 1 0 0 1
'| ##############         #####         ###     ##   ##               ######  #####                  |      Zaid Markabi      |=\ 1 0 0 1 0 0 0 0 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 1 0 0 0 0 0 1 1 0 1 0 0 0 1 1 1 0
'|         ####          ### ###        ###     ##    ##              ##  ## ##  ##                  |                        |==\0 0 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1
'|       ###            ###   ###       ###     ##     ##    #####    ##   ###   ##                  | zaidmarkabi@yahoo.com  |===\ 1 __________________________________  0 1 0 0 0 1 1 1 0 1 0 0 1 0 0 1 0 0 0 1
'|     ###             ###########      ###     ##     ##   ####      ##    #    ##                  |                        |====|>| Development For Our Digital Life | 1 1 0 0 1 1 1 0 1 0 0 1 0 0 0 1 1 0 1 0
'|   ###              #############     ###     ##    ##              ##         ##      A R K A B I | VisualBasic Programmer |===/ 1|__________________________________| 0 1 1 0 1 0 0 0 1 1 1 0 1 0 1 1 0 1 0 0
'| ##############    ###         ###    ###     ##   ##               ##         ##     ############ |                        |==/0 0 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1 0 0 1 1 1 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1
'| ###############   ###         ###   #####   ######                ####       ####   ### 2009 ###  |Syria(Arab Area)-Tartuse|=/ 1 0 0 1 0 0 0 0 0 1 1 0 1 0 0 0 1 1 1 0 1 0 0 1 0 0 0 0 0 1 1 0 1 0 0 0 1 1 1 0
'|                                                                                    ############   | _______________________|/0 1 1 1 0 0 1 1 0 0 0 1 0 0 1 0 0 1 0 0 1 1 1 1 0 0 1 1 0 0 0 1 0 0 1 0 0 1 0 0 1
'|___________________________________________________________________________________________________|/
' Em@il Me Please : zaidmarkabi@yahoo.com
' I hope to hear from you soon ,

' NOTICE :
' 1- The texture is 50% of original size in this demo.
' 2- You can get FULL version ( for free ) from :
'     http://www.yazanmarkabi.jeeran.com/
' 3- You can get last versions ( Taken 3 or later ) from the website..

Dim InputEngine As New TVInputEngine
Dim Player1 As New TVMesh
Dim Player2 As New TVMesh
Dim PlayerStat1 As String
Dim PlayerStat2 As String
Dim PlayerWalk1 As Integer
Dim PlayerWalk2 As Integer
Dim PlayerHP1 As Integer
Dim PlayerHP2 As Integer
Dim PlayerHPmax1 As Integer
Dim PlayerHPmax2 As Integer
Dim PlayerDieAng1 As Integer
Dim PlayerDieAng2 As Integer
Dim SkiNum As Integer
Dim Screen2D As New TVScreen2DImmediate
Dim ScreenText As New TVScreen2DText
Dim GameSpeed As Integer
Dim GameSpeedNum As Integer
Dim SmackFrame1 As Integer
Dim SmackFrame2 As Integer
Dim StandFrame1 As Integer
Dim StandFrame2 As Integer
Dim StandLoop1 As Boolean
Dim StandLoop2 As Boolean
Dim JumpWait1 As Integer
Dim JumpWait2 As Integer
Dim GameOver As Boolean
Dim DmOhStart As Boolean
Dim DmBlock(999) As New TVMesh
Dim DmBlockNum As Integer
Dim SmackDone1 As Boolean
Dim SmackDone2 As Boolean
Dim ControlLeft As Integer
Dim ControlLeft2 As Integer
Dim ControlRight As Integer
Dim ControlRight2 As Integer
Dim ControlJump As Integer
Dim ControlJump2 As Integer
Dim ControlJumpB As Integer
Dim ControlJumpB2 As Integer
Dim ControlSmack As Integer
Dim ControlSmack2 As Integer
Dim ControlKick As Integer
Dim ControlKick2 As Integer
Dim ControlKickB As Integer
Dim ControlKickB2 As Integer
Dim FogNum As Single

Private Sub ComputerMovements_Timer()
If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) > 0 Then
Player2.SetPosition Player2.GetPosition.x + 5, LandHei2, 0
End If
Select Case Int(Rnd * 10)
Case Is = 0 ' Jump
If JumpP2.Enabled = False Then
If JumpWait2 = 0 Then
Player2.SetPosition Player2.GetPosition.x, 20 + LandHei2, 0
PlayerStat2 = "Jump": Player2.SetTexture GetTex("Jump2"): JumpP2.Enabled = True
Else
If JumpWait2 > 0 Then: JumpWait2 = JumpWait2 - 1
End If
End If
Case Is = 1, 2, 3, 8 ' Kick
PlayerStat2 = "Kick": Player2.SetTexture GetTex("Kick2"): KickP2.Enabled = True
Case Is = 4, 5, 6, 9 ' KickB
PlayerStat2 = "KickB": Player2.SetTexture GetTex("KickB2"): KickBP2.Enabled = True
Case Is = 7 ' Smack
If SmackDone2 = False Then
SmackFrame2 = 0: SmackDone2 = True
PlayerStat2 = "Smack": Player2.SetTexture GetTex("Smack21"): SmackP2.Enabled = True
End If
End Select
End Sub

Private Sub DieP1_Timer()
PlayerDieAng1 = PlayerDieAng1 + 1
Player1.RotateZ -1
Player1.SetPosition Player1.GetPosition.x, (PlayerDieAng1 * 1.4) + LandHei1, 0
If PlayerDieAng1 = 90 Then
DieP1.Enabled = False
GameOver = True
End If
End Sub

Private Sub DieP2_Timer()
PlayerDieAng2 = PlayerDieAng2 + 1
Player2.RotateZ 1
Player2.SetPosition Player2.GetPosition.x, (PlayerDieAng2 * 1.4) + LandHei2, 0
If PlayerDieAng2 = 90 Then
DieP2.Enabled = False
GameOver = True
End If
End Sub

Private Sub DmOhP_Timer()
If DmOhStart = True And DmOh.GetPosition.y > 0 Then
DmOh.RotateZ 1
DmOhAngl = Rnd * 3
DmOh.SetPosition DmOh.GetPosition.x + Cos(Rad2Deg(DmOhAngl)) * 3, DmOh.GetPosition.y - 5, 0
Else
DmOh.SetPosition DmOh.GetPosition.x, -1000, 0
DmOhStart = False
DmOhP.Enabled = False
Set DmBlock(DmBlockNum) = Scene.CreateMeshBuilder
DmBlock(DmBlockNum).AddFloor GetTex("DmOh"), DmOh.GetPosition.x - 20, -20, DmOh.GetPosition.x + 20, 20, 1
DmBlockNum = DmBlockNum + 1
End If
End Sub

Private Sub FogTimer_Timer()
If Int(Rnd * 100) > FogMax Then
If FogNum < 0.01 Then
FogNum = FogNum + 0.0001
End If
Else
If FogNum > 0.00001 Then
FogNum = FogNum - 0.0001
End If
End If
Ski.Fog_SetParameters 1, 500, FogNum
SkiNum = SkiNum + 1
If SkiNum = 360 Then: SkiNum = 0
Ski.SkyBox_SetRotation 0, SkiNum, 0
End Sub

Private Sub Form_Load()
TV.Init3DWindowedMode GM.hWnd
ComputerMovements.Enabled = False
DoEvents
FogNum = 0.001
Set Player1 = Scene.CreateMeshBuilder
Set Player2 = Scene.CreateMeshBuilder
Set Room = Scene.CreateMeshBuilder
Dim i As Integer
For i = 0 To 99
Set DmOh(i) = Scene.CreateMeshBuilder
Next
TV.SetAngleSystem TV_ANGLE_DEGREE
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Stand1.png", "Stand1", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Stand1.png", "Stand2", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Stand2.png", "StandB1", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Stand2.png", "StandB2", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Stand3.png", "StandC1", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Stand3.png", "StandC2", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Jump.png", "Jump1", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Jump.png", "Jump2", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Kick.png", "Kick1", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Kick.png", "Kick2", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Walk1.png", "Walk11", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Stand1.png", "Walk12", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Walk2.png", "Walk13", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Walk1.png", "Walk21", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Stand1.png", "Walk22", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Walk2.png", "Walk23", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\KickB.png", "KickB1", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\KickB.png", "KickB2", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Die.png", "Die1", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Die.png", "Die2", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Smack1.png", "Smack11", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Smack2.png", "Smack12", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Smack3.png", "Smack13", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Smack4.png", "Smack14", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName1 + "\Smack5.png", "Smack15", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Smack1.png", "Smack21", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Smack2.png", "Smack22", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Smack3.png", "Smack23", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Smack4.png", "Smack24", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\" + PlayerName2 + "\Smack5.png", "Smack25", , , TV_COLORKEY_RED
TextureFactory.LoadTexture App.Path + "\Data\Room\snow.dds", "snow"
TextureFactory.LoadTexture App.Path + "\Data\Room\KO.png", "KO", , , TV_COLORKEY_BLACK
TextureFactory.LoadTexture App.Path + "\Data\Room\DmOh.png", "DmOh", , , TV_COLORKEY_BLACK
For i = 0 To 99
DmOh(i).AddWall GetTex("DmOh"), -10, 0, 10, 0, 20, -10
DmOh(i).SetPosition 0, -1000, 0
DmOh(i).ScaleMesh 0.3, 0.3, 0.3
DmOh(i).SetColor RGBA(1, 1, 1, 0.8)
Next
Call Mission1
Ski.SkyBox_Enable True
Ski.SkyBox_SetTexture GetTex("sky_back"), GetTex("sky_front"), GetTex("sky_left"), GetTex("sky_right"), GetTex("sky_top"), GetTex("sky_top")
PlayerWalk1 = 0
PlayerWalk2 = 0
SmackFrame1 = 0
SmackFrame2 = 0
PlayerDieAng1 = 0
PlayerDieAng2 = 0
SmackDone1 = False
SmackDone2 = False
DmOhStart = False
JumpWait1 = 0
JumpWait2 = 0
StandFrame1 = 0
StandFrame2 = 0
Dim X32 As String
Open App.Path + "\Data\" + PlayerName1 + "\Setting.txt" For Input As #1
Input #1, X32
Input #1, X32
PlayerHP1 = X32
Input #1, X32
Input #1, X32
PlayerHPmax1 = X32
Input #1, X32
Input #1, X32
WalkP1.Interval = X32
Input #1, X32
Input #1, X32
JumpP1.Interval = X32
Input #1, X32
Input #1, X32
KickP1.Interval = X32
Input #1, X32
Input #1, X32
KickBP1.Interval = X32
Input #1, X32
Input #1, X32
DieP1.Interval = X32
Input #1, X32
Input #1, X32
SmackP1.Interval = X32
Close #1
Open App.Path + "\Data\" + PlayerName2 + "\Setting.txt" For Input As #1
Input #1, X32
Input #1, X32
PlayerHP2 = X32
Input #1, X32
Input #1, X32
PlayerHPmax2 = X32
Input #1, X32
Input #1, X32
WalkP2.Interval = X32
Input #1, X32
Input #1, X32
JumpP2.Interval = X32
Input #1, X32
Input #1, X32
KickP2.Interval = X32
Input #1, X32
Input #1, X32
KickBP2.Interval = X32
Input #1, X32
Input #1, X32
DieP2.Interval = X32
Input #1, X32
Input #1, X32
SmackP2.Interval = X32
Close #1
PlayerStat1 = "Stand"
PlayerStat2 = "Stand"
Player1.AddWall GetTex("Stand1"), -160, 0, 160, 0, 240
Player1.SetPosition 120, LandHei1, 0
Player2.AddWall GetTex("Stand2"), 160, 0, -160, 0, 240
Player2.SetPosition -120, LandHei2, 0
Player1.SetColor RGBA(1, 1, 1, 1), False
Player2.SetColor RGBA(1, 1, 1, 1), False
ScreenText.NormalFont_Create "A", "Arial", 18, True, False, False
ScreenText.NormalFont_Create "B", "Arial", 24, True, True, False
Open App.Path + "\Data\Icons\Setting.txt" For Input As #1
Input #1, X32
Input #1, X32
Select Case X32
Case Is = "Easy": ComputerMovements.Interval = 1000
Case Is = "Normal": ComputerMovements.Interval = 500
Case Is = "Hard": ComputerMovements.Interval = 250
Case Is = "Very Hard": ComputerMovements.Interval = 1
End Select
Input #1, X32
Input #1, X32
ControlLeft = Int(X32)
Input #1, X32
ControlLeft2 = Int(X32)
Input #1, X32
ControlRight = Int(X32)
Input #1, X32
ControlRight2 = Int(X32)
Input #1, X32
ControlJump = Int(X32)
Input #1, X32
ControlJump2 = Int(X32)
Input #1, X32
ControlJumpB = Int(X32)
Input #1, X32
ControlJumpB2 = Int(X32)
Input #1, X32
ControlSmack = Int(X32)
Input #1, X32
ControlSmack2 = Int(X32)
Input #1, X32
ControlKick = Int(X32)
Input #1, X32
ControlKick2 = Int(X32)
Input #1, X32
ControlKickB = Int(X32)
Input #1, X32
ControlKickB2 = Int(X32)
Input #1, X32
GameSpeed = Int(X32)
Close #1
If PlayerMode = "PP" Then
ModePP.Hide
End If
Me.Show
GM.Height = Me.ScaleHeight + 40
GM.Width = Me.ScaleWidth
TV.ResizeDevice

If PlayerMode = "PC" Then
ComputerMovements.Enabled = True
End If

SmackDone1 = False
SmackDone2 = False
DmOhStart = False
GameOver = False

Do While GameOver = False
DoEvents

If PlayerMode = "PP" Then
If PlayerStat2 = "Stand" Then
If InputEngine.IsKeyPressed(ControlLeft2) = True Then
Player2.SetPosition Player2.GetPosition.x - 10, LandHei2, 0
PlayerWalk2 = PlayerWalk2 + 1
PlayerStat2 = "Walk": Player2.SetTexture GetTex("Walk2" + Format(PlayerWalk2)): WalkP2.Enabled = True
End If
If InputEngine.IsKeyPressed(ControlRight2) = True Then
Player2.SetPosition Player2.GetPosition.x + 10, LandHei2, 0
PlayerWalk2 = PlayerWalk2 + 1
PlayerStat2 = "Walk": Player2.SetTexture GetTex("Walk2" + Format(PlayerWalk2)): WalkP2.Enabled = True
End If
If JumpP2.Enabled = False Then
If InputEngine.IsKeyPressed(ControlJump2) = True And JumpWait2 = 0 Then
Player2.SetPosition Player2.GetPosition.x, 20 + LandHei2, 0
PlayerStat2 = "Jump": Player2.SetTexture GetTex("Jump2"): JumpP2.Enabled = True
Else
If JumpWait2 > 0 Then: JumpWait2 = JumpWait2 - 1
End If
If InputEngine.IsKeyPressed(ControlJumpB2) = True And JumpWait2 = 0 Then
Player2.SetPosition Player2.GetPosition.x + 50, 20 + LandHei2, 0
PlayerStat2 = "Jump": Player2.SetTexture GetTex("Jump2"): JumpP2.Enabled = True
Else
If JumpWait2 > 0 Then: JumpWait2 = JumpWait2 - 1
End If
If InputEngine.IsKeyPressed(ControlSmack2) = True And SmackDone2 = False Then
SmackFrame2 = 0: SmackDone2 = True
PlayerStat2 = "Smack": Player2.SetTexture GetTex("Smack21"): SmackP2.Enabled = True
End If
End If
If InputEngine.IsKeyPressed(ControlKick2) = True Then
PlayerStat2 = "Kick": Player2.SetTexture GetTex("Kick2"): KickP2.Enabled = True
End If
If InputEngine.IsKeyPressed(ControlKickB2) = True Then
PlayerStat2 = "KickB": Player2.SetTexture GetTex("KickB2"): KickBP2.Enabled = True
End If
End If

End If

If PlayerStat1 = "Stand" Then
If InputEngine.IsKeyPressed(ControlLeft) = True Then
Player1.SetPosition Player1.GetPosition.x - 10, LandHei1, 0
PlayerWalk1 = PlayerWalk1 + 1
PlayerStat1 = "Walk": Player1.SetTexture GetTex("Walk1" + Format(PlayerWalk1)): WalkP1.Enabled = True
End If
If InputEngine.IsKeyPressed(ControlRight) = True Then
Player1.SetPosition Player1.GetPosition.x + 10, LandHei1, 0
PlayerWalk1 = PlayerWalk1 + 1
PlayerStat1 = "Walk": Player1.SetTexture GetTex("Walk1" + Format(PlayerWalk1)): WalkP1.Enabled = True
End If
If JumpP1.Enabled = False Then
If InputEngine.IsKeyPressed(ControlJump) = True And JumpWait1 = 0 Then
Player1.SetPosition Player1.GetPosition.x, 20 + LandHei1, 0
PlayerStat1 = "Jump": Player1.SetTexture GetTex("Jump1"): JumpP1.Enabled = True
Else
If JumpWait1 > 0 Then: JumpWait1 = JumpWait1 - 1
End If
If InputEngine.IsKeyPressed(ControlJumpB) = True And JumpWait1 = 0 Then
Player1.SetPosition Player1.GetPosition.x - 50, 20 + LandHei1, 0
PlayerStat1 = "Jump": Player1.SetTexture GetTex("Jump1"): JumpP1.Enabled = True
Else
If JumpWait1 > 0 Then: JumpWait1 = JumpWait1 - 1
End If
If InputEngine.IsKeyPressed(ControlSmack) = True And SmackDone1 = False Then
SmackFrame1 = 0: SmackDone1 = True
PlayerStat1 = "Smack": Player1.SetTexture GetTex("Smack11"): SmackP1.Enabled = True
End If
End If
If InputEngine.IsKeyPressed(ControlKick) = True Then
PlayerStat1 = "Kick": Player1.SetTexture GetTex("Kick1"): KickP1.Enabled = True
End If
If InputEngine.IsKeyPressed(ControlKickB) = True Then
PlayerStat1 = "KickB": Player1.SetTexture GetTex("KickB1"): KickBP1.Enabled = True
End If
End If


If InputEngine.IsKeyPressed(TV_KEY_ESCAPE) = True Then
GameOver = True: End
End If

If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) < 35 Or Player2.GetPosition.x > Player1.GetPosition.x Then
Player1.SetPosition Player1.GetPosition.x + 1, Player1.GetPosition.y, 0
Player2.SetPosition Player2.GetPosition.x - 1, Player2.GetPosition.y, 0
End If

If Player1.GetPosition.x > CameraMaxFar Then
Player1.SetPosition Player1.GetPosition.x - 1, Player1.GetPosition.y, 0
End If
If Player2.GetPosition.x < -CameraMaxFar Then
Player2.SetPosition Player2.GetPosition.x + 1, Player2.GetPosition.y, 0
End If

If PlayerStat1 = "Kick" Then
If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) < 125 Or Player2.GetPosition.x > Player1.GetPosition.x Then
Player2.SetPosition Player2.GetPosition.x - 1, Player2.GetPosition.y, 0
PlayerHP2 = PlayerHP2 - 1
AddDM Vector(((Player1.GetPosition.x + Player2.GetPosition.x) \ 2) - 60, 180, 0)
End If
End If
If PlayerStat1 = "KickB" And Not PlayerStat2 = "Jump" And Not PlayerStat2 = "WaitJump" Then
If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) < 120 Or Player2.GetPosition.x > Player1.GetPosition.x Then
Player2.SetPosition Player2.GetPosition.x - 2, Player2.GetPosition.y, 0
PlayerHP2 = PlayerHP2 - 2
AddDM Vector(((Player1.GetPosition.x + Player2.GetPosition.x) \ 2) - 60, 180, 0)
End If
End If
If PlayerStat1 = "Smack" And Not PlayerStat2 = "Jump" And Not PlayerStat2 = "WaitJump" Then
If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) < 200 Or Player2.GetPosition.x > Player1.GetPosition.x Then
Player2.SetPosition Player2.GetPosition.x - 1, Player2.GetPosition.y, 0
PlayerHP2 = PlayerHP2 - 1
AddDM Vector(((Player1.GetPosition.x + Player2.GetPosition.x) \ 2) - 60, 180, 0)
End If
End If

If PlayerStat2 = "Kick" Then
If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) < 125 Then
Player1.SetPosition Player1.GetPosition.x + 1, Player1.GetPosition.y, 0
PlayerHP1 = PlayerHP1 - 1
AddDM Vector(((Player1.GetPosition.x + Player2.GetPosition.x) \ 2) + 60, 180, 0)
End If
End If
If PlayerStat2 = "KickB" And Not PlayerStat1 = "Jump" And Not PlayerStat1 = "WaitJump" Then
If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) < 120 Then
Player1.SetPosition Player1.GetPosition.x + 2, Player1.GetPosition.y, 0
PlayerHP1 = PlayerHP1 - 2
AddDM Vector(((Player1.GetPosition.x + Player2.GetPosition.x) \ 2) + 60, 180, 0)
End If
End If
If PlayerStat2 = "Smack" And Not PlayerStat1 = "Jump" And Not PlayerStat1 = "WaitJump" Then
If Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2) < 200 Then
Player1.SetPosition Player1.GetPosition.x + 1, Player1.GetPosition.y, 0
PlayerHP1 = PlayerHP1 - 1
AddDM Vector(((Player1.GetPosition.x + Player2.GetPosition.x) \ 2) + 60, 180, 0)
End If
End If

If PlayerHP1 < 1 Then
JumpP1.Enabled = False: JumpP2.Enabled = False
PlayerStat1 = "Die": Player1.SetTexture GetTex("Die1"): DieP1.Enabled = True
PlayerStat2 = "Wait"
End If
If PlayerHP2 < 1 Then
JumpP1.Enabled = False: JumpP2.Enabled = False
PlayerStat2 = "Die": Player2.SetTexture GetTex("Die2"): DieP2.Enabled = True
PlayerStat1 = "Wait"
End If

If Player1.GetPosition.y > Player2.GetPosition.y Then
Camera.SetCamera (Player1.GetPosition.x + Player2.GetPosition.x) / 2, 100 + (Player1.GetPosition.y / 1.3), -CameraFar + -100 - Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2), (Player1.GetPosition.x + Player2.GetPosition.x) / 2, 120 + (Player1.GetPosition.y / 1.3), 0 '-Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2)
Ski.Sun_SetPosition -100 - (Player1.GetPosition.x + Player2.GetPosition.x) / 2, 100 - (Player1.GetPosition.y / 10) + (CameraFar / 10), 100
Else
Camera.SetCamera (Player1.GetPosition.x + Player2.GetPosition.x) / 2, 100 + (Player2.GetPosition.y / 1.3), -CameraFar + -100 - Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2), (Player1.GetPosition.x + Player2.GetPosition.x) / 2, 120 + (Player2.GetPosition.y / 1.3), 0 '-Sqr((Player1.GetPosition.x - Player2.GetPosition.x) ^ 2)
Ski.Sun_SetPosition -100 - (Player1.GetPosition.x + Player2.GetPosition.x) / 2, 100 - (Player2.GetPosition.y / 10) + (CameraFar / 10), 100
End If
If CameraFar > 1 Then CameraFar = CameraFar - 9
If CameraFar < 0 Then CameraFar = CameraFar + 2

Call RefDM

If GameSpeedNum < GameSpeed Then
GameSpeedNum = GameSpeedNum + 1
Else
GameSpeedNum = 0
TV.Clear
If LandEnbl = True Then
Land.Render
Light_Rotate 1, 1000
LandHei1 = Land.GetHeight(Player1.GetPosition.x, Player1.GetPosition.z)
LandHei2 = Land.GetHeight(Player2.GetPosition.x, Player2.GetPosition.z)
End If
Scene.RenderAllMeshes
Ski.Atmosphere_Render
If Not PlayerStat1 = "Die" And Not PlayerStat2 = "Die" Then
Screen2D.ACTION_Begin2D
Screen2D.DRAW_FilledBox 10, 10, (((GM.Width / 2) - 20)) + 10, 30, RGBA(0.5, 0.5, 0.5, 0.5)
Screen2D.DRAW_FilledBox (GM.Width / 2) + 10 + (((GM.Width / 2) - 20) / 500), 10, GM.Width - 10, 30, RGBA(0.5, 0.5, 0.5, 0.5)
Screen2D.DRAW_FilledBox 10, 10, (((GM.Width / 2) - 20) * PlayerHP2 / PlayerHPmax2) + 10, 30, RGBA(1, 0, 0, 0.5)
Screen2D.DRAW_FilledBox (GM.Width / 2) + 10 + ((PlayerHPmax1 - PlayerHP1) * ((GM.Width / 2) - 20) / PlayerHPmax1), 10, GM.Width - 10, 30, RGBA(1, 0, 0, 0.5)
Screen2D.DRAW_Box 10, 10, (((GM.Width / 2) - 20)) + 10, 30, RGBA(0, 0, 1, 1)
Screen2D.DRAW_Box (GM.Width / 2) + 10 + (((GM.Width / 2) - 20) / 500), 10, GM.Width - 10, 30, RGBA(0, 0, 1, 1)
Screen2D.ACTION_End2D
ScreenText.ACTION_BeginText
ScreenText.NormalFont_DrawText PlayerName2, 15, 35, RGBA(1, 1, 0, 1), "A"
ScreenText.NormalFont_DrawText PlayerName1, (GM.Width / 2) + 25, 35, RGBA(1, 1, 0, 1), "A"
ScreenText.NormalFont_DrawText "DEMO Version", 15, 70, RGBA(1, 0, 0, 1), "B"
ScreenText.NormalFont_DrawText "Get Full Version From : http://www.yazanmarkabi.jeeran.com/", 15, 95, RGBA(0, 1, 0, 1), "B"
ScreenText.ACTION_EndText
Else
Screen2D.DRAW_TextureRotated GetTex("KO"), (GM.Width / 2), (GM.Height / 2), 200, 200, Rnd * 10
End If
TV.RenderToScreen
End If
Loop
Set TV = Nothing
Set Scene = Nothing
Set TextureFactory = Nothing
Set InputEngine = Nothing
Set Camera = Nothing
Set Player1 = Nothing
Set Player2 = Nothing
Set Room = Nothing
Set Ski = Nothing
Set Screen2D = Nothing
Set ScreenText = Nothing
For i = 0 To 99
Set DmOh(i) = Nothing
Next
If PlayerMode = "PP" Then
ModePP.Image1.Visible = False
ModePP.Label1.Visible = False
If PlayerHP1 < 1 Then
ModePP.PlayerImage1.Visible = False
ModePP.Win2.Visible = True
End If
If PlayerHP2 < 1 Then
ModePP.PlayerImage2.Visible = False
ModePP.Win1.Visible = True
End If
ModePP.Show
ModePP.Done.Enabled = True
Unload Me
End If

If PlayerMode = "PC" Then
ModePC.Image1.Visible = False
ModePC.Label1.Visible = False
If PlayerHP1 < 1 Then
ModePC.PlayerImage1.Visible = False
ModePC.Win2.Visible = True
ModePC.Lose.Enabled = True
ModePC.LoseLogo.Visible = True
End If
If PlayerHP2 < 1 Then
ModePC.PlayerImage2.Visible = False
ModePC.Win1.Visible = True
ModePC.Done.Enabled = True
End If
ModePC.Show
Unload Me
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
If GameOver = False Then
GameOver = True
Cancel = 1
End If
End Sub

Private Sub JumpP1_Timer()
If PlayerStat1 = "Jump" Then
If Player1.GetPosition.y < 240 Then
Player1.SetPosition Player1.GetPosition.x, Player1.GetPosition.y + 20, Player1.GetPosition.z
Else
PlayerStat1 = "WaitJump"
End If
End If
If PlayerStat1 = "WaitJump" Then
If Player1.GetPosition.y > 19 Then
Player1.SetPosition Player1.GetPosition.x, Player1.GetPosition.y - 20, Player1.GetPosition.z
Else
Player1.SetPosition Player1.GetPosition.x, LandHei1, 0
Player1.SetTexture GetTex("Stand1")
PlayerStat1 = "Stand"
JumpWait1 = 200
JumpP1.Enabled = False
End If
End If
End Sub

Private Sub JumpP2_Timer()
If PlayerStat2 = "Jump" Then
If Player2.GetPosition.y < 240 Then
Player2.SetPosition Player2.GetPosition.x, Player2.GetPosition.y + 20, Player2.GetPosition.z
Else
PlayerStat2 = "WaitJump"
End If
End If
If PlayerStat2 = "WaitJump" Then
If Player2.GetPosition.y > 19 Then
Player2.SetPosition Player2.GetPosition.x, Player2.GetPosition.y - 20, Player2.GetPosition.z
Else
Player2.SetPosition Player2.GetPosition.x, LandHei2, 0
Player2.SetTexture GetTex("Stand2")
PlayerStat2 = "Stand"
JumpWait2 = 200
JumpP2.Enabled = False
End If
End If
End Sub

Private Sub KickBP1_Timer()
If PlayerStat1 = "KickB" Then
PlayerStat1 = "WaitKickB"
Player1.SetPosition Player1.GetPosition.x, LandHei1, 0
Player1.SetTexture GetTex("Stand1")
Exit Sub
End If
If PlayerStat1 = "WaitKickB" Then
PlayerStat1 = "Stand"
JumpP1.Enabled = False
End If
End Sub

Private Sub KickBP2_Timer()
If PlayerStat2 = "KickB" Then
PlayerStat2 = "WaitKickB"
Player2.SetPosition Player2.GetPosition.x, LandHei2, 0
Player2.SetTexture GetTex("Stand2")
Exit Sub
End If
If PlayerStat2 = "WaitKickB" Then
PlayerStat2 = "Stand"
JumpP2.Enabled = False
End If
End Sub

Private Sub KickP1_Timer()
If PlayerStat1 = "Kick" Then
PlayerStat1 = "WaitKick"
Player1.SetPosition Player1.GetPosition.x, LandHei1, 0
Player1.SetTexture GetTex("Stand1")
Exit Sub
End If
If PlayerStat1 = "WaitKick" Then
PlayerStat1 = "Stand"
JumpP1.Enabled = False
End If
End Sub

Private Sub KickP2_Timer()
If PlayerStat2 = "Kick" Then
PlayerStat2 = "WaitKick"
Player2.SetPosition Player2.GetPosition.x, LandHei2, 0
Player2.SetTexture GetTex("Stand2")
Exit Sub
End If
If PlayerStat2 = "WaitKick" Then
PlayerStat2 = "Stand"
JumpP2.Enabled = False
End If
End Sub

Private Sub Timer1_Timer()

End Sub

Private Sub SmackP1_Timer()
If PlayerStat1 = "Smack" Then
If SmackFrame1 < 5 Then
SmackFrame1 = SmackFrame1 + 1
Player1.SetTexture GetTex("Smack1" + Format(SmackFrame1))
Exit Sub
Else
SmackFrame1 = 0
PlayerStat1 = "Stand"
Player1.SetTexture GetTex("Stand1")
SmackP1.Enabled = False
Exit Sub
End If
End If
End Sub

Private Sub SmackP2_Timer()
If PlayerStat2 = "Smack" Then
If SmackFrame2 < 5 Then
SmackFrame2 = SmackFrame2 + 1
Player2.SetTexture GetTex("Smack2" + Format(SmackFrame2))
Exit Sub
Else
SmackFrame2 = 0
PlayerStat2 = "Stand"
Player2.SetTexture GetTex("Stand2")
SmackP2.Enabled = False
Exit Sub
End If
End If
End Sub

Private Sub StandP1_Timer()
If PlayerStat1 = "Stand" Then
If StandLoop1 = False Then
StandFrame1 = StandFrame1 + 1
Select Case StandFrame1
Case Is = 4: StandFrame1 = 3: StandLoop1 = True
Case Is = 1: Player1.SetTexture GetTex("Stand1")
Case Is = 2: Player1.SetTexture GetTex("StandB1")
Case Is = 3: Player1.SetTexture GetTex("StandC1")
End Select
Else
StandFrame1 = StandFrame1 - 1
Select Case StandFrame1
Case Is = 0: StandFrame1 = 0: StandLoop1 = False
Case Is = 1: Player1.SetTexture GetTex("Stand1")
Case Is = 2: Player1.SetTexture GetTex("StandB1")
Case Is = 3: Player1.SetTexture GetTex("StandC1")
End Select
End If
End If
End Sub

Private Sub StandP2_Timer()
If PlayerStat2 = "Stand" Then
If StandLoop2 = False Then
StandFrame2 = StandFrame2 + 1
Select Case StandFrame2
Case Is = 4: StandFrame2 = 3: StandLoop2 = True
Case Is = 1: Player2.SetTexture GetTex("Stand2")
Case Is = 2: Player2.SetTexture GetTex("StandB2")
Case Is = 3: Player2.SetTexture GetTex("StandC2")
End Select
Else
StandFrame2 = StandFrame2 - 1
Select Case StandFrame2
Case Is = 0: StandFrame2 = 0: StandLoop2 = False
Case Is = 1: Player2.SetTexture GetTex("Stand2")
Case Is = 2: Player2.SetTexture GetTex("StandB2")
Case Is = 3: Player2.SetTexture GetTex("StandC2")
End Select
End If
End If
End Sub

Private Sub WalkP1_Timer()
If PlayerWalk1 > 2 Then
PlayerWalk1 = 0
Else
PlayerStat1 = "Stand"
WalkP1.Enabled = False
Player1.SetTexture GetTex("Stand1")
End If
End Sub

Private Sub WalkP2_Timer()
If PlayerWalk2 > 2 Then
PlayerWalk2 = 0
Else
PlayerStat2 = "Stand"
WalkP2.Enabled = False
Player2.SetTexture GetTex("Stand2")
End If
End Sub
