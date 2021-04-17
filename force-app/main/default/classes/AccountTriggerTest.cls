@isTest
public class AccountTriggerTest {
    
    @isTest static void testInsert() {
        List<Account> lstAcc = new List<Account>();
        Integer count = 0;

        for (Integer i = 0; i < 200; i++) {
            Account a = new Account();
            a.Name = 'Teste ' + i;
            a.BillingState = 'CA';

            lstAcc.add(a);
        }

        insert lstAcc;

        List<Account> checkList = [SELECT Id, ShippingState FROM Account WHERE ShippingState = 'CA'];

        for (Account ac : checkList) {
            if(ac.ShippingState == 'CA' && lstAcc.contains(ac.ID)) {
                count++;
            }
        }

        System.assertEquals(200, count);
    }
    
}
