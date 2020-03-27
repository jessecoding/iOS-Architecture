//
//  CommonUI.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/25.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit

let UIColorGray1 = UIColorMake(53, 60, 70)
let UIColorGray2 = UIColorMake(73, 80, 90)
let UIColorGray3 = UIColorMake(93, 100, 110)
let UIColorGray4 = UIColorMake(113, 120, 130)
let UIColorGray5 = UIColorMake(133, 140, 150)
let UIColorGray6 = UIColorMake(153, 160, 170)
let UIColorGray7 = UIColorMake(173, 180, 190)
let UIColorGray8 = UIColorMake(196, 200, 208)
let UIColorGray9 = UIColorMake(216, 220, 228)

let UIColorDarkGray1 = UIColorMake(218, 220, 224)
let UIColorDarkGray2 = UIColorMake(198, 200, 204)
let UIColorDarkGray3 = UIColorMake(178, 180, 184)
let UIColorDarkGray4 = UIColorMake(158, 160, 164)
let UIColorDarkGray5 = UIColorMake(138, 140, 144)
let UIColorDarkGray6 = UIColorMake(118, 120, 124)
let UIColorDarkGray7 = UIColorMake(98, 100, 104)
let UIColorDarkGray8 = UIColorMake(78, 80, 84)
let UIColorDarkGray9 = UIColorMake(58, 60, 64)

let UIColorTheme1 = UIColorMake(239, 83, 98)   // Grapefruit
let UIColorTheme2 = UIColorMake(254, 109, 75)  // Bittersweet
let UIColorTheme3 = UIColorMake(255, 207, 71)  // Sunflower
let UIColorTheme4 = UIColorMake(159, 214, 97)  // Grass
let UIColorTheme5 = UIColorMake(63, 208, 173)  // Mint
let UIColorTheme6 = UIColorMake(49, 189, 243)  // Aqua
let UIColorTheme7 = UIColorMake(90, 154, 239)  // Blue Jeans
let UIColorTheme8 = UIColorMake(172, 143, 239) // Lavender
let UIColorTheme9 = UIColorMake(238, 133, 193) // Pink Rose
let UIColorTheme10 = UIColorMake(39, 192, 243) // Dark

class CommonUI {
    
    class func renderGlobalAppearances() {
        UIHelper.customMoreOperationAppearance()
        UIHelper.customAlertControllerAppearance()
        UIHelper.customDialogViewControllerAppearance()
    }

}

