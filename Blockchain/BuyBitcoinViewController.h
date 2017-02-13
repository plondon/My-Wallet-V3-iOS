//
//  BuyBitcoinViewController.h
//  Blockchain
//
//  Created by kevinwu on 1/27/17.
//  Copyright © 2017 Blockchain Luxembourg S.A. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wallet.h"

@interface BuyBitcoinViewController : UIViewController
@property (nonatomic) id<TradeWatcherDelegate>delegate;
- (id)init;
- (void)loginWithGuid:(NSString *)guid sharedKey:(NSString *)sharedKey password:(NSString *)password;
- (void)loginWithJson:(NSString *)guid password:(NSString *)password;
@end
