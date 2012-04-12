/*
*	Feed Item Trigger
*	
*	
*
*
*/

trigger FeedItemTrigger on FeedItem (after delete, after insert, after undelete, 
									 after update, before delete, before insert, 
									 before update) {
	
	if(trigger.isBefore && trigger.isInsert){
		for(FeedItem f : trigger.new){
			System.debug('================== ');
			ChatterCallOut_Batch objChatterCallOut = new ChatterCallOut_Batch();
        	database.executeBatch(objChatterCallOut,1);
		}		
	}
	
}