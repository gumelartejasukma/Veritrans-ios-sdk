//
//  VTPaymentController.h
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 5/11/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MidtransCoreKit/VTCustomerDetails.h>
#import <MidtransCoreKit/VTItemDetail.h>
#import <MidtransCoreKit/VTTransactionDetails.h>

#import "VTErrorStatusController.h"
#import "VTPaymentStatusViewModel.h"
#import "VTSuccessStatusController.h"

@interface VTPaymentController : UIViewController
@property (nonatomic) VTCustomerDetails *customerDetails;
@property (nonatomic) NSArray *itemDetails;
@property (nonatomic) VTTransactionDetails *transactionDetails;

- (instancetype)initWithCustomerDetails:(VTCustomerDetails *)customerDetails itemDetails:(NSArray <VTItemDetail*>*)itemDetails transactionDetails:(VTTransactionDetails *)transactionDetails;

- (void)handleTransactionError:(NSError *)error;
- (void)handleTransactionSuccess:(VTTransactionResult *)result;
@end