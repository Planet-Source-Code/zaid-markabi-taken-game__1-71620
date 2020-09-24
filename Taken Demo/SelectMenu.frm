VERSION 5.00
Begin VB.Form SelectMenu 
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
   Begin VB.Image Image1 
      Height          =   2295
      Left            =   2280
      Top             =   8520
      Width           =   4695
   End
   Begin VB.Image Image2 
      Height          =   2295
      Left            =   2280
      Top             =   6000
      Width           =   4695
   End
   Begin VB.Image PlayerF2 
      Height          =   1455
      Index           =   3
      Left            =   4440
      Stretch         =   -1  'True
      Tag             =   "Zaid"
      Top             =   3720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image PlayerF2 
      Height          =   1455
      Index           =   2
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "Yazan"
      Top             =   3720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image PlayerF2 
      Height          =   1455
      Index           =   1
      Left            =   1800
      Stretch         =   -1  'True
      Tag             =   "Henry"
      Top             =   3720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image PlayerF2 
      Height          =   1455
      Index           =   0
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "Adrian"
      Top             =   3720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Select Player"
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
      TabIndex        =   1
      Top             =   2760
      Visible         =   0   'False
      Width           =   9375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Select Player"
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
      Top             =   240
      Width           =   9375
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   3
      Left            =   4440
      Stretch         =   -1  'True
      Tag             =   "Zaid"
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   2
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "Yazan"
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   1
      Left            =   1800
      Stretch         =   -1  'True
      Tag             =   "Henry"
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Image PlayerF 
      Height          =   1455
      Index           =   0
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "Adrian"
      Top             =   1200
      Width           =   1095
   End
   Begin VB.Image PlayerImage 
      Height          =   12000
      Left            =   9360
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6000
   End
   Begin VB.Image BackGroundImg 
      Height          =   615
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   615
   End
End
Attribute VB_Name = "SelectMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Show
BackGroundImg.Picture = LoadPicture(App.Path + "\Data\Icons\Back.jpg")
BackGroundImg.Width = Me.Width
BackGroundImg.Height = Me.Height
Dim i As Integer
For i = 0 To 3
PlayerF(i).Picture = LoadPicture(App.Path + "\Data\" + PlayerF(i).Tag + "\Face.Jpg")
PlayerF2(i).Picture = LoadPicture(App.Path + "\Data\" + PlayerF2(i).Tag + "\Face.Jpg")
Next
Call PlayerF_Click(0)
Call PlayerF2_Click(0)

Dim x As String
Dim i1 As Integer
Dim i2 As Integer
Open App.Path + "\Data\Icons\Locked.txt" For Input As #1
Input #1, i1
For i = 1 To i1
Input #1, x
For i2 = 0 To 3
If PlayerF(i2).Tag = x Then
PlayerF(i2).Enabled = False
PlayerF(i2).Picture = LoadPicture(App.Path + "\Data\Icons\Locked.jpg")
PlayerF2(i2).Enabled = False
PlayerF2(i2).Picture = LoadPicture(App.Path + "\Data\Icons\Locked.jpg")
End If
Next
Next
Close #1
End Sub

Private Sub Image1_Click()
SelectMenu2.Show
Unload Me
End Sub

Private Sub Image2_Click()
If PlayerMode = "PP" Then
ModePP.Show
Unload Me
End If
If PlayerMode = "PC" Then
ModePC2.Show
Unload Me
End If
End Sub

Private Sub PlayerF_Click(Index As Integer)
PlayerName1 = PlayerF(Index).Tag
PlayerImage.Picture = LoadPicture(App.Path + "\Data\" + PlayerF(Index).Tag + "\Form.Jpg")
Dim i As Integer
For i = 0 To 3
PlayerF(i).BorderStyle = 0
Next
PlayerF(Index).BorderStyle = 1
End Sub

Private Sub PlayerF2_Click(Index As Integer)
PlayerName2 = PlayerF2(Index).Tag
PlayerImage.Picture = LoadPicture(App.Path + "\Data\" + PlayerF2(Index).Tag + "\Form.Jpg")
Dim i As Integer
For i = 0 To 3
PlayerF2(i).BorderStyle = 0
Next
PlayerF2(Index).BorderStyle = 1
End Sub
