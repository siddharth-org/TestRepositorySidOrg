public class BRE_Stack {
    
    private List<String> stackList = new List<String>();
    private Boolean IsEmpty;
    private Integer Size;
    
    //Properties    
    public Integer getSize(){
    	return this.stackList.size();
    }
    
    public Boolean getIsEmpty(){
        return IsEmpty = this.stackList.isEmpty() ? true : false; 
    }
        
    //Methods
    public Boolean isFirst(String pStr){
        if(pStr == this.stackList[0])
            return true;
        else
            return false; 
    }
    
    public Boolean isLast(String pStr){
        if(pStr == this.stackList[this.stackList.size() - 1])
            return true;
        else 
            return false;
    }

    public void push(String pStr){
        this.stackList.add(pStr);
    }

    public String pop(){
        if(!stackList.isEmpty())
            return this.stackList.remove(stackList.size() - 1);
        else
            return NULL;
    }
    
	//peek() method will return the top most value on the stack
  	//without removing it 
    public String peek(){  
    	return this.stackList[this.stackList.size() - 1];
    }
    
    public void clear(){
        this.stackList.clear();
    }
    
    //Test Methods
    public static testMethod void testSizeZero(){
    	BRE_Stack objStack = new BRE_Stack();
    	System.assertEquals(objStack.getSize(), 0); 
    }
    
    public static testMethod void testSizeNonZero(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	Integer intStackSize = objStack.getSize(); 
    	System.assert(intStackSize > 0);
    }
    
    public static testMethod void testStackEmpty(){
    	BRE_Stack objStack = new BRE_Stack();
    	System.assertEquals(objStack.getIsEmpty(), true);
    }
    
    public static testMethod void testStackNonEmpty(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	System.assertEquals(objStack.getIsEmpty(), false);
    }
    
    public static testMethod void testIsFirst(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	String strFirst = 'one';
    	Boolean blnIsFirst = objStack.isFirst(strFirst);
    	System.assertEquals(blnIsFirst, true);
    }
    public static testMethod void testIsNotFirst(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	String strFirst = 'two';
    	Boolean blnIsFirst = objStack.isFirst(strFirst);
    	System.assertEquals(blnIsFirst, false);    	
    }
    
    public static testMethod void testIsLast(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	String strLast = 'two';
    	Boolean blnIsLast = objStack.isLast(strLast);
    	System.assertEquals(blnIsLast, true);    	
    }
    
    public static testMethod void testIsNotLast(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	String strLast = 'one';
    	Boolean blnIsLast = objStack.isLast(strLast);
    	System.assertEquals(blnIsLast, false);    	
    }
    
    public static testMethod void testPeek1(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	Integer intSizeBeforePeek, intSizeAfterPeek;
    	intSizeBeforePeek = objStack.getSize();
    	String strPeek = objStack.peek();
    	intSizeAfterPeek = objStack.getSize();
    	System.assertEquals(intSizeBeforePeek, intSizeAfterPeek);
    }      
    
	public static testMethod void testPeek2(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	String strPeek = objStack.peek();
    	System.assertEquals(strPeek, 'two');
    }  
    
	public static testMethod void testPop1(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');
    	String strPop = objStack.pop();
    	System.assertEquals(strPop, 'two');
    }

	public static testMethod void testPop2(){
    	BRE_Stack objStack = new BRE_Stack();
    	String strPop = objStack.pop();
    	System.assertEquals(strPop, NULL);
    }    

	public static testMethod void testClear(){
    	BRE_Stack objStack = new BRE_Stack();
    	objStack.push('one');
    	objStack.push('two');    	
    	objStack.clear();
    	System.assertEquals(objStack.getSize(), 0);
    }    
}