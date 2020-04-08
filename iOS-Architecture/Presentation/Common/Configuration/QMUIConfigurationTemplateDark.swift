//
//  DarkTheme.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/31.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import QMUIKit

class QMUIConfigurationTemplateDark: QMUIConfigurationTemplate {
    
    override func applyConfigurationTemplate() {
        super.applyConfigurationTemplate()
        
        QMUICMI().keyboardAppearance = .dark
        
        QMUICMI().navBarBackgroundImage = nil
        QMUICMI().navBarStyle = .black
        
        QMUICMI().tabBarBackgroundImage = nil
        QMUICMI().tabBarStyle = .black
        
        QMUICMI().toolBarStyle = .black
    }
    
    override func shouldApplyTemplateAutomatically() -> Bool {
        QMUIThemeManagerCenter.defaultThemeManager.addThemeIdentifier(self.themeName(), theme: self)

        let selectedThemeIdentifier = Storage.selectedThemeIdentifier
        let result = selectedThemeIdentifier == self.themeName()
        if result {
            QMUIThemeManagerCenter.defaultThemeManager.currentTheme = self
        }
        
        return result
    }
    

    override func themeBackgroundColor() -> UIColor {
        return UIColorBlack
    }
    
    override func themeBackgroundColorLighten() -> UIColor {
        return UIColorMake(28, 28, 30)
    }
    
    override func themeBackgroundColorHighlighted() -> UIColor {
        return UIColorMake(48, 49, 51)
    }
    
    override func themeTintColor() -> UIColor {
        return UIColorTheme10
    }
    
    override func themeTitleTextColor() -> UIColor {
        return UIColorDarkGray1
    }
    
    override func themeMainTextColor() -> UIColor {
        return UIColorDarkGray3
    }
    
    override func themeDescriptionTextColor() -> UIColor {
        return UIColorDarkGray6
    }
    
    override func themePlaceholderColor() -> UIColor {
        return UIColorDarkGray8
    }
    
    override func themeCodeColor() -> UIColor {
        return self.themeTintColor()
    }
    
    override func themeSeparatorColor() -> UIColor {
        return UIColorMake(46, 50, 54)
    }
    
    override func themeName() -> NSString {
        return ThemeIdentifier.dark.rawValue
    }
}
