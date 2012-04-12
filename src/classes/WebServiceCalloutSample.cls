/*
 *  This class is a sample program for making a callout to an external webservice.
 *
 */

public class WebServiceCalloutSample {
	
	public String webServiceResponse {get; set;}
	
	//Constructor
	public WebServiceCalloutSample()
	{}
	
	public void send(String pEndPointUrl){
		
		tempuriOrg.DNSSoap dns = new tempuriOrg.DNSSoap();
		
		dns.LicenseInfo = new IPLookupWS.LicenseInfo();
		dns.SubscriptionInfo = new IPLookupWS.SubscriptionInfo();
		
	  	dns.LicenseInfo.RegisteredUser = new IPLookupWS.RegisteredUser();
	  	dns.LicenseInfo.RegisteredUser.UserID = 'jigar.shah@eternussolutions.com';
	  	dns.LicenseInfo.RegisteredUser.Password = 'eternus@123';

	  	tempuriOrg.DNSInfo response = dns.DNSLookup(pEndPointUrl);
	  	System.debug('********Host Name: ' + response.HostName);
	  	System.debug('********Address List: ' + response.AddressList.string_x);
	  	System.debug('********Aliases: ' + response.Aliases.string_x);
	  	System.debug('********# of Remaining Hits: ' + dns.SubscriptionInfo.LicenseStatus);
	  	System.debug('********License Status: ' + dns.SubscriptionInfo.RemainingHits);
	}

}