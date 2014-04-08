<cfif !isNumeric(url.id)>
	<p>Sorry, but <cfoutput>#url.id# is Not a numnber!</cfoutput></p>
<cfelse>
<cfquery name="qSport"  datasource="kebabdb" >
	select * 
	from Sport
	where id = #url.id#
</cfquery>
<h2>Edit <cfoutput>#qSport.name#</cfoutput></h2>
<form method="post" action="?action=save">
	<p>
		Name: <input type="text" name="name" value="<cfoutput>#qSport.name#</cfoutput>" size="65">
	</p>
	<p>
		<input type="hidden" name="id" value='<cfoutput>#qSport.id#</cfoutput>'>
		<input type="submit" value="Save">
	</p>
</form>	
</cfif>