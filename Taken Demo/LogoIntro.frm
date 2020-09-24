VERSION 5.00
Begin VB.Form LogoIntro 
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
   Begin VB.Image Image1 
      Height          =   975
      Left            =   14280
      Picture         =   "LogoIntro.frx":0000
      Top             =   120
      Width           =   945
   End
   Begin VB.Image Image4 
      Height          =   1455
      Left            =   4680
      Top             =   7320
      Width           =   5175
   End
   Begin VB.Image Image3 
      Height          =   1455
      Left            =   5040
      Top             =   9120
      Width           =   4455
   End
   Begin VB.Image Image2 
      Height          =   1455
      Left            =   5520
      Top             =   5520
      Width           =   3615
   End
   Begin VB.Image BackGroundImg 
      Height          =   615
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   615
   End
End
Attribute VB_Name = "LogoIntro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Show
BackGroundImg.Picture = LoadPicture(App.Path + "\Data\Icons\Back2.jpg")
BackGroundImg.Width = Me.Width
BackGroundImg.Height = Me.Height
End Sub

Private Sub Image1_Click()
End
End Sub

Private Sub Image2_Click()
SelectMenu2.Show
Unload Me
End Sub

Private Sub Image3_Click()
Credits.Show
Unload Me
End Sub

Private Sub Image4_Click()
Options.Show
Unload Me
End Sub
