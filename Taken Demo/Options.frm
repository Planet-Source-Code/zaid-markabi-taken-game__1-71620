VERSION 5.00
Begin VB.Form Options 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Options"
   ClientHeight    =   5400
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   8415
   Icon            =   "Options.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5400
   ScaleWidth      =   8415
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox GameSpeed 
      Height          =   315
      ItemData        =   "Options.frx":2CE2
      Left            =   2160
      List            =   "Options.frx":2CF8
      Style           =   2  'Dropdown List
      TabIndex        =   34
      Top             =   4080
      Width           =   1935
   End
   Begin VB.ComboBox ControlJumpB 
      Height          =   315
      ItemData        =   "Options.frx":2D11
      Left            =   2160
      List            =   "Options.frx":2D13
      Style           =   2  'Dropdown List
      TabIndex        =   31
      Top             =   3360
      Width           =   1935
   End
   Begin VB.ComboBox ControlJumpB2 
      Height          =   315
      ItemData        =   "Options.frx":2D15
      Left            =   6240
      List            =   "Options.frx":2D17
      Style           =   2  'Dropdown List
      TabIndex        =   30
      Top             =   3360
      Width           =   1935
   End
   Begin VB.ComboBox ControlSmack2 
      Height          =   315
      ItemData        =   "Options.frx":2D19
      Left            =   6240
      List            =   "Options.frx":2D1B
      Style           =   2  'Dropdown List
      TabIndex        =   28
      Top             =   3000
      Width           =   1935
   End
   Begin VB.ComboBox ControlKickB2 
      Height          =   315
      ItemData        =   "Options.frx":2D1D
      Left            =   6240
      List            =   "Options.frx":2D1F
      Style           =   2  'Dropdown List
      TabIndex        =   26
      Top             =   2640
      Width           =   1935
   End
   Begin VB.ComboBox ControlKick2 
      Height          =   315
      ItemData        =   "Options.frx":2D21
      Left            =   6240
      List            =   "Options.frx":2D23
      Style           =   2  'Dropdown List
      TabIndex        =   24
      Top             =   2280
      Width           =   1935
   End
   Begin VB.ComboBox ControlJump2 
      Height          =   315
      ItemData        =   "Options.frx":2D25
      Left            =   6240
      List            =   "Options.frx":2D27
      Style           =   2  'Dropdown List
      TabIndex        =   22
      Top             =   1920
      Width           =   1935
   End
   Begin VB.ComboBox ControlRight2 
      Height          =   315
      ItemData        =   "Options.frx":2D29
      Left            =   6240
      List            =   "Options.frx":2D2B
      Style           =   2  'Dropdown List
      TabIndex        =   20
      Top             =   1560
      Width           =   1935
   End
   Begin VB.ComboBox ControlLeft2 
      Height          =   315
      ItemData        =   "Options.frx":2D2D
      Left            =   6240
      List            =   "Options.frx":2D2F
      Style           =   2  'Dropdown List
      TabIndex        =   18
      Top             =   1200
      Width           =   1935
   End
   Begin VB.ComboBox ControlSmack 
      Height          =   315
      ItemData        =   "Options.frx":2D31
      Left            =   2160
      List            =   "Options.frx":2D33
      Style           =   2  'Dropdown List
      TabIndex        =   16
      Top             =   3000
      Width           =   1935
   End
   Begin VB.ComboBox ControlKickB 
      Height          =   315
      ItemData        =   "Options.frx":2D35
      Left            =   2160
      List            =   "Options.frx":2D37
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   2640
      Width           =   1935
   End
   Begin VB.ComboBox ControlKick 
      Height          =   315
      ItemData        =   "Options.frx":2D39
      Left            =   2160
      List            =   "Options.frx":2D3B
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   2280
      Width           =   1935
   End
   Begin VB.ComboBox ControlJump 
      Height          =   315
      ItemData        =   "Options.frx":2D3D
      Left            =   2160
      List            =   "Options.frx":2D3F
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   1920
      Width           =   1935
   End
   Begin VB.ComboBox ControlRight 
      Height          =   315
      ItemData        =   "Options.frx":2D41
      Left            =   2160
      List            =   "Options.frx":2D43
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   1560
      Width           =   1935
   End
   Begin VB.ComboBox ControlLeft 
      Height          =   315
      ItemData        =   "Options.frx":2D45
      Left            =   2160
      List            =   "Options.frx":2D47
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1200
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   240
      TabIndex        =   5
      Top             =   4680
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Save Changes"
      Height          =   495
      Left            =   6480
      TabIndex        =   4
      Top             =   4680
      Width           =   1695
   End
   Begin VB.ComboBox Difficulty 
      Height          =   315
      ItemData        =   "Options.frx":2D49
      Left            =   2160
      List            =   "Options.frx":2D59
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label4 
      BackColor       =   &H00808080&
      Caption         =   "Global Speed"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   36
      Top             =   3720
      Width           =   8175
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Game Speed :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   15
      Left            =   240
      TabIndex        =   35
      Top             =   4080
      Width           =   1410
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Jump Fw (P1) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   14
      Left            =   240
      TabIndex        =   33
      Top             =   3360
      Width           =   1500
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Jump Fw (P2) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   13
      Left            =   4320
      TabIndex        =   32
      Top             =   3360
      Width           =   1500
   End
   Begin VB.Line Line1 
      X1              =   4200
      X2              =   4200
      Y1              =   1200
      Y2              =   3600
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Smack (P2) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   12
      Left            =   4320
      TabIndex        =   29
      Top             =   3000
      Width           =   1290
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Kick B (P2) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   11
      Left            =   4320
      TabIndex        =   27
      Top             =   2640
      Width           =   1230
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Kick A (P2) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   10
      Left            =   4320
      TabIndex        =   25
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Jump (P2) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   9
      Left            =   4320
      TabIndex        =   23
      Top             =   1920
      Width           =   1140
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Walk to Right (P2) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   8
      Left            =   4320
      TabIndex        =   21
      Top             =   1560
      Width           =   1905
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Walk to Left (P2) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   7
      Left            =   4320
      TabIndex        =   19
      Top             =   1200
      Width           =   1755
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Smack (P1) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   6
      Left            =   240
      TabIndex        =   17
      Top             =   3000
      Width           =   1290
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Kick B (P1) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   5
      Left            =   240
      TabIndex        =   15
      Top             =   2640
      Width           =   1230
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Kick A (P1) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   4
      Left            =   240
      TabIndex        =   13
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Jump (P1) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   11
      Top             =   1920
      Width           =   1140
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Walk to Right (P1) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   9
      Top             =   1560
      Width           =   1905
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Walk to Left (P1) :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   7
      Top             =   1200
      Width           =   1755
   End
   Begin VB.Label Label3 
      BackColor       =   &H00808080&
      Caption         =   "Controls"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Width           =   8175
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Computer Speed :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   2
      Top             =   480
      Width           =   1785
   End
   Begin VB.Label Label1 
      BackColor       =   &H00808080&
      Caption         =   "Difficulty"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8175
   End
End
Attribute VB_Name = "Options"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Open App.Path + "\Data\Icons\Setting.txt" For Output As #1
Write #1, "Difficulty"
Write #1, Difficulty.Text
Write #1, "Control"
Write #1, Right(ControlLeft.List(ControlLeft.ListIndex), 2)
Write #1, Right(ControlLeft2.List(ControlLeft2.ListIndex), 2)
Write #1, Right(ControlRight.List(ControlRight.ListIndex), 2)
Write #1, Right(ControlRight2.List(ControlRight2.ListIndex), 2)
Write #1, Right(ControlJump.List(ControlJump.ListIndex), 2)
Write #1, Right(ControlJump2.List(ControlJump2.ListIndex), 2)
Write #1, Right(ControlJumpB.List(ControlJumpB.ListIndex), 2)
Write #1, Right(ControlJumpB2.List(ControlJumpB2.ListIndex), 2)
Write #1, Right(ControlSmack.List(ControlSmack.ListIndex), 2)
Write #1, Right(ControlSmack2.List(ControlSmack2.ListIndex), 2)
Write #1, Right(ControlKick.List(ControlKick.ListIndex), 2)
Write #1, Right(ControlKick2.List(ControlKick2.ListIndex), 2)
Write #1, Right(ControlKickB.List(ControlKickB.ListIndex), 2)
Write #1, Right(ControlKickB2.List(ControlKickB2.ListIndex), 2)
Write #1, Int(GameSpeed.Text)
Close #1
LogoIntro.Show
Unload Me
End Sub

Private Sub Command2_Click()
LogoIntro.Show
Unload Me
End Sub

Private Sub Form_Load()
Open App.Path + "\Data\Icons\Keys.txt" For Input As #1
For i = 1 To 26
Input #1, X32
ControlLeft.AddItem UCase(X32)
ControlLeft2.AddItem UCase(X32)
ControlRight.AddItem UCase(X32)
ControlRight2.AddItem UCase(X32)
ControlJump.AddItem UCase(X32)
ControlJump2.AddItem UCase(X32)
ControlJumpB.AddItem UCase(X32)
ControlJumpB2.AddItem UCase(X32)
ControlSmack.AddItem UCase(X32)
ControlSmack2.AddItem UCase(X32)
ControlKick.AddItem UCase(X32)
ControlKick2.AddItem UCase(X32)
ControlKickB.AddItem UCase(X32)
ControlKickB2.AddItem UCase(X32)
Next
Close #1
Open App.Path + "\Data\Icons\Setting.txt" For Input As #1
Input #1, X32
Input #1, X32
Difficulty.Text = X32
Input #1, X32
Input #1, X32
For i = 0 To ControlLeft.ListCount - 1
If Right(ControlLeft.List(i), 2) = X32 Then
ControlLeft.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlLeft2.ListCount - 1
If Right(ControlLeft2.List(i), 2) = X32 Then
ControlLeft2.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlRight.ListCount - 1
If Right(ControlRight.List(i), 2) = X32 Then
ControlRight.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlRight2.ListCount - 1
If Right(ControlRight2.List(i), 2) = X32 Then
ControlRight2.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlJump.ListCount - 1
If Right(ControlJump.List(i), 2) = X32 Then
ControlJump.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlJump2.ListCount - 1
If Right(ControlJump2.List(i), 2) = X32 Then
ControlJump2.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlJumpB.ListCount - 1
If Right(ControlJumpB.List(i), 2) = X32 Then
ControlJumpB.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlJumpB2.ListCount - 1
If Right(ControlJumpB2.List(i), 2) = X32 Then
ControlJumpB2.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlSmack.ListCount - 1
If Right(ControlSmack.List(i), 2) = X32 Then
ControlSmack.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlSmack2.ListCount - 1
If Right(ControlSmack2.List(i), 2) = X32 Then
ControlSmack2.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlKick.ListCount - 1
If Right(ControlKick.List(i), 2) = X32 Then
ControlKick.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlKick2.ListCount - 1
If Right(ControlKick2.List(i), 2) = X32 Then
ControlKick2.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlKickB.ListCount - 1
If Right(ControlKickB.List(i), 2) = X32 Then
ControlKickB.ListIndex = i
End If
Next
Input #1, X32
For i = 0 To ControlKickB2.ListCount - 1
If Right(ControlKickB2.List(i), 2) = X32 Then
ControlKickB2.ListIndex = i
End If
Next
Input #1, X32
GameSpeed.Text = X32
Close #1
End Sub

