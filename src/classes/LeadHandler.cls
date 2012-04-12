/*
*   Standard Lead Handler Class 
*
*   Revision History:
*
*   Version         Author          Date            Description
*   1.0             Eternus         27/02/2011      Initial Draft
*/

public class LeadHandler {
	
	public void afterDelete(){
		
	}
	public void afterInsert(List<Lead> listNewLeads){
		LeadTransfer objLeadTransfer = new LeadTransfer();
		objLeadTransfer.transferLeads(listNewLeads);
	}
	public void afterUpdate(){
		
	}
	public void afterUndelete(){
		
	}
	public void beforeDelete(){
		
	}
	public void beforeInsert(){
		
	}
	public void beforeUpdate(){
		
	}
}