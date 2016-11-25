//
//  SoupCreator.h
//  NewWarehouseApp
//
//  Created by Cognizant Technology Solutions on 25/11/16.
//  Copyright © 2016 Salesforce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SmartStore.h"
#import <SmartStore/SFSmartStore.h>
#import <SmartStore/SFSoupIndex.h>
#import <SmartStore/SFQuerySpec.h>
#import <SmartSync/SFSyncTarget.h>
#import <SmartSync/SFSyncOptions.h>
#import "Constants.h"

@interface SoupCreator:SFSmartStore
-(SFSmartStore *)store;
-(void)createMerchandiseSoup;

@end

