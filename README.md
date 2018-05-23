# PS-Snippets
Various PowerShell snippets and cmdlet resources


### Search AD for locked out accounts

`` Search-ADAccount -LockedOut``

### Get all user properties from AD 

``Get-ADUser “username” –Properties *``

### Unlock AD User Account

``Unlock-ADAccount -Identity “username”``

### List file age in folder

``Get-ChildItem c:\path -File | Select-Object Name, *time``
