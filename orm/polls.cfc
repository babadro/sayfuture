<cfcomponent persistent="true" table="poll">

    <cfproperty name="id" column="poll_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="date" column="pdate" sqltype="char(19)">
    <cfproperty name="dateGmt" column="pdate_gmt"  sqltype="char(19)">
    <cfproperty name="title" column="title" ormtype="string">
    <cfproperty name="conditions" column="conditions" ormtype="text">
    <cfproperty name="HashTag" column="hash_tag" ormtype="string">
    <cfproperty name="status" column="pstatus" ormtype="string">
    <cfproperty name="commentStatus" column="comment_status" ormtype="string">
    <cfproperty name="deadline" column="deadline"  sqltype="char(19)">
	<cfproperty name="modified" column="modified"  sqltype="char(19)">
	<cfproperty name="ModifiedGmt" column="modified_gmt"  sqltype="char(19)">
	
	
	
	<cfproperty name="Author" fieldtype="many-to-one" cfc="users" fkcolumn="author">
	<cfproperty name="Variants" fieldType="one-to-many" cfc="variants" fkcolumn="poll_id" inverse="true">
	
	<cfproperty name="pollParent" fieldtype="many-to-one" cfc="polls" fkcolumn="poll_id">
	<cfproperty name="postParent" fieldtype="many-to-one" cfc="posts" fkcolumn="post_id">
	<cfproperty name="pollChilds" fieldtype="one-to-many" cfc="polls" fkcolumn="poll_id" inverse="true" >
	
</cfcomponent>