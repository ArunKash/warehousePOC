//
//  DetailViewController.m
//  NewWarehouseAppPOC
//
//  Created by Cognizant Technology Solutions on 21/11/16.
//  Copyright © 2016 Salesforce. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()


@end

@implementation DetailViewController

@synthesize namedata;
@synthesize pricedata;
@synthesize quantitydata;

- (IBAction)updateButtonClicked:(id)sender {
    NSDictionary *updatedFields = [NSDictionary dictionaryWithObjectsAndKeys:[QuantityField text],@"Quantity__c",
                                   [PriceField text],@"Price__c", nil];
    SFRestRequest *request= [[SFRestAPI sharedInstance] requestForUpdateWithObjectType:@"Merchandise__c" objectId:_iddata fields:updatedFields];
    [[SFRestAPI sharedInstance] send:request delegate:self];
    
    
    
    
    
}


-(id)initWithName:(NSString *)name withPrice:(NSInteger )price withQuantity:(NSInteger )quantity {
    self= [super init];
    if(self) {
        self.namedata=name;
        self.pricedata= price;
        NSLog(@"Problem happens here...%@",self.pricedata);
        self.quantitydata=quantity;
        
    }
    return self;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [NameField setText:namedata];
    NSLog(@"1111111%@",pricedata);
    [PriceField setText:[NSString stringWithFormat:@"%@",self.pricedata]];
    
    [QuantityField setText:[NSString stringWithFormat:@"%@",self.quantitydata]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)request:(SFRestRequest *)request didLoadResponse:(id)jsonResponse {
    NSLog(@"Record Updated");
    //NSLog(@"%@",jsonResponse);
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Success!" message:@"Your Record was successfully updated on salesforce!!" delegate:[self.navigationController popToRootViewControllerAnimated:YES] cancelButtonTitle:@"Done" otherButtonTitles:nil, nil];
    [alert show];
    
   //[self.navigationController popToRootViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
