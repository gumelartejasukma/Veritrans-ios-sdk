//
//  VTPaymentStatusViewModel.m
//  MidtransKit
//
//  Created by Nanang Rafsanjani on 3/7/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import "VTPaymentStatusViewModel.h"
#import "VTClassHelper.h"

@implementation VTPaymentStatusViewModel

- (instancetype)initWithTransactionResult:(VTTransactionResult *)transactionResult {
    if (self = [super init]) {
        NSNumberFormatter *nformatter = [NSObject indonesianCurrencyFormatter];
        self.totalAmount = [nformatter stringFromNumber:transactionResult.grossAmount];
        
        self.orderId = transactionResult.orderId;
        
        NSDateFormatter *formatter = [NSObject dateFormatterWithIdentifier:@"vt.date"];
        formatter.dateFormat = @"dd/MM/yyyy, HH:mm:ss";
        self.transactionTime = [formatter stringFromDate:transactionResult.transactionTime];
        
        NSString *paymentTypeString = [transactionResult.paymentType stringByReplacingOccurrencesOfString:@"_" withString:@" "];
        self.paymentType = [paymentTypeString capitalizedString];
    }
    return self;
}

@end
