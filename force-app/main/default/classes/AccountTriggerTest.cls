@isTest
public class AccountTriggerTest {
    
    @isTest static void testInsert() {
        List<Account> lstAcc = new List<Account>();

        for (Integer i = 0; i < 200; i++) {
            Account a = new Account();
            a.Name = 'Teste ' + i;
            a.BillingState = 'CA';

            lstAcc.add(a);
        }

        insert lstAcc;

        // List<Account> checkList = [SELECT Id, ShippingState FROM Account WHERE ShippingState = 'CA'];
        List<Account> checkList = [SELECT Id, ShippingState FROM Account WHERE ShippingState = 'CA' AND ID in :lstAcc];

        System.assertEquals(200, checkList.size());
    }
    
}
