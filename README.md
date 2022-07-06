# PS-AD-Non_Expiring_PW_Query

I created these 2 powershell queries with the most helpful switches I needed for a security project. This will help you query for a number of common security issues of non-expiring password accounts. 

1. AD Query Non Expiring.ps1 queries all active directory to find all accounts that are set to non-expiring.<BR>
    You will be required to change line 3 Export-csv to a path relevant to you.

2. AD Query OU Specific Non Expiring.ps1 queries a specific OU instead of your entire active directory<BR>
    You will be required to change the line 1 SearchBase parameter to include the specific OU you are wanting to query<BR>
    Ex. 'OU=ServiceAccounts,DC=YourCompany,DC=Local'<BR>
    You will also be required to change line 3 Export-csv to a path relevant to you.
 
The filters include:
DistinguishedName
Name
PasswordNeverExpires
PasswordLastSet
LastLogonDate
Enabled
AccountLockoutTime
LastBadPasswordAttempt
BadPwdCount
LockedOut
Description
