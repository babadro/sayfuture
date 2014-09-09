<cfcomponent persistent="true" table="comment">
	<cfproperty name="id" column="comment_id" fieldtype="id" generator="increment" ormtype="int">
	<cfproperty name="author" column="author" ormtype="text">
	<cfproperty name="authorEmail" column="author_email" ormtype="string" >
	<cfproperty name="authorURL" column="author_url" ormtype="string" >
	<cfproperty name="author_ip" column="author_ip" ormtype="string" >
	<cfproperty name="date" column="cdate" sqltype="char(19)" >
	<cfproperty name="dateGMT" column="cdate_gmt" sqltype="char(19)" >
	<cfproperty name="content" column="content" ormtype="text" >
	<cfproperty name="karma" column="karma" ormtype="int" >
	<cfproperty name="approved" column="approved" ormtype="string" >
	<cfproperty name="agent" column="agent" ormtype="string" >
	<cfproperty name="type" column="ctype" ormtype="string" >
	
	
	
	
</cfcomponent>