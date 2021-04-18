public with sharing class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> accounts) {

        List<Account> lstAcc = new List<Account>();

        for (Account a : accounts) {
            a.ShippingState = a.BillingState;
        }

    }

}
