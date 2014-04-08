component {
	
	this.appRoot = GetDirectoryFromPath( GetBaseTemplatePath() );
	this.mappings["/model"] = this.approot & 'model/';

	this.ormenabled = "true"; 
	this.ormsettings={
    		datasource="kebabdb"
			,dialect="MySQL"
			,dbcreate="update"
    		,cfcLocation="/model"
    		};
    			


	function onApplicationStart(){
		
		
	}
	
	function onRequestStart(){
		
		if( structKeyExists(url, "ormreload")){

		}
		
	}
	
	
	function onError(event){
		writeDump(event);
	}
	
	
}