<cfquery datasource="kebabdb" name="qSports" >
	select * from Sport
	order by name
</cfquery>

<cfif structKeyExists(url, "msg")>
	<p><cfoutput>#url.msg#</cfoutput></p>
</cfif>

<ul class="sport-list">
<cfoutput query="qSports">
	
	<li>
		<span class="sport-name">#name#</span>
		<div class="sport-action">
			[<a href="?action=edit&id=#id#">Edit</a>] [<a href="?action=delete&id=#id#">Delete</a>]			
		</div>		
	</li>	
	
</cfoutput>

</ul>	