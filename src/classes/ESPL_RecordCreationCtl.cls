/*
*   The class is acting as a controller for ESPL_RecordCreation Page 
*   to update records dynamically
*
*/
public class ESPL_RecordCreationCtl {
    public void updateRecord(){
        String strObjectName = 'Contact';       //The object name to be updated
        String strFieldName = 'Title';          //The field name to be updated
        String strFieldValue = 'TestTitle';     //The value with which field has to be updated
        //String strField
        String strStatusMessage;
        
        try{
            sObject objUpdate = database.query('select ' + strFieldName + ' from ' + strObjectName + ' where LastName = \'test\' limit 1');
            System.debug('objUpdate ' + objUpdate);
            objUpdate.put(strFieldName, strFieldValue);
            update objUpdate;
            strStatusMessage = 'Reecord Updated Successfully';
        }
        catch(Exception e){
            strStatusMessage = e.getMessage();
        }
        finally{
            ApexPages.Message updateMessage = new ApexPages.Message(ApexPages.severity.CONFIRM, strStatusMessage);
            ApexPages.addMessage(updateMessage);            
        }
    } 
}