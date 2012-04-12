public class BRE_ShuntingYardCtl {
    
    //Default Constructor
    public BRE_ShuntingYardCtl(){
        operatorsMap.put('+','addition');
        operatorsMap.put('-','subraction');
        operatorsMap.put('*','multiplication');
        operatorsMap.put('/','division');
        operatorsMap.put('=','equal to');
        operatorsMap.put('!=','not equal to');
        operatorsMap.put('<','less than');
        operatorsMap.put('>','greater than');
        operatorsMap.put('<=','less than equal to');
        operatorsMap.put('>=','greater than equal to');
        operatorsMap.put('++','increment');
        operatorsMap.put('--','decrement');
        
        operatorStack.clear();
        operandStack.clear();
    }
    
    private Map<String,String> operatorsMap = new Map<String,String>();            //Map storing the various operators
    public BRE_Stack operatorStack = new BRE_Stack();
    public BRE_Stack operandStack = new BRE_Stack();
    public String expressionStr{get; set;}
    
    public void parse(){
    	//expressionStr = pStrExpression;
        List<String> literalsList = expressionStr.split('');
        for(Integer intIndex = 1; intIndex < literalsList.size(); intIndex++){
        	//if the character is operator
			if(operatorsMap.containsKey(literalsList[intIndex])){				
				if(operatorsMap.containsKey(literalsList[intIndex + 1])){
					operatorStack.push(literalsList[intIndex] + literalsList[intIndex + 1]);
					intIndex++;					
				}
				else
					operatorStack.push(literalsList[intIndex]);
			}
			
			//if the character is operand 
			if(!operatorsMap.containsKey(literalsList[intIndex]) && literalsList[intIndex] != ' '){
				if(intIndex == 1)
					operandStack.push(literalsList[intIndex]);
				if(!operatorsMap.containsKey(literalsList[intIndex - 1]) && literalsList[intIndex - 1] != ' '){
					String strPrevOprnd = operandStack.pop();			
					operandStack.push(strPrevOprnd + literalsList[intIndex]); 
				}
				else
					operandStack.push(literalsList[intIndex]);
			}
        }
		//Operators
		for(Integer i = 0; i < operatorStack.getSize(); i++){
			System.debug('Operator #' + (i + 1) + ' '  + operatorStack.pop());
		}
		for(Integer i = 0; i < operandStack.getSize(); i++){
			System.debug('Operand #' + (i + 1) + ' ' + operandStack.pop());
		}		
    }
}