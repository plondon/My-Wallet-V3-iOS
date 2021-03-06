//
//  Constants.swift
//  Blockchain
//
//  Created by Mark Pfluger on 6/26/15.
//  Copyright (c) 2015 Blockchain Luxembourg S.A. All rights reserved.
//

import UIKit

struct Constants {
    struct Colors {
        static let TextFieldBorderGray = UIColorFromRGB(0xcdcdcd)
        static let BlockchainBlue = UIColorFromRGB(0x004a7c)
        static let BlockchainLightBlue = UIColorFromRGB(0x10ade4)
        static let BlockchainLightestBlue = UIColorFromRGB(0xb2d5e5)
        static let SecondaryGray = UIColorFromRGB(0xebebeb)
        static let SuccessGreen = UIColorFromRGB(0x199D69)
        static let WarningRed = UIColorFromRGB(0xB83940)
        static let SentRed = UIColorFromRGB(0xF26C57)
        static let DisabledGray = UIColorFromRGB(0xEBEBEB)
        static let DarkGray = UIColorFromRGB(0x4c4c4c)
    }
    struct Measurements {
        static let DefaultHeaderHeight : CGFloat = 65
        static let BackupButtonCornerRadius : CGFloat = 4
        static let BusyViewLabelWidth : CGFloat = 230
        static let BusyViewLabelHeight : CGFloat = 30
        static let BusyViewLabelAlpha : CGFloat = 0.75
        static let BusyViewLabelFontSystemSize : CGFloat = 14.0
        
        static let ScreenHeightIphone4S : CGFloat = 480
    }
    struct Defaults {
        static let NumberOfRecoveryPhraseWords = 12
    }
}

// MARK: Helper functions

func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
