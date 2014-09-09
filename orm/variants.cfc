<cfcomponent persistent="true" table="variant">

    <cfproperty name="id" column="variant_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="variantName" column="variant_name" ormtype="string">
    <cfproperty name="variantDescribe" column="variant_describe" ormtype="text">
    <cfproperty name="amountBet" column="amount_bet" ormtype="int">
    
	
	
	<cfproperty name="poll_id" fieldtype="many-to-one" cfc="polls" fkcolumn="poll_id">
	
	
</cfcomponent>