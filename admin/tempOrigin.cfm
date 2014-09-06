<cfset user = entityLoad("users"<!---, {userLogin="baba_dro", userPass=hash("baba_dro", "SHA-512")}--->)>
<cfdump var="#user#">

<!---
<cfif isArray(user)><cfdump var="#user[1]#" ></cfif><br>
<cfif ArrayLen(user) eq 2><cfoutput>#user[1].getUser_status()#</cfoutput></cfif><BR>
<cfoutput>#hash("fiola", "SHA-512" )#<br></cfoutput>
<cfset defineUser = entityLoadByPK("users", "1")>
<cfdump var="#defineUser#" >
<br>
<cfoutput >#defineUser.getDisplay_name()#
	
</cfoutput>
--->