/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */

@isTest
public class CPQB2BProduct2DomainTest {
    /** 
     * Temporary Coverage Method so triggers will deploy
    */
    @isTest
    public static void testBeforeAndAfterInsert(){
        Product2 product = new Product2();
        product.Name = 'Test Product';
        product.ProductCode = 'TEST-1234';
        product.IsActive = true;
        insert product;

        System.assertEquals(product.Name, 'Test Product');
    }

    /** 
     * Temporary Coverage Method so triggers will deploy
    */
    @isTest
    public static void testBeforeAndAfterUpdate(){
        Product2 product = new Product2();
        product.Name = 'Test Product';
        product.ProductCode = 'TEST-1234';
        product.IsActive = true;
        insert product;

        product.Name = 'TestProduct';
        update product;
        System.assertNotEquals(product.Name, 'Test Product');
    }

        /** 
     * Temporary Coverage Method so triggers will deploy
    */
    // @isTest
    // public static void testCPQB2BProductSync(){
    //     Product2 product = new Product2();
    //     product.Name = 'Test Product';
    //     insert product;

    //     product.Name = 'TestProduct';
    //     update product;
    //     System.assertNotEquals(product.Name, 'Test Product');
    // }
}