/*
*   Class used to transfer the Lead from one Org to Another 
*
*   Revision History:
*
*   Version         Author          Date            Description
*   1.0             Eternus         27/02/2011      Initial Draft
*/
public class LeadTransfer {
	public void transferLeads(List<Lead> listLeads){
		/*
		List<PartnerNetworkRecordConnection> partnerNetRecConnList = new List<PartnerNetworkRecordConnection>(); 
		
		PartnerNetworkConnection objPartnerNetCon = [Select id 
													 from PartnerNetworkConnection 
													 where connectionStatus = 'Accepted' and 
													 connectionName = 'Eternus Solutions pvt. ltd.'];
	
		for(Lead objLeadToShare : listLeads){
			PartnerNetworkRecordConnection newConnection = new PartnerNetworkRecordConnection(
														   ConnectionId = objPartnerNetCon.Id,
                        								   LocalRecordId = objLeadToShare.Id,
                        								   SendClosedTasks = false,
                        								   SendOpenTasks = false,
                        								   SendEmails = false);
			partnerNetRecConnList.add(newConnection);                        								   
		}
		insert partnerNetRecConnList;
		*/
	}
}