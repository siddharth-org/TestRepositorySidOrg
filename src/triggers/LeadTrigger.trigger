/*
*   Standard Lead Trigger 
*
*   Revision History:
*
*   Version         Author          Date            Description
*   1.0             Eternus         27/02/2011      Initial Draft
*/

trigger LeadTrigger on Lead (after delete, after insert, after undelete, 
							 after update, before delete, before insert, 
							 before update) {
							 	
	LeadHandler objLeadHandler = new LeadHandler();
								 	
	if(trigger.isAfter){
		if(trigger.isDelete){

		}	
		if(trigger.isInsert){
			objLeadHandler.afterInsert(trigger.new);			
		}	
		if(trigger.isUnDelete){
			
		}
		if(trigger.isUpdate){
			
		}
	}	
	if(trigger.isBefore){
		if(trigger.isDelete){
			
		}	
		if(trigger.isInsert){
			
		}	
		if(trigger.isUpdate){
			
		}
	}
}