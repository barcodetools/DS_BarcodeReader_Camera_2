VERSION 5.00
Object = "{AF302386-2145-4170-AE7F-B47EA0612CE9}#1.0#0"; "BarcodeReader.dll"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6090
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   ScaleHeight     =   6090
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "About"
      Height          =   495
      Left            =   5400
      TabIndex        =   4
      Top             =   5520
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   495
      Left            =   2280
      TabIndex        =   3
      Top             =   5520
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   5040
      Width           =   6975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start Video"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   5520
      Width           =   1575
   End
   Begin BarcodeReaderLibCtl.BarcodeDecoder BarcodeDecoder1 
      Height          =   4695
      Left            =   120
      OleObjectBlob   =   "Form1.frx":0000
      TabIndex        =   0
      Top             =   120
      Width           =   6975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BarcodeDecoder1_BarcodeIn(ByVal barcode As String)
    Text1.Text = barcode
End Sub

Private Sub Command1_Click()
    BarcodeDecoder1.ShowImage = True
    BarcodeDecoder1.BarcodeTypes = BarcodeDecoder1.BarcodeTypes Or &H10000000
    'Call BarcodeDecoder1.SetProperty("VideoDelayAfterDec", 500)
    'Call BarcodeDecoder1.SetProperty("VideoStretch", 1)
    'Call BarcodeDecoder1.SetProperty("VideoBeep", 0)
    'Call BarcodeDecoder1.VideoStart(0, 170, 120)
    Call BarcodeDecoder1.VideoStart(0, 0, 0)
End Sub

Private Sub Command2_Click()
    BarcodeDecoder1.VideoStop
End Sub

Private Sub Command3_Click()
    BarcodeDecoder1.AboutBox
End Sub
