<cfcomponent persistent="true" table="bid">

    <cfproperty name="bid_id" column="bet_id" fieldType="id" generator="increment" ormtype="int">
    <cfproperty name="bidPercent" column="bid_percent" ormtype="int">
    <cfproperty name="bidPoint" column="variant_describe" ormtype="text">
    <cfproperty name="amountBid" column="amount_bid" ormtype="int">
    
	
	<cfproperty name="variant_id" fieldtype="many-to-one" cfc="variants" fkcolumn="variant_id">
	<cfproperty name="user_id" fieldtype="many-to-one" cfc="users" fkcolumn="user_id">
	
	
</cfcomponent>