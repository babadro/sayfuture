<cfcomponent persistent="true" table="poll">

    <cfproperty name="id" column="poll_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="date" column="pdate" sqltype="datetime">  
    <cfproperty name="dateutc" column="pdate_utc"  sqltype="datetime">
    <cfproperty name="title" column="title" ormtype="string">
    <cfproperty name="conditions" column="conditions" ormtype="text">
    <cfproperty name="HashTag" column="hash_tag" ormtype="string">
    <cfproperty name="status" column="pstatus" ormtype="string">
    <cfproperty name="commentStatus" column="comment_status" ormtype="string">
    <cfproperty name="deadline" column="deadline"  sqltype="datetime">
	<cfproperty name="modified" column="modified"  sqltype="datetime">
	<cfproperty name="modifiedutc" column="modified_utc"  sqltype="datetime">
	
	
	
	<cfproperty name="author" fieldtype="many-to-one" cfc="site_user" fkcolumn="author">
	
	<cfproperty name="parentPost" fieldtype="many-to-one" cfc="post" fkcolumn="parent_post">
	<cfproperty name="parentPoll" fieldtype="many-to-one" cfc="poll" fkcolumn="parent_poll">
	
	<cfproperty name="childPolls" fieldtype="one-to-many" cfc="poll" fkcolumn="parent_poll" inverse="true" >
	<cfproperty name="childPosts" fieldtype="one-to-many" cfc="post" fkcolumn="parent_poll" inverse="true" > 
	<cfproperty name="variants" fieldType="one-to-many" cfc="variant" fkcolumn="poll_id" inverse="true">
	<cfproperty name="comments" fieldtype="one-to-many" cfc="comment" fkcolumn="poll_id" inverse="true" >
	<cfproperty name="keywords" fieldtype="one-to-many" cfc="keyword" fkcolumn="poll_id" inverse="true" >
	
</cfcomponent>