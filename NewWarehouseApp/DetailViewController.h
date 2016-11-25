//
//  DetailViewController.h
//  NewWarehouseAppPOC
//
//  Created by Cognizant Technology Solutions on 21/11/16.
//  Copyright © 2016 Salesforce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface DetailViewController : UIViewController
{
    __weak IBOutlet UITextField *NameField;
    
    __weak IBOutlet UITextField *QuantityField;
    __weak IBOutlet UITextField *PriceField;
}

@property(weak,nonatomic)   NSString *namedata;
@property id iddata;
@property  NSInteger pricedata;
@property  NSInteger quantitydata;

- (IBAction)updateButtonClicked:(id)sender;
- (id)initWithName:(NSString *)name withPrice:(NSInteger )price withQuantity:(NSInteger )quantity ;
@end
