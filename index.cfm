<cfinclude template="_partials/top.cfm" >






<cfquery name="athleteQ" datasource="kebabdb" >
	select a.firstName, a.lastname, s.name as sport, a.id as aid, s.id as sid
	from Athlete a
	Inner Join Sport s ON a.sportid=s.id
	order by a.lastName, a.firstName
</cfquery>

<h2>All of our Athletes by Last Name</h2>


<ul class="athlete-list">
	
<cfoutput query="athleteQ" >
<li>
	<img src="css/i/profile.jpg" width="48" align="left" hspace="5">
	
	<b>#firstName# #lastName#</b><br/>
	<i><a href="sports/?action=athletes&sportid=#sid#">#sport#</a></i>
	
</li>

</cfoutput>

</ul>
        
 <cfinclude template="_partials/bottom.cfm" >

