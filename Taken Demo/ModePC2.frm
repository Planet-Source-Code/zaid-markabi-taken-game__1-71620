VERSION 5.00
Begin VB.Form ModePC2 
   BackColor       =   &H00404040&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   11520
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   15360
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11520
   ScaleWidth      =   15360
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer BattleDone 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   9120
      Top             =   6600
   End
   Begin VB.Timer NextBattle 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   8520
      Top             =   6120
   End
   Begin VB.Image Di 
      Height          =   735
      Index           =   3
      Left            =   10320
      Top             =   7560
      Width           =   735
   End
   Begin VB.Image Di 
      Height          =   735
      Index           =   2
      Left            =   8880
      Top             =   7560
      Width           =   735
   End
   Begin VB.Image Di 
      Height          =   735
      Index           =   1
      Left            =   7560
      Top             =   7560
      Width           =   735
   End
   Begin VB.Image Di 
      Height          =   735
      Index           =   0
      Left            =   6240
      Top             =   7560
      Width           =   735
   End
   Begin VB.Image Image3 
      Height          =   1515
      Left            =   12120
      Picture         =   "ModePC2.frx":0000
      Top             =   7680
      Visible         =   0   'False
      Width           =   1470
   End
   Begin VB.Label Label1 
      Caption         =   "wait"
      Height          =   255
      Index           =   3
      Left            =   10440
      TabIndex        =   3
      Top             =   9240
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "wait"
      Height          =   255
      Index           =   2
      Left            =   9120
      TabIndex        =   2
      Top             =   9240
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "wait"
      Height          =   255
      Index           =   1
      Left            =   7800
      TabIndex        =   1
      Top             =   9240
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "wait"
      Height          =   255
      Index           =   0
      Left            =   6480
      TabIndex        =   0
      Top             =   9240
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   2700
      Left            =   3240
      Picture         =   "ModePC2.frx":7070
      Top             =   4920
      Width           =   3495
   End
   Begin VB.Image Image1 
      Height          =   4455
      Left            =   360
      Top             =   360
      Width           =   3135
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   0
      Left            =   6480
      Stretch         =   -1  'True
      Tag             =   "Adrian"
      Top             =   7680
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   1
      Left            =   7800
      Stretch         =   -1  'True
      Tag             =   "Henry"
      Top             =   7680
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   2
      Left            =   9120
      Stretch         =   -1  'True
      Tag             =   "Yazan"
      Top             =   7680
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   3
      Left            =   10440
      Stretch         =   -1  'True
      Tag             =   "Zaid"
      Top             =   7680
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image BackGroundImg 
      Height          =   615
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   615
   End
End
Attribute VB_Name = "ModePC2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BattleDone_Timer()
On Error Resume Next
Unload Main
BattleDone.Enabled = False
Dim i As Integer
For i = 0 To 3
If Not PlayerF(i).Tag = "" Then
If Label1(i).Caption = "wait" Then
Label1(i).Caption = "done"
Exit For
End If
End If
Next
NextBattle.Enabled = True
End Sub

Private Sub Form_Load()
Me.Show
BackGroundImg.Picture = LoadPicture(App.Path + "\Data\Icons\Back.jpg")
BackGroundImg.Width = Me.Width
BackGroundImg.Height = Me.Height
Image1.Picture = LoadPicture(App.Path + "\Data\" + PlayerName1 + "\Face.Jpg")
If PlayerName1 = "Adrian" Then
PlayerF(0).Tag = "Adrian"
PlayerF(1).Tag = "Henry"
PlayerF(2).Tag = ""
PlayerF(3).Tag = ""
End If
If PlayerName1 = "Henry" Then
PlayerF(0).Tag = "Adrian"
PlayerF(1).Tag = "Henry"
PlayerF(2).Tag = "Yazan"
PlayerF(3).Tag = ""
End If
If PlayerName1 = "Yazan" Then
PlayerF(0).Tag = "Adrian"
PlayerF(1).Tag = "Henry"
PlayerF(2).Tag = "Yazan"
PlayerF(3).Tag = "Zaid"
End If
If PlayerName1 = "Zaid" Then
PlayerF(0).Tag = "Adrian"
PlayerF(1).Tag = "Henry"
PlayerF(2).Tag = "Yazan"
PlayerF(3).Tag = "Zaid"
End If

Dim i As Integer
For i = 0 To 3
If Not PlayerF(i).Tag = "" Then
PlayerF(i).Picture = LoadPicture(App.Path + "\Data\" + PlayerF(i).Tag + "\Face.Jpg")
PlayerF(i).Visible = True
End If
Next

NextBattle.Enabled = True
End Sub

Private Sub Label1_Change(Index As Integer)
If Label1(Index).Caption = "done" Then
Di(Index).Picture = Image3.Picture
End If
End Sub

Private Sub NextBattle_Timer()
On Error Resume Next
NextBattle.Enabled = False
Dim i As Integer
For i = 0 To 3
If Not PlayerF(i).Tag = "" Then
If Label1(i).Caption = "wait" Then
PlayerName2 = PlayerF(i).Tag
ModePC.Show
Me.Hide
Exit Sub
End If
End If
Next
' Save Unlocked
Dim UnlockedPlayer As String
Select Case PlayerName1
Case Is = "Adrian": UnlockedPlayer = "Henry"
Case Is = "Henry": UnlockedPlayer = "Yazan"
Case Is = "Yazan": UnlockedPlayer = "Zaid"
End Select
DoEvents
Name App.Path + "\Data\Icons\Locked.txt" As App.Path + "\Data\Icons\OldLocked.txt"
DoEvents
Dim X32 As String
Dim I32 As Integer
Dim I33 As Integer
Open App.Path + "\Data\Icons\OldLocked.txt" For Input As #1
Open App.Path + "\Data\Icons\Locked.txt" For Output As #2
Input #1, I32
Write #2, I32
For I33 = 1 To I32
Input #1, X32
If Not X32 = UnlockedPlayer Then
Write #2, X32
End If
Next
Write #2, "Locked"
Close #1
Close #2
DoEvents
Kill App.Path + "\Data\Icons\OldLocked.txt"
DoEvents
SelectMenu2.Show
Unload Me
End Sub
