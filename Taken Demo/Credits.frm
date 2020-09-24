VERSION 5.00
Begin VB.Form Credits 
   BackColor       =   &H00000000&
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
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   5535
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Credits.frx":0000
      Top             =   5880
      Width           =   15375
   End
   Begin VB.Image Image3 
      Height          =   975
      Left            =   14280
      Picture         =   "Credits.frx":00CB
      Top             =   120
      Width           =   945
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "http://Www.YazanMarkabi.Jeeran.coM"
      ForeColor       =   &H00808080&
      Height          =   195
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2820
   End
   Begin VB.Image Image2 
      Height          =   5055
      Left            =   840
      Picture         =   "Credits.frx":3B73
      Top             =   720
      Width           =   13500
   End
End
Attribute VB_Name = "Credits"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Image1_Click()
Label1_Click (0)
End Sub

Private Sub Image3_Click()
LogoIntro.Show
Unload Me
End Sub

Private Sub Label1_Click(Index As Integer)
Shell "RUNDLL32.EXE URL.DLL,FileProtocolHandler " + Label1(Index).Caption, vbNormalFocus
End Sub
