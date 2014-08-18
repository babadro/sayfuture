<cfset user = entityLoad("users", {login="baba_dro", pass=hash("baba_dro", "SHA-512")})>
<cfdump var="#user#" >
<cfoutput>#hash("Coleman", "SHA-512" )#</cfoutput>