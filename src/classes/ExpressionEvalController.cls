public class ExpressionEvalController {
	
	//Property
	public String expression{get; set;}
	public String expressionResult{get; private set;}
	
	//Constructor
	public ExpressionEvalController(String pExpresssionToEvaluate){
		expression = pExpresssionToEvaluate;
	}
	
	//Methods
	/*	Performs a callout to an external .Net web service to compute the mathematical expression
	 *	and returns the result in a string format. 
	 */
	@future (callout = true) 
	public static void evaluate(String pExpresssionToEvaluate){
		String serviceResponse;
		try{
			BRE_WS.Service1Soap evaluatorSoapService = new BRE_WS.Service1Soap();
			evaluatorSoapService.timeout_x = 15000;
			serviceResponse = evaluatorSoapService.Evaluator(pExpresssionToEvaluate);
		}
		catch(Exception objException){
			serviceResponse = String.valueOf(objException);
		}
		System.debug('*********Webservice Response: ' + serviceResponse);
	}

}