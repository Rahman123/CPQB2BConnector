/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */

@isTest
public class CPQB2BAccountSelectorTest {
  @isTest
  public static void testGetAccountsByIds() {
    ccrz__E_AccountGroup__c ccAccountGroup = new ccrz__E_AccountGroup__c();
    ccAccountGroup.Name = 'My Account';
    insert ccAccountGroup;

    ccrz__E_PriceList__c priceList = CPQB2BTestFactory.createPriceList(ccAccountGroup.Name);
    insert priceList;

    Account acc = new Account();
    acc.Name = 'My Account';
    acc.ccrz__E_AccountGroup__c = ccAccountGroup.Id;
    insert acc;

    List<Account> results = new CPQB2BAccountSelector().getAccountsByIds(new Set<Id> { acc.Id });
    Account result = results[0];
    System.assertEquals(result.ccrz__E_AccountGroup__c, ccAccountGroup.Id);
    System.assertEquals(result.Name, acc.Name);
  }
}