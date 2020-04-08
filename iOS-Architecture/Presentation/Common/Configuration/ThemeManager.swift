//
//  ThemeManager.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/31.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import QMUIKit

func getThemeProtocol(_ theme: NSObject?) -> ThemeProtocol {
    guard let themeProtocol = theme as? ThemeProtocol else {
        fatalError("Cannot get ThemeProtocol")
    }
    return themeProtocol
}

func getThemeIdentifier(_ identifier: (NSCopying & NSObjectProtocol)?) -> NSString {
    guard let themeIdentifier = identifier as? NSString else {
        fatalError("Cannot get themeIdentifier")
    }
    return themeIdentifier
}

func isDarkIdentifier(_ identifier: (NSCopying & NSObjectProtocol)?) -> Bool {
    return ThemeIdentifier.dark == ThemeIdentifier(rawValue: getThemeIdentifier(identifier))
}

class ThemeManager {
    
    class var currentTheme: ThemeProtocol  { get { return getThemeProtocol(QMUIThemeManagerCenter.defaultThemeManager.currentTheme) } }
    class var sharedThemeManager: ThemeManager {
        struct Static {
           static let sharedInstance : ThemeManager = ThemeManager()
        }
        return Static.sharedInstance
    }

    var tm_backgroundColor: UIColor
    var tm_backgroundColorLighten: UIColor
    var tm_backgroundColorHighlighted: UIColor
    var tm_tintColor: UIColor
    var tm_titleTextColor: UIColor
    var tm_mainTextColor: UIColor
    var tm_descriptionTextColor: UIColor
    var tm_placeholderColor: UIColor
    var tm_codeColor: UIColor
    var tm_separatorColor: UIColor
    var tm_gridItemTintColor: UIColor
    
    var tm_searchBarTextFieldBackgroundImage: UIImage
    var tm_searchBarBackgroundImage: UIImage
    
    var tm_standardBlueEffect: UIVisualEffect
        
    private init() {
        self.tm_backgroundColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeBackgroundColor()
        })
        self.tm_backgroundColorLighten = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeBackgroundColorLighten()
        })
        self.tm_backgroundColorHighlighted = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeBackgroundColorHighlighted()
        })
        self.tm_tintColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeTintColor()
        })
        self.tm_titleTextColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeTitleTextColor()
        })
        self.tm_mainTextColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeMainTextColor()
        })
        self.tm_descriptionTextColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeDescriptionTextColor()
        })
        self.tm_placeholderColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themePlaceholderColor()
        })
        self.tm_codeColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeCodeColor()
        })
        self.tm_separatorColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeSeparatorColor()
        })
        self.tm_gridItemTintColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            return getThemeProtocol(theme).themeGridItemTintColor()
        })
        
        self.tm_searchBarTextFieldBackgroundImage = UIImage.qmui_image(themeProvider: { (_, _, theme) -> UIImage in
            return UISearchBar.qmui_generateTextFieldBackgroundImage(with: getThemeProtocol(theme).themeBackgroundColorHighlighted()) ?? UIImage()
        })
        self.tm_searchBarBackgroundImage = UIImage.qmui_image(themeProvider: { (_, _, theme) -> UIImage in
            return UISearchBar.qmui_generateBackgroundImage(with: getThemeProtocol(theme).themeBackgroundColor(), borderColor: nil) ?? UIImage()
        })
        
        self.tm_standardBlueEffect = UIVisualEffect.qmui_effect(themeProvider: { (_, identifier, _) -> UIVisualEffect in
            return UIBlurEffect(style: isDarkIdentifier(identifier) ? .dark : .light)
        })
    }
    

}

extension UIColor {
    class func tm_backgroundColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_backgroundColor }
    
    class func tm_backgroundColorLighten() -> UIColor { return ThemeManager.sharedThemeManager.tm_backgroundColorLighten }

    class func tm_backgroundColorHighlighted() -> UIColor { return ThemeManager.sharedThemeManager.tm_backgroundColorHighlighted }

    class func tm_tintColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_tintColor }

    class func tm_titleTextColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_titleTextColor }

    class func tm_mainTextColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_mainTextColor }

    class func tm_descriptionTextColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_descriptionTextColor }

    class func tm_placeholderColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_placeholderColor }

    class func tm_codeColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_codeColor }

    class func tm_separatorColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_separatorColor }

    class func tm_gridItemTintColor() -> UIColor { return ThemeManager.sharedThemeManager.tm_gridItemTintColor }
}

extension UIImage {
    class func tm_searchBarTextFieldBackgroundImage() -> UIImage { return ThemeManager.sharedThemeManager.tm_searchBarTextFieldBackgroundImage }
    
    class func tm_searchBarBackgroundImage() -> UIImage { return ThemeManager.sharedThemeManager.tm_searchBarBackgroundImage }
}

extension UIVisualEffect {
    class func tm_standardBlurEffect() -> UIVisualEffect { return ThemeManager.sharedThemeManager.tm_standardBlueEffect }
}
