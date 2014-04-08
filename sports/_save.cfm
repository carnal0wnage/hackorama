<cfquery  datasource="kebabdb" >
	update Sport set name = '#form.name#' where id = #form.id#
</cfquery>


<cflocation url="?action=athletes&sportID=#form.id#&msg=Sport has been updated!" addtoken="false" >