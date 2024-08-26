public class fetchComponents {

  @InvocableMethod(label='Fetch Components' description='This is used to fetch components' category='EmployeeWish__c')
    public static List<List<String>> addComponents(List<InputResource> inputs)
    {
       // List<List<EmployeeWish__c>> aList= new List<List<EmployeeWish__c>>();
        List<EmployeeWish__c> empSingle= new List<EmployeeWish__c>();
        List<InputResource> eList =inputs;
        List<List<String>> returnVar = new List<List<String>>();
        String teamName1= eList[0].teamName;
        System.debug('testcard0.1 '+eList[0].IsTest);
        System.debug('testcard0.2 '+eList[0].MetaDataApiType);
        System.debug('testcard0 '+teamName1);
        System.debug('testcard1 '+eList);
        if(eList[0].IsconsolidatePackage == false)
        {
             empSingle   =  [SELECT Id, Name, Enter_Your_Components__c, ApexClass__c FROM EmployeeWish__c Where Name =: teamName1 LIMIT 1];
         String empSingle2 =String.isNotBlank(empSingle[0].Enter_Your_Components__c) ? empSingle[0].Enter_Your_Components__c :'';
         String empSingle_APEX =String.isNotBlank(empSingle[0].ApexClass__c) ? empSingle[0].ApexClass__c :'';
          System.debug('testcard2.1LWC '+empSingle2);
          System.debug('testcard2.1Apex '+empSingle_APEX); 
          System.debug('testcard2.2' +eList[0].EnterYourComponents);
         Set<String> lstIQCodes_List= new Set<String>();
         Set<String> lstIQCodes2_List= new Set<String>();
          Set<String> lstIQCodes2_ListUIApex= new Set<String>();
        Set<String> lstIQCodes2_ListUILWC= new Set<String>();
         String[] lstIQCodes = eList[0].EnterYourComponents.replaceAll('\\s+','').split('</members>');
         String[] lstIQCodes2 = empSingle2.replaceAll('\\s+','').split('</members>');
         String[] lstIQCodes2_APEX = empSingle_APEX.replaceAll('\\s+','').split('</members>');
         System.debug('testcard2.3' +lstIQCodes);
         System.debug('testcard2.4' +lstIQCodes2);  
         System.debug('testcard2.5' +lstIQCodes2_APEX); 
         
        for(String s : lstIQCodes2)
        {
            if(String.isNotBlank(s))
            {
                String b = s+'</members>'; 
              lstIQCodes2_List.add(b); 
              lstIQCodes2_ListUILWC.add(b);  
            }
           
        }
         for(String s : lstIQCodes2_APEX)
        {
            if(String.isNotBlank(s))
            {
                String b = s+'</members>'; 
                lstIQCodes2_List.add(b); 
                lstIQCodes2_ListUIApex.add(b);
            }
           
        }
        
          for(String s : lstIQCodes)
        {
            String a = s+'</members>';
             if(lstIQCodes2_List.Contains(a))
            {            
            }
            else
            {
                    lstIQCodes_List.add(a);    
            }      
        } 
        
         System.debug('testcard2.5' +lstIQCodes_List);
         System.debug('testcard2.6' +lstIQCodes2_List); 
             Set<String> NoDuplicateList= new Set<String>();
        Set<String> DuplicateList= new Set<String>();
        
         if(eList[0].IsTest == false && eList[0].IsconsolidatePackage == false)
         {
              System.debug('falsesssss');
              List<String> lStrings = new List<String>(lstIQCodes_List);
              returnVar.add(lStrings);
            System.debug('testcard4.1' +lStrings);
         }
        else
        {
             System.debug('trueeeeee');
             List<String> FinalList = new List<String>();
            
            if((eList[0].MetaDataApiType == 'ApexClass' || eList[0].MetaDataApiType == 'LightningComponentBundle') && eList[0].isDeleteData == false && eList[0].IsconsolidatePackage == false)
            {
                if(lstIQCodes2_ListUIApex.size()>0)
                {

                    lstIQCodes2_ListUIApex.add('<name>ApexClass</name>');
                    lstIQCodes2_ListUIApex.add('</types>');
                    List<String> lStrings = new List<String>(lstIQCodes2_ListUIApex);        
                    FinalList.addALL(lStrings);
                }
                 
              if(lstIQCodes2_ListUILWC.size()>0)
              {
                     lstIQCodes2_ListUILWC.add('<name>LightningComponentBundle</name>');
                     lstIQCodes2_ListUILWC.add('</types>');
                     List<String> lStrings2 = new List<String>(lstIQCodes2_ListUILWC);
                     FinalList.addALL(lStrings2); 
              }
                 returnVar.add(FinalList);
                 System.debug('testcard4.2' +FinalList);
            }
            else if(eList[0].isDeleteData == true && eList[0].IsconsolidatePackage == false)
            {
                lstIQCodes_List.Clear();
               List<String> lStrings3 = new List<String>(lstIQCodes_List);
                FinalList.addALL(lStrings3);
                 returnVar.add(FinalList);
                System.debug('After delete' +FinalList);
            }
        }
        
        }// else block end
        else if(eList[0].IsconsolidatePackage == true)
            {
                 Set<String> ApexList= new Set<String>();
                 Set<String> LWCList= new Set<String>();
                Set<String> ApexList_FinalList= new Set<String>();
                Set<String> LWCList_FinalList= new Set<String>();
                List<EmployeeWish__c> con1= new List<EmployeeWish__c>();
                List<EmployeeWish__c> con2= new List<EmployeeWish__c>();
                List<EmployeeWish__c> con3= new List<EmployeeWish__c>();
                List<String> Con_FinalList = new List<String>();
                System.debug('label names '+ System.Label.PhoenixLabel);
    con1 =  [SELECT Id, Name, Enter_Your_Components__c, ApexClass__c FROM EmployeeWish__c Where Name =:System.Label.PhoenixLabel LIMIT 1];
	
         String con1_LWC =String.isNotBlank(con1[0].Enter_Your_Components__c) ? con1[0].Enter_Your_Components__c :'';
         String con1_Apex =String.isNotBlank(con1[0].ApexClass__c) ? con1[0].ApexClass__c :'';
		 String[] con1_SepLWC = con1_LWC.replaceAll('\\s+','').split('</members>');
         String[] con1_SepAPEX = con1_Apex.replaceAll('\\s+','').split('</members>'); 
		 
    con2 =  [SELECT Id, Name, Enter_Your_Components__c, ApexClass__c FROM EmployeeWish__c Where Name =:System.Label.GalaxyLabel LIMIT 1];
	
         String con2_LWC =String.isNotBlank(con2[0].Enter_Your_Components__c) ? con2[0].Enter_Your_Components__c :'';
         String con2_Apex =String.isNotBlank(con2[0].ApexClass__c) ? con2[0].ApexClass__c :'';
		 String[] con2_SepLWC = con2_LWC.replaceAll('\\s+','').split('</members>');
         String[] con2_SepAPEX = con2_Apex.replaceAll('\\s+','').split('</members>'); 
                
    con3 =  [SELECT Id, Name, Enter_Your_Components__c, ApexClass__c FROM EmployeeWish__c Where Name =:System.Label.EaglesLabel LIMIT 1];
	
         String con3_LWC =String.isNotBlank(con3[0].Enter_Your_Components__c) ? con3[0].Enter_Your_Components__c :'';
         String con3_Apex =String.isNotBlank(con3[0].ApexClass__c) ? con3[0].ApexClass__c :'';
		 String[] con3_SepLWC = con3_LWC.replaceAll('\\s+','').split('</members>');
         String[] con3_SepAPEX = con3_Apex.replaceAll('\\s+','').split('</members>'); 
		 
	ApexList.addALL(con1_SepAPEX);
	ApexList.addALL(con2_SepAPEX);
	ApexList.addALL(con3_SepAPEX);

    LWCList.addALL(con1_SepLWC);
	LWCList.addALL(con2_SepLWC);
	LWCList.addALL(con3_SepLWC);

       for(String a : ApexList)
        {
            if(String.isNotBlank(a))
            {
                String b = a+'</members>'; 
              ApexList_FinalList.add(b);  
              
            }
           
        }
		
	   for(String s : LWCList)
        {
            if(String.isNotBlank(s))
            {
                String b = s+'</members>'; 
              LWCList_FinalList.add(b); 
              
            }      
        }
                
                 if(LWCList_FinalList.size()>0)
                 {
                      LWCList_FinalList.add('<name>LightningComponentBundle</name>');
                     LWCList_FinalList.add('</types>');
                   List<String> conLWC_lStrings = new List<String>(LWCList_FinalList); 
                   Con_FinalList.addAll(conLWC_lStrings) ;
                 }
                   if(ApexList_FinalList.size()>0) 
                  {
                           ApexList_FinalList.add('<name>ApexClass</name>');
                           ApexList_FinalList.add('</types>');
                           List<String> conApex_lStrings = new List<String>(ApexList_FinalList); 
                          Con_FinalList.addAll(conApex_lStrings) ;
                  }
                
               
        returnVar.add(Con_FinalList);
          } 
       // List<String> lStrings = new List<String>(lstIQCodes_List);
        //returnVar.add(lStrings);
         //System.debug('testcard4' +lStrings);
        return returnVar;
    }
    
    public class InputResource
    {
        @InvocableVariable(label='team Name' required='true' description='')
        public String teamName;
          @InvocableVariable(label='EnterYourComponentsFromApex' required='true' description='')
        public String EnterYourComponents;
         @InvocableVariable(label='Boolean' required='true' description='')
        public Boolean IsTest;
         @InvocableVariable(label='MetaDataApiType' required='true' description='')
        public String MetaDataApiType;
         @InvocableVariable(label='DeleteData' required='true' description='')
        public Boolean isDeleteData;
         @InvocableVariable(label='consolidatePackage' required='true' description='')
        public Boolean IsconsolidatePackage;
        
    }
}