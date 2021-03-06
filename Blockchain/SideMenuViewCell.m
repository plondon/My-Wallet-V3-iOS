//
//  SideMenuViewCell.m
//  Blockchain
//
//  Created by Mark Pfluger on 7/8/15.
//  Copyright (c) 2015 Blockchain Luxembourg S.A. All rights reserved.
//

#import "SideMenuViewCell.h"

@implementation SideMenuViewCell

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(15, 17.5, 21, 21);
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;

    if (self.detailTextLabel.text != nil) {
        self.textLabel.frame = CGRectMake(55, 10, 200, 21);
        self.detailTextLabel.frame = CGRectOffset(self.textLabel.frame, 0, 20);
    } else {
        self.textLabel.frame = CGRectMake(55, 15, 200, 26);
    }
    
    self.backgroundColor = [UIColor clearColor];
    self.textLabel.font = [UIFont fontWithName:FONT_MONTSERRAT_REGULAR size:16];
    self.textLabel.textColor = COLOR_TEXT_DARK_GRAY;
    self.textLabel.highlightedTextColor = COLOR_TEXT_DARK_GRAY;
}

@end
