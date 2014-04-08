<cfinclude template="../_partials/top.cfm" >


<cfparam name="url.action" default="list">

<cfswitch expression="#url.action#" >
	
	<cfcase value="edit" >
		<cfinclude template="_edit.cfm" >
	</cfcase>
	
	<cfcase value="save" >
		<cfinclude template="_save.cfm" >
	</cfcase>
	
	<cfcase value="delete" >
		<cfinclude template="_delete.cfm" >
	</cfcase>

	<cfcase value="list" >
		<cfinclude template="_list.cfm" >
	</cfcase>
	
	<cfcase value="athletes" >
		<cfinclude template="_athletes.cfm" >
	</cfcase>
	
	<cfdefaultcase>
		
		<cfif fileExists("#GetDirectoryFromPath( GetBaseTemplatePath() )##url.action#.cfm")>
			<cfinclude template="#url.action#.cfm" >
		<cfelse>
<cfoutput>
	<p>Sorry but #url.action# is not a valid request and "/Users/dummyhead/websites/careless/www/#url.action#" does not exist...</p>
	</cfoutput>		
		</cfif>
	</cfdefaultcase>	
	
</cfswitch>


	
<cfinclude template="../_partials/bottom.cfm" >
