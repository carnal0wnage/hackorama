<cfparam name="form.sql" default="">


<cfinclude template="../_partials/top.cfm" >

<h1>Query a Database</h1>


<h2>SQL Statement to Execute</h2>
<div>
	<form method="post">
		
	<textarea name="sql" rows="10" cols="100" style="font-family:Courier New;font-size:1em" ><cfoutput>#form.sql#</cfoutput></textarea>
	<br/>
	<button type="submit">Execute SQL</button>
	</form>
</div>


<cfif len(form.sql)>
	
	<cftry>
	<cfquery name="result" datasource="kebabdb">
		#preserveSingleQuotes(sql)#
	</cfquery>
	
	<cfcatch type="database" >
		<cfset result = {Message=cfcatch.Message, sql=cfcatch.sQL}>
	</cfcatch>
	
	<cfcatch type="any" >
		<cfset result = {message=cfcatch.Message, details=cfcatch.Detail}>
	</cfcatch>
	
	</cftry>
	
	<h2>Query Results</h2>
	
	<cfdump var="#result#"> 
	
	<p><a href="/hackorama/sql">Clear Results</a>
	

<cfelse>
	
	
	<h2>Table Structure</h2>
	
	<p>The tables to query from are as follows:</p>
	
	<pre>
		Athlete
			-- id (autonumber / primary key)
			-- firstName (string)
			-- lastName (string)
			-- number (number)
			-- sportID (number / foreign key)
	
		Sport
			-- id (autonumber / primary key)
			-- name (string)
			-- description (string)				
		
	</pre>
	
</cfif>

<cfinclude template="../_partials/bottom.cfm" >