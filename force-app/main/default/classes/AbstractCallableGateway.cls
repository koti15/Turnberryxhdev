/** 
 * AbstractCallableGateway - base class for OmniStudio Remote Action entry points.
 * 
 * Implements both Callable (direct Apex-to-Apex) and VlocityOPenInterface(OmniStudio IP).
 * Subclasses provide the actionr egistry and optional domain key map - no other code needed.
 * 
 * USAGE:
 *   1. Extend this class to provide the basis for OMNI calls`
 *   2. getActionRegistry() - action name -> ICallableAction handler class name
 *   3. Override getDomainKeyMap() if any actions need named output keys instead of a just map merge
 *   4. Register the concrete subclass as the Remote Action class in the Integration Procedure or Remote Action
 * 
 * OUTPUT ROUTING (putResult):
 *  - If action has a domain key entry: result placed under that key
 *  - When the result is a map<string,object> and no domain key: merged into output
 *  - Otherwise it is placed under 'result'
 *  - If result is null, nothing written to output
 * 
 * TESTING
 *  Inject ICallableAction stubs via actionOverrides - avoids Type.forName() in tests and allows unit testing without deploying handler classes.
 * 
 */


public abstract with sharing class AbstractCallableGateway 
        implements callable,omnistudio.vlocityOpenInterface2 {
    
    @TestVisible 
        protected Map<string,ICallableAction> actionOverrides = new map<string,ICallableAction>();
    
        //    Subclass Contract -----------------------------

    /**
     * Return a map of action name -> ICallableAction handler class name.
     *  Class Names are resolved via Type.forName() at runtime
     */
    protected abstract map<string,string> getActionRegistry();

    /**
     * optionally return a map of action name and output key
     * when an action appears here, its result is placed under that key rather than merged into 
     * or appended to the output map.
     * Default Behavior: empty map
     */
    protected virtual map<string,string> getDomainKeyMap() {
        return new map<string,string>();
    }

    /**
     * Callable Interface
     *  Entry point for direct Apex-To_Apex calls and unit tests
     */
    public Object call(string action, map<string,Object> args){
        map<string,Object> input    = (map<string,Object>) args.get('input');
        map<string,Object> output   = (map<string,object>) args.get('output');
        map<string,Object> options  = (map<string,Object>) args.get('options');
        
        system.debug ('Returned data: ' + input);

        if(input == null )      {input = args;}
        if(output == null )     {output = new map<string,Object>();}
        if(options == null )    {options = new map<string,Object>();}

        return invokeMethod(action,input,output,options);
    }

    /** vlocityOpenInterface2
     * 
     * Entry point called by OmniStudio Remote Action Steps
     * populates the output map, which omnistudio reads back into working json
     * returns true on success, false on any exception (error key is set on output)
     */
    public Boolean invokeMethod( string methodName, map<string,Object> input, map<string,object> output, map<string, Object> options){
        
        try{
            if(actionOverrides.containsKey(methodName)){
                object result = actionOverrides.get(methodName).execute(input); 
                putResult(methodName, result, output);
                return true;
            }

            string handlerClass = getActionRegistry().get(methodName);
            System.debug ('HandlerClass: ' + handlerClass);
            if(handlerClass == null || String.isBlank(handlerClass)){
                throw new CallableGatewayexception('Unknown action: ' + methodName);
            }
            
            input.put('_action',methodName);
						System.debug('handlerClass'+handlerClass);
            ICallableAction handler = (IcallableAction) type.forName(handlerClass).newInstance();
            System.debug('Handler'+handler);
            Object result = handler.execute(input);
            putResult(methodName,result,output);
            return true;

        }
        catch (exception exc){
            output.put('error', exc.getMessage() + exc.getlinenumber());
            return false;
        }
    }

    /**
     * Private Helpers
     */
    private void putResult(string action,object result,map<string,Object> output) {
        if (result == null) return;

        string domainKey = getDomainKeyMap().get(action);
        if(domainKey != null) {
            output.put(domainKey,result);
        }else if (result instanceOf Map<string,Object>){
            output.putAll((map<string,object>) result);
        } else {
            output.put('result',result);
        }
    }

    public class CallableGatewayexception extends Exception{}
}