//
//  SoupCreator.m
//  NewWarehouseApp
//
//  Created by Cognizant Technology Solutions on 25/11/16.
//  Copyright © 2016 Salesforce. All rights reserved.
//

#import "SoupCreator.h"

@implementation SoupCreator

// Purpose of  the function is to create a store where soups(Tables) can be placed

-(SFSmartStore *)store
{
    return [SFSmartStore sharedStoreWithName:kDefaultSmartStoreName];

}

//Creating one such soup named Merchandise
-(void)createMerchandiseSoup {


}



@end
