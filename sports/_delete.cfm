<cfquery datasource="kebabdb" >
	delete from Sport where id = #url.id#
</cfquery>


<cflocation url="?msg=Sport has been deleted!" addtoken="false" >