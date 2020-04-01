//
//  ThemeManager.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/31.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import QMUIKit

class ThemeManager {
    
    class var currentTheme: ThemeProtocol  { get { return QMUIThemeManagerCenter.defaultThemeManager.currentTheme as! ThemeProtocol } }
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
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeBackgroundColor()
        })
        self.tm_backgroundColorLighten = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeBackgroundColorLighten()
        })
        self.tm_backgroundColorHighlighted = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeBackgroundColorHighlighted()
        })
        self.tm_tintColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeTintColor()
        })
        self.tm_titleTextColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeTitleTextColor()
        })
        self.tm_mainTextColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeMainTextColor()
        })
        self.tm_descriptionTextColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeDescriptionTextColor()
        })
        self.tm_placeholderColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themePlaceholderColor()
        })
        self.tm_codeColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeCodeColor()
        })
        self.tm_separatorColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeSeparatorColor()
        })
        self.tm_gridItemTintColor = UIColor.qmui_color(themeProvider: { (_, _, theme) -> UIColor in
            guard  let theme = theme as? ThemeProtocol else { return .red }
            return theme.themeGridItemTintColor()
        })
        
        self.tm_searchBarTextFieldBackgroundImage = UIImage.qmui_image(themeProvider: { (_, _, theme) -> UIImage in
            guard  let theme = theme as? ThemeProtocol else { return UIImage() }
            return UISearchBar.qmui_generateTextFieldBackgroundImage(with: theme.themeBackgroundColorHighlighted()) ?? UIImage()
        })
        self.tm_searchBarBackgroundImage = UIImage.qmui_image(themeProvider: { (_, _, theme) -> UIImage in
            guard  let theme = theme as? ThemeProtocol else { return UIImage() }
            return UISearchBar.qmui_generateBackgroundImage(with: theme.themeBackgroundColor(), borderColor: nil) ?? UIImage()
        })
        
        self.tm_standardBlueEffect = UIVisualEffect.qmui_effect(themeProvider: { (_, identifier, _) -> UIVisualEffect in
            guard let identifier = identifier as? NSString else { return UIBlurEffect(style: .light) }
            return UIBlurEffect(style: ThemeIdentifier.dark.rawValue.isEqual(to: identifier as String) ? .dark : .light)
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
