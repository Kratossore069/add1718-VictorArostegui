#!/usr/bin/ruby

Dim network, group, user, maquina, fichero, FSO
Set network = CreateObject("WScript.Network")
Set FSO = CreateObject("Scripting.FileSystemObject")
Set fichero = FSO.OpenTextFile("c:\Listados\Equipos.txt",1)
usuarios = "usuario"
While Not fichero.AtEndOfStream
    maquina = fichero.ReadLine
    Set group = GetObject("WinNT://" & maquina & "/Administradores,group")
    For Each user In group.members
        If LCase(user.name) <> "administrador" `
        And LCase(user.name) <> "usuario" `
        And LCase(user.name) <> "domain admins" Then
            group.remove user.adspath
        End If
    Next
Wend
fichero.Close
Set FSO = Nothing
