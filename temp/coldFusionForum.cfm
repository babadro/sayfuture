<cfset myQuery = QueryNew("eBookID, title, downloadPage", "integer, varchar, varchar")>
<cfset newRow = QueryAddRow(MyQuery, 2)>
<cfset temp = QuerySetCell(myQuery, "eBookID", 100, 1)>
<cfset temp = QuerySetCell(myQuery, "title", "Round the world in 80 days", 1)>
<cfset temp = QuerySetCell(myQuery, "downloadPage", "page1.cfm", 1)>
<cfset temp = QuerySetCell(myQuery, "eBookID", 200, 2)>
<cfset temp = QuerySetCell(myQuery, "title", "The Hitchhiker's Guide To The Galaxy", 2)>
<cfset temp = QuerySetCell(myQuery, "downloadPage", "page2.cfm", 2)>
 
<cfform action = "#CGI.SCRIPT_NAME#">
<cfgrid name = "bookGrid" query = "MyQuery"  href="downloadPage" width="500">
        <cfgridcolumn name = "eBookID" header = "ID">
        <cfgridcolumn name = "title" header = "Book Title"  width="300">
        <cfgridcolumn name = "downloadPage" header = "Page"  width="100">
    </cfgrid>
    <br>
    <cfinput type="submit" name="sbmt" value="Submit">
</cfform>