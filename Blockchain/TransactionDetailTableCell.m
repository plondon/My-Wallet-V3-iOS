//
//  TransactionDetailTableCell.m
//  Blockchain
//
//  Created by Kevin Wu on 8/24/16.
//  Copyright © 2016 Blockchain Luxembourg S.A. All rights reserved.
//

#import "TransactionDetailTableCell.h"

@implementation TransactionDetailTableCell

- (void)configureWithTransaction:(Transaction *)transaction
{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.clipsToBounds = YES;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    self.textLabel.font = [UIFont fontWithName:FONT_MONTSERRAT_LIGHT size:16];
    self.detailTextLabel.font = [UIFont fontWithName:FONT_MONTSERRAT_LIGHT size:16];
    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    self.textLabel.text = nil;
    self.detailTextLabel.text = nil;
}

@end
