@IsTest
private class FeatureToggleEvalActionTest {
 @IsTest static void environmentFlagsAndUnknownKeys() {
  Map<String,Feature_Toggle__mdt> records = new Map<String,Feature_Toggle__mdt>{
   'mock' => new Feature_Toggle__mdt(Type__c='Dark Launch',SandboxToggle__c=true,ProdToggle__c=false),
   'release' => new Feature_Toggle__mdt(Type__c='Unsupported',SandboxToggle__c=true,ProdToggle__c=true)
  };
  Map<String,Object> sandboxResult=FeatureToggleEvalAction.evaluate(' mock, missing,release,,mock ',records,true);
  System.assertEquals(true,sandboxResult.get('mock'));
  System.assertEquals(false,sandboxResult.get('missing'));
  System.assertEquals(false,sandboxResult.get('release'));
  System.assertEquals(3,sandboxResult.size());
  System.assertEquals(false,FeatureToggleEvalAction.evaluate('mock',records,false).get('mock'));
  System.assertEquals(0,FeatureToggleEvalAction.evaluate(null,records,true).size());
  System.assertEquals(0,FeatureToggleEvalAction.evaluate('  ',records,true).size());
 }
 @IsTest static void gatewayResolvesRealHandler() {
  Map<String,Object> output=new Map<String,Object>();
  Boolean success=new FeatureGateway().invokeMethod('checkToggles',new Map<String,Object>{'featureKeys'=>'CS2050_UnknownToggle'},output,new Map<String,Object>());
  System.assertEquals(true,success,JSON.serialize(output));
  System.assertEquals(false,((Map<String,Object>)output.get('toggles')).get('CS2050_UnknownToggle'));
 }
}