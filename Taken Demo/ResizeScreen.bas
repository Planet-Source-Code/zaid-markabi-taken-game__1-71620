Attribute VB_Name = "ResizeScreen"
Public Const EWX_LOGOFF = 0
Public Const EWX_SHUTDOWN = 1
Public Const EWX_REBOOT = 2
Public Const EWX_FORCE = 4
Public Const CCDEVICENAME = 32
Public Const CCFORMNAME = 32
Public Const DM_BITSPERPEL = &H40000
Public Const DM_PELSWIDTH = &H80000
Public Const DM_PELSHEIGHT = &H100000
Public Const CDS_UPDATEREGISTRY = &H1
Public Const CDS_TEST = &H4
Public Const DISP_CHANGE_SUCCESSFUL = 0
Public Const DISP_CHANGE_RESTART = 1

Type typDevMODE
   dmDeviceName       As String * CCDEVICENAME
   dmSpecVersion      As Integer
   dmDriverVersion    As Integer
   dmSize             As Integer
   dmDriverExtra      As Integer
   dmFields           As Long
   dmOrientation      As Integer
   dmPaperSize        As Integer
   dmPaperLength      As Integer
   dmPaperWidth       As Integer
   dmScale            As Integer
   dmCopies           As Integer
   dmDefaultSource    As Integer
   dmPrintQuality     As Integer
   dmColor            As Integer
   dmDuplex           As Integer
   dmYResolution      As Integer
   dmTTOption         As Integer
   dmCollate          As Integer
   dmFormName         As String * CCFORMNAME
   dmUnusedPadding    As Integer
   dmBitsPerPel       As Integer
   dmPelsWidth        As Long
   dmPelsHeight       As Long
   dmDisplayFlags     As Long
   dmDisplayFrequency As Long
End Type

Declare Function EnumDisplaySettings Lib "user32" Alias "EnumDisplaySettingsA" (ByVal lpszDeviceName As Long, ByVal iModeNum As Long, lptypDevMode As Any) As Boolean
Declare Function ChangeDisplaySettings Lib "user32" Alias "ChangeDisplaySettingsA" (lptypDevMode As Any, ByVal dwFlags As Long) As Long
Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
