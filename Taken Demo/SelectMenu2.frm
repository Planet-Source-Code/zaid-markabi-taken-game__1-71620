VERSION 5.00
Begin VB.Form SelectMenu2 
   BackColor       =   &H00404040&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   11520
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   15360
   LinkTopic       =   "Form1"
   ScaleHeight     =   11520
   ScaleWidth      =   15360
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Exit Game"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   11
      Left            =   5760
      TabIndex        =   12
      Top             =   7920
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Exit to Windows !"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   10
      Left            =   5760
      TabIndex        =   11
      Top             =   8280
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Save and Quit Game"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   9
      Left            =   5760
      TabIndex        =   10
      Top             =   8640
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Bored Mode"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   8
      Left            =   5760
      TabIndex        =   9
      Top             =   9000
      Width           =   9135
   End
   Begin VB.Image Image3 
      Height          =   2340
      Left            =   720
      Picture         =   "SelectMenu2.frx":0000
      Top             =   7680
      Width           =   4740
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Hard Mode"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   7
      Left            =   5760
      TabIndex        =   8
      Top             =   6120
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Play and Open Unlocked Persons !"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   6
      Left            =   5760
      TabIndex        =   7
      Top             =   5760
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Arcaide Mode !"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   5
      Left            =   5760
      TabIndex        =   6
      Top             =   5400
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Player V.S Computer"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   4
      Left            =   5760
      TabIndex        =   5
      Top             =   5040
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Like, Free Playing"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   3
      Left            =   5760
      TabIndex        =   4
      Top             =   3240
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Can't Open Unlocked Persons !"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   2
      Left            =   5760
      TabIndex        =   3
      Top             =   2880
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Just Playing !"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   5760
      TabIndex        =   2
      Top             =   2520
      Width           =   9135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Player V.S Player"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   5760
      TabIndex        =   1
      Top             =   2160
      Width           =   9135
   End
   Begin VB.Image Image2 
      Height          =   2340
      Left            =   720
      Picture         =   "SelectMenu2.frx":241F2
      Top             =   4800
      Width           =   4740
   End
   Begin VB.Image Image1 
      Height          =   2340
      Left            =   720
      Picture         =   "SelectMenu2.frx":483E4
      Top             =   1920
      Width           =   4740
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Select Game Mode"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400000&
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   360
      Width           =   15375
   End
   Begin VB.Image BackGroundImg 
      Height          =   615
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   615
   End
End
Attribute VB_Name = "SelectMenu2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Show
BackGroundImg.Picture = LoadPicture(App.Path + "\Data\Icons\Back.jpg")
BackGroundImg.Width = Me.Width
BackGroundImg.Height = Me.Height
End Sub

Private Sub Image1_Click()
PlayerMode = "PP"
SelectMenu.Show
SelectMenu.Label2.Visible = True
Dim i As Integer
For i = 0 To 3
SelectMenu.PlayerF2(i).Visible = True
Next
SelectMenu.Image1.Picture = Image3.Picture
SelectMenu.Image2.Picture = Image1.Picture
Unload Me
End Sub

Private Sub Image2_Click()
PlayerMode = "PC"
SelectMenu.Show
SelectMenu.Image1.Picture = Image3.Picture
SelectMenu.Image2.Picture = Image2.Picture
Unload Me
End Sub

Private Sub Image3_Click()
End
End Sub
