<cfoutput>Это страница опросов</cfoutput>
<cfset polls = entityLoad("poll")>


<cfset pollsQuery = querynew("firstname,department, salary,active")>
<cfset queryaddrow(emps,10)>
<cfset querysetcell(emps,"firstname","Debra",1)>
<cfset querysetcell(emps,"department","Accounting",1)>

