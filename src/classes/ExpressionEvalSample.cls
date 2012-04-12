public class ExpressionEvalSample {
	
	private String expression;
	
	public ExpressionEvalSample(){
		expression = '200 * 3';
		//expression = '200 * 3 + 500 - 24 / 6 * 2';
	}
	
	public void eval(){
		Double result = Double.valueOf(expression);
		System.debug('******Result: ' + result);
	}

}