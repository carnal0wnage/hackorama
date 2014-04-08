<cfquery name="athleteQ" datasource="kebabdb" >
	select a.firstName, a.lastname, s.name as sport, a.id as aid, s.id as sid
	from Athlete a
	Inner Join Sport s ON a.sportid=s.id
	where s.id = #url.sportid#
</cfquery>



<h2>Our Brave <cfoutput>#athleteQ.sport#</cfoutput> Athletes!</h2>


<ul class="athlete-list">
	
<cfoutput query="athleteQ" >
<li>
	<b>#firstName# #lastName#</b><br/>
</li>

</cfoutput>
</ul>


