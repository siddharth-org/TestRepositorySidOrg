public class SobjectRecordCreator {
    
    //Constructor
    public SobjectRecordCreator()
    {}

    /* Dynamically creates an Sobject record dependng on the field mapping mentioned in the mapper 
       object. 
    */
    public Database.Saveresult insertRecord(String pSobjectApiName){
        
        //Map<String, Schema.Sobjecttype> SobjectMap = Schema.getGlobalDescribe();
        Schema.Sobjecttype sObjectToken = Schema.getGlobalDescribe().get(pSobjectApiName);
        
        if(sObjectToken <> NULL){
            System.debug('****** Object Type is: ' + pSobjectApiName);
            Sobject objSobjectInstance = Schema.getGlobalDescribe().get(pSobjectApiName).newSObject();
            
            //Field API Names would be populated from the Configuration Object
            objSobjectInstance.put('lastName', 'Test' + String.valueOf(Datetime.now()));                     
            
            Database.Saveresult insertResult = Database.insert(objSobjectInstance);
            return insertResult;                
        }//if
        return NULL;      
    }
    
    public void identifySobjectType(){
    	Sobject obj = this.getRecord();
    	System.debug('***********Object Type: ' + String.valueOf(obj.getSObjectType()));
    }
    
    private Sobject getRecord(){
    	//return new Account(Name = 'SampleAccount');
    	//return new Contact(LastName = 'SampleContact');
    	return new Test_Object__c();
    } 

}