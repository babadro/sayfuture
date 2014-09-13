<cfcomponent persistent="true" table="keyword">
	<cfproperty name="id" column="key_id" fieldtype="id" genererator="increment" >
	<cfproperty name="value" column="value" ormtype="string" >
	<cfproperty name="type" column="ktype" ormtype="string" >
	
	<cfproperty name="poll_id" fieldtype="many-to-one" cfc="poll" fkcolumn="poll_id">
	<cfproperty name="post_id" fieldtype="many-to-one" cfc="post" fkcolumn="post_id">
</cfcomponent>