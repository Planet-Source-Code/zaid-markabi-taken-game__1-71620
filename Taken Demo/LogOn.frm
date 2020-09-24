VERSION 5.00
Begin VB.Form LogOn 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3120
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3120
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   2880
      Top             =   480
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   2415
      Left            =   0
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   0
      Width           =   3855
   End
End
Attribute VB_Name = "LogOn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim LnLg As String

Private Sub Form_Load()
Dim typDevM As typDevMODE
Dim lngResult As Long
Dim intAns    As Integer
lngResult = EnumDisplaySettings(0, 0, typDevM)
With typDevM
   .dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT
   .dmPelsWidth = 1024  ' (640,800,1024, etc)
   .dmPelsHeight = 768 ' (480,600,768, etc)
End With
lngResult = ChangeDisplaySettings(typDevM, CDS_TEST)
Select Case lngResult
   Case DISP_CHANGE_RESTART
       intAns = MsgBox("You must restart your computer to apply these changes." & _
           vbCrLf & vbCrLf & "Do you want to restart now?", _
           vbYesNo + vbSystemModal, "Screen Resolution")
       If intAns = vbYes Then Call ExitWindowsEx(EWX_REBOOT, 0)
   Case DISP_CHANGE_SUCCESSFUL
       Call ChangeDisplaySettings(typDevM, CDS_UPDATEREGISTRY)
       'MsgBox "Screen resolution changed", vbInformation, "Resolution Changed"
   Case Else
       MsgBox "Mode not supported", vbSystemModal, "Error"
End Select

Me.Show
Text1.Width = Me.Width
Text1.Height = Me.Height
Open App.Path + "\Data\Icons\Log On.txt" For Input As #1
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
On Error GoTo 1
Line Input #1, LnLg
Text1.Text = Text1.Text + LnLg + vbCrLf
Text1.SelStart = Len(Text1.Text) - 1
Exit Sub
1:
Close #1
Timer1.Enabled = False
LogoIntro.Show
Unload Me
End Sub
