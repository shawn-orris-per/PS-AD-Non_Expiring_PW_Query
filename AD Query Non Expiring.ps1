get-aduser -filter * -properties Name, PasswordNeverExpires, PasswordLastSet, LastLogonDate, AccountLockoutTime, LastBadPasswordAttempt, BadPwdCount, LockedOut, Description | 
where { $_.passwordNeverExpires -eq "true" } | 
Select-Object DistinguishedName,Name,PasswordNeverExpires,PasswordLastSet,LastLogonDate,Enabled,AccountLockoutTime,LastBadPasswordAttempt,BadPwdCount,LockedOut,Description |
Export-csv D:\ad_pw_never_expires.csv -NoTypeInformation