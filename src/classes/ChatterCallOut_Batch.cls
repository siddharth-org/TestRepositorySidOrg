/*
*		Batch Class for making call out
*		
*		Version			Author			Date			Description
*		1.0				Siddharth		01/03/2012		Initial Draft
*/	
global class ChatterCallOut_Batch implements database.Batchable<sObject>, Database.AllowsCallouts{
	
	global ChatterCallOut_Batch(ID idFeedItem){
		
	}
	
	global database.Querylocator start(Database.BatchableContext BC){
		return database.getQueryLocator('select id from account limit 1');
	}
	
	global void execute(Database.BatchableContext BC, List<sObject> scope){
		
	}
	
	global void finish(Database.BatchableContext BC){
		
	}
	
}