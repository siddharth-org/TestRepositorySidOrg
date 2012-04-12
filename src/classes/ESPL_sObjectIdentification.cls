/*
    Dynamically inserts an SObject by populating values from the given field mapping metioned in 
    the Configuration.
*/

public class ESPL_sObjectIdentification {
    
    public String sobjectApiName{get; set;}
    
    //Constructor
    public ESPL_sObjectIdentification(String pSobjectApiName)
    {sobjectApiName = pSobjectApiName;}
    
    //Methods
    public void createRecord(){

        try{
            SobjectRecordCreator recordCreator = new SobjectRecordCreator();
            Database.Saveresult result = recordCreator.insertRecord(sobjectApiName);
        }
        catch(Exception e){
            System.debug('****** Exception: ' + e.getMessage());        
        }//catch
    }
    
}//ESPL_sObjectIdentification