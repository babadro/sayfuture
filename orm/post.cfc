<cfcomponent persistent="true" table="post">

    <cfproperty name="id" column="post_id" fieldType="id" generator="increment" ormtype="int">
    
    <cfproperty name="date" column="pdate" sqltype="char(19)">
    <cfproperty name="dateGmt" column="pdate_gmt"  sqltype="char(19)">
    <cfproperty name="content" column="content" ormtype="text">
    <cfproperty name="Title" column="title" ormtype="text">
    <cfproperty name="Excerpt" column="excerpt" ormtype="text">
    <cfproperty name="Status" column="pstatus" ormtype="string">
    <cfproperty name="commentStatus" column="comment_status" ormtype="string">
    <cfproperty name="pingStatus" column="ping_status" ormtype="string">
    <cfproperty name="Password" column="p_password" ormtype="string">
    <cfproperty name="pname" column="pname" ormtype="string" >
    <cfproperty name="toPing" column="to_ping" ormtype="text">
    <cfproperty name="pinged" column="pinged" ormtype="text" >
    <cfproperty name="Modified" column="modified"  sqltype="char(19)">
	<cfproperty name="ModifiedGmt" column="modified_gmt"  sqltype="char(19)">
	<cfproperty name="contentFiltered" column="content_filtered" ormtype="text" >
	<cfproperty name="guid" column="guid" ormtype="string" >
	<cfproperty name="menuOrder" column="menu_order" ormtype="int">
	<cfproperty name="Type" column="ptype" ormtype="string" >
	<cfproperty name="MimeType" column="mime_type" ormtype="string" >
	<cfproperty name="commentCount" column="comment_count" ormtype="int" >
	
	
	<cfproperty name="Author" fieldtype="many-to-one" cfc="site_user" fkcolumn="author">
	<cfproperty name="parentPoll" fieldtype="many-to-one" cfc="poll" fkcolumn="parent_poll">
	<cfproperty name="parentPost" fieldtype="many-to-one" cfc="post" fkcolumn="parent_post">
	
	<cfproperty name="childPosts" fieldtype="one-to-many" cfc="post" fkcolumn="parent_post" inverse="true" >
	<cfproperty name="childPolls" fieldtype="one-to-many" cfc="poll" fkcolumn="parent_post" inverse="true"> 
	<cfproperty name="comments" fieldtype="one-to-many" cfc="comment" fkcolumn="post_id" inverse="true">
	
	
</cfcomponent>