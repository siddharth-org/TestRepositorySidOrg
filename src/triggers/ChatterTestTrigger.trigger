/*
*   Standard Chatter Test Trigger 
*
*   Revision History:
*
*   Version         Author          Date            Description
*   1.0             Eternus         28/02/2011      Initial Draft
*/

trigger ChatterTestTrigger on ChatterTest__c (after delete, after insert, after undelete, 
                                              after update, before delete, before insert, 
                                              before update) {
	if(trigger.isAfter && trigger.isUpdate){
		System.debug('================ Execution of After Update Trigger ' );
	}
	                                              	
    if(trigger.isAfter && trigger.isInsert){
        List<PartnerNetworkRecordConnection> partnerNetRecConnList = new List<PartnerNetworkRecordConnection>(); 
        
        PartnerNetworkConnection objPartnerNetCon = [Select id 
                                                     from PartnerNetworkConnection 
                                                     where connectionStatus = 'Accepted' and 
                                                     connectionName = 'Eternus Solutions pvt. ltd.'];
                                                     
		System.debug('============== ' + trigger.new.size());                                                     
        for(ChatterTest__c objChatterTestToShare : trigger.new){
            PartnerNetworkRecordConnection newConnection = new PartnerNetworkRecordConnection(
                                                           ConnectionId = objPartnerNetCon.Id,
                                                           LocalRecordId = objChatterTestToShare.Id,
                                                           SendClosedTasks = false,
                                                           SendOpenTasks = false,
                                                           SendEmails = false);
            partnerNetRecConnList.add(newConnection);
        }
        insert partnerNetRecConnList;
        System.debug('====== RECORD CREATED');
        //ChatterCallOut_Batch objChatterCallOut = new ChatterCallOut_Batch();
        //database.executeBatch(objChatterCallOut,1);
    }
}