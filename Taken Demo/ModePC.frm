VERSION 5.00
Begin VB.Form ModePC 
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
   Begin VB.Timer Lose 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   7680
      Top             =   2280
   End
   Begin VB.Timer Done 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   6840
      Top             =   2760
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   6840
      Top             =   1800
   End
   Begin VB.Image LoseLogo 
      Height          =   1965
      Left            =   1800
      Picture         =   "ModePC.frx":0000
      Top             =   8400
      Visible         =   0   'False
      Width           =   11550
   End
   Begin VB.Image Image1 
      Height          =   2700
      Left            =   5880
      Picture         =   "ModePC.frx":E180
      Top             =   4440
      Width           =   3495
   End
   Begin VB.Image Win1 
      Height          =   855
      Left            =   1320
      Top             =   3840
      Visible         =   0   'False
      Width           =   2295
   End
   Begin VB.Image Win2 
      Height          =   855
      Left            =   8400
      Top             =   3840
      Visible         =   0   'False
      Width           =   2295
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Loading ..."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   1185
   End
   Begin VB.Image Image2 
      Height          =   2685
      Left            =   4800
      Picture         =   "ModePC.frx":1254C
      Top             =   6360
      Visible         =   0   'False
      Width           =   5655
   End
   Begin VB.Image PlayerImage2 
      Height          =   12000
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6000
   End
   Begin VB.Image PlayerImage1 
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
Attribute VB_Name = "ModePC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Done_Timer()
Done.Enabled = False
ModePC2.Show
ModePC2.BattleDone.Enabled = True
Unload Me
End Sub

Private Sub Form_Load()
Me.Show
Win1.Picture = Image2.Picture
Win2.Picture = Image2.Picture
BackGroundImg.Picture = LoadPicture(App.Path + "\Data\Icons\Back.jpg")
BackGroundImg.Width = Me.Width
BackGroundImg.Height = Me.Height
PlayerImage1.Picture = LoadPicture(App.Path + "\Data\" + PlayerName1 + "\Form.Jpg")
PlayerImage2.Picture = LoadPicture(App.Path + "\Data\" + PlayerName2 + "\Form.Jpg")
Timer1.Enabled = True
End Sub

Private Sub Lose_Timer()
Done.Enabled = False
Unload ModePC2
SelectMenu2.Show
Unload Me
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
Timer1.Enabled = False
Label1.Visible = True
DoEvents
Main.Show
End Sub

