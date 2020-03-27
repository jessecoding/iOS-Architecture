//
//  UIConfiguration.swift
//  App
//
//  Created by jesse.xu on 2020/3/20.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import QMUIKit

public func QMUICMI() -> QMUIConfiguration {
    guard let cmi = QMUIConfiguration.sharedInstance() else {
        fatalError("Cannot instantiate initial QMUIConfiguration")
    }
    cmi.applyInitialTemplate()
    return cmi
}

public func UIImageMake(_ img: String) -> UIImage {
    guard let image = UIImage(named: img) else {
        fatalError("Cannot instantiate initial UIImage with name \(img)")
    }
    return image
}

/// 字体相关的宏，用于快速创建一个字体对象，更多创建宏可查看 UIFont+QMUI.h
public func UIFontMake(_ size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size)
}
public func UIFontBoldMake(_ size: CGFloat) -> UIFont {
    return UIFont.boldSystemFont(ofSize: size)
}
public func UIFontBoldWithFont(_ font: UIFont)  -> UIFont {
    return UIFont.boldSystemFont(ofSize: font.pointSize)
}
public func CodeFontMake(_ pointSize: CGFloat) -> UIFont {
    guard let font = UIFont(name: "Menlo", size: pointSize) else {
        fatalError("Cannot instantiate initial UIFont")
    }
    return font
}
/// 斜体只对数字和字母有效，中文无效
public func UIFontItalicMake(_ size: CGFloat) -> UIFont {
    return UIFont.italicSystemFont(ofSize: size)
}

/// UIColor 相关的宏，用于快速创建一个 UIColor 对象，更多创建的宏可查看 UIColor+QMUI.h
public func UIColorMake(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}

public func UIColorMakeWithRGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a/1.0)
}


/// 标志当前项目是否正使用配置表功能
let QMUICMIActivated            = QMUICMI().active

// MARK: -  Global Color
// 基础颜色
let UIColorClear                = QMUICMI().clearColor
let UIColorWhite                = QMUICMI().whiteColor
let UIColorBlack                = QMUICMI().blackColor
let UIColorGray                 = QMUICMI().grayColor
let UIColorGrayDarken           = QMUICMI().grayDarkenColor
let UIColorGrayLighten          = QMUICMI().grayLightenColor
let UIColorRed                  = QMUICMI().redColor
let UIColorGreen                = QMUICMI().greenColor
let UIColorBlue                 = QMUICMI().blueColor
let UIColorYellow               = QMUICMI().yellowColor

// 功能颜色
let UIColorLink                 = QMUICMI().linkColor                       // 全局统一文字链接颜色
let UIColorDisabled             = QMUICMI().disabledColor                   // 全局统一文字disabled颜色
let UIColorForBackground        = QMUICMI().backgroundColor                 // 全局统一的背景色
let UIColorMask                 = QMUICMI().maskDarkColor                   // 全局统一的mask背景色
let UIColorMaskWhite            = QMUICMI().maskLightColor                  // 全局统一的mask背景色，白色
let UIColorSeparator            = QMUICMI().separatorColor                  // 全局分隔线颜色
let UIColorSeparatorDashed      = QMUICMI().separatorDashedColor            // 全局分隔线颜色（虚线）
let UIColorPlaceholder          = QMUICMI().placeholderColor                // 全局的输入框的placeholder颜色

// 可操作的控件
// MARK: - UIControl

let UIControlHighlightedAlpha       = QMUICMI().controlHighlightedAlpha          // 一般control的Highlighted透明值
let UIControlDisabledAlpha          = QMUICMI().controlDisabledAlpha             // 一般control的Disable透明值

// 按钮
// MARK: - UIButton
let ButtonHighlightedAlpha          = QMUICMI().buttonHighlightedAlpha           // 按钮Highlighted状态的透明度
let ButtonDisabledAlpha             = QMUICMI().buttonDisabledAlpha              // 按钮Disabled状态的透明度
let ButtonTintColor                 = QMUICMI().buttonTintColor                  // 普通按钮的颜色

let GhostButtonColorBlue            = QMUICMI().ghostButtonColorBlue              // QMUIGhostButtonColorBlue的颜色
let GhostButtonColorRed             = QMUICMI().ghostButtonColorRed               // QMUIGhostButtonColorRed的颜色
let GhostButtonColorGreen           = QMUICMI().ghostButtonColorGreen             // QMUIGhostButtonColorGreen的颜色
let GhostButtonColorGray            = QMUICMI().ghostButtonColorGray              // QMUIGhostButtonColorGray的颜色
let GhostButtonColorWhite           = QMUICMI().ghostButtonColorWhite             // QMUIGhostButtonColorWhite的颜色

let FillButtonColorBlue             = QMUICMI().fillButtonColorBlue              // QMUIFillButtonColorBlue的颜色
let FillButtonColorRed              = QMUICMI().fillButtonColorRed               // QMUIFillButtonColorRed的颜色
let FillButtonColorGreen            = QMUICMI().fillButtonColorGreen             // QMUIFillButtonColorGreen的颜色
let FillButtonColorGray             = QMUICMI().fillButtonColorGray              // QMUIFillButtonColorGray的颜色
let FillButtonColorWhite            = QMUICMI().fillButtonColorWhite             // QMUIFillButtonColorWhite的颜色

// MARK: - TextInput
let TextFieldTintColor              = QMUICMI().textFieldTintColor               // 全局UITextField、UITextView的tintColor
let TextFieldTextInsets             = QMUICMI().textFieldTextInsets              // QMUITextField的内边距
let KeyboardAppearance              = QMUICMI().keyboardAppearance

// MARK: - UISwitch
let SwitchOnTintColor               = QMUICMI().switchOnTintColor                 // UISwitch 打开时的背景色（除了圆点外的其他颜色）
let SwitchOffTintColor              = QMUICMI().switchOffTintColor                // UISwitch 关闭时的背景色（除了圆点外的其他颜色）
let SwitchTintColor                 = QMUICMI().switchTintColor                   // UISwitch 关闭时的周围边框颜色
let SwitchThumbTintColor            = QMUICMI().switchThumbTintColor              // UISwitch 中间的操控圆点的颜色

// MARK: - NavigationBar

let NavBarHighlightedAlpha                          = QMUICMI().navBarHighlightedAlpha
let NavBarDisabledAlpha                             = QMUICMI().navBarDisabledAlpha
let NavBarButtonFont                                = QMUICMI().navBarButtonFont
let NavBarButtonFontBold                            = QMUICMI().navBarButtonFontBold
let NavBarBackgroundImage                           = QMUICMI().navBarBackgroundImage
let NavBarShadowImage                               = QMUICMI().navBarShadowImage
let NavBarShadowImageColor                          = QMUICMI().navBarShadowImageColor
let NavBarBarTintColor                              = QMUICMI().navBarBarTintColor
let NavBarStyle                                     = QMUICMI().navBarStyle
let NavBarTintColor                                 = QMUICMI().navBarTintColor
let NavBarTitleColor                                = QMUICMI().navBarTitleColor
let NavBarTitleFont                                 = QMUICMI().navBarTitleFont
let NavBarLargeTitleColor                           = QMUICMI().navBarLargeTitleColor
let NavBarLargeTitleFont                            = QMUICMI().navBarLargeTitleFont
let NavBarBarBackButtonTitlePositionAdjustment      = QMUICMI().navBarBackButtonTitlePositionAdjustment
let NavBarBackIndicatorImage                        = QMUICMI().navBarBackIndicatorImage
let SizeNavBarBackIndicatorImageAutomatically       = QMUICMI().sizeNavBarBackIndicatorImageAutomatically
let NavBarCloseButtonImage                          = QMUICMI().navBarCloseButtonImage

let NavBarLoadingMarginRight                        = QMUICMI().navBarLoadingMarginRight                          // titleView里左边的loading的右边距
let NavBarAccessoryViewMarginLeft                   = QMUICMI().navBarAccessoryViewMarginLeft                     // titleView里的accessoryView的左边距
let NavBarActivityIndicatorViewStyle                = QMUICMI().navBarActivityIndicatorViewStyle                  // titleView loading 的style
let NavBarAccessoryViewTypeDisclosureIndicatorImage = QMUICMI().navBarAccessoryViewTypeDisclosureIndicatorImage   // titleView上倒三角的默认图片


// MARK: - TabBar

let TabBarBackgroundImage                           = QMUICMI().tabBarBackgroundImage
let TabBarBarTintColor                              = QMUICMI().tabBarBarTintColor
let TabBarShadowImageColor                          = QMUICMI().tabBarShadowImageColor
let TabBarStyle                                     = QMUICMI().tabBarStyle
let TabBarItemTitleFont                             = QMUICMI().tabBarItemTitleFont
let TabBarItemTitleColor                            = QMUICMI().tabBarItemTitleColor
let TabBarItemTitleColorSelected                    = QMUICMI().tabBarItemTitleColorSelected
let TabBarItemImageColor                            = QMUICMI().tabBarItemImageColor
let TabBarItemImageColorSelected                    = QMUICMI().tabBarItemImageColorSelected

// MARK: - Toolbar

let ToolBarHighlightedAlpha                         = QMUICMI().toolBarHighlightedAlpha
let ToolBarDisabledAlpha                            = QMUICMI().toolBarDisabledAlpha
let ToolBarTintColor                                = QMUICMI().toolBarTintColor
let ToolBarTintColorHighlighted                     = QMUICMI().toolBarTintColorHighlighted
let ToolBarTintColorDisabled                        = QMUICMI().toolBarTintColorDisabled
let ToolBarBackgroundImage                          = QMUICMI().toolBarBackgroundImage
let ToolBarBarTintColor                             = QMUICMI().toolBarBarTintColor
let ToolBarShadowImageColor                         = QMUICMI().toolBarShadowImageColor
let ToolBarStyle                                    = QMUICMI().toolBarStyle
let ToolBarButtonFont                               = QMUICMI().toolBarButtonFont


// MARK: - SearchBar

let SearchBarTextFieldBorderColor                   = QMUICMI().searchBarTextFieldBorderColor
let SearchBarTextFieldBackgroundImage               = QMUICMI().searchBarTextFieldBackgroundImage
let SearchBarBackgroundImage                        = QMUICMI().searchBarBackgroundImage
let SearchBarTintColor                              = QMUICMI().searchBarTintColor
let SearchBarTextColor                              = QMUICMI().searchBarTextColor
let SearchBarPlaceholderColor                       = QMUICMI().searchBarPlaceholderColor
let SearchBarFont                                   = QMUICMI().searchBarFont
let SearchBarSearchIconImage                        = QMUICMI().searchBarSearchIconImage
let SearchBarClearIconImage                         = QMUICMI().searchBarClearIconImage
let SearchBarTextFieldCornerRadius                  = QMUICMI().searchBarTextFieldCornerRadius


// MARK: - TableView / TableViewCell

let TableViewEstimatedHeightEnabled                 = QMUICMI().tableViewEstimatedHeightEnabled            // 是否要开启全局 UITableView 的 estimatedRow(Section/Footer)Height

let TableViewBackgroundColor                        = QMUICMI().tableViewBackgroundColor                   // 普通列表的背景色
let TableSectionIndexColor                          = QMUICMI().tableSectionIndexColor                     // 列表右边索引条的文字颜色
let TableSectionIndexBackgroundColor                = QMUICMI().tableSectionIndexBackgroundColor           // 列表右边索引条的背景色
let TableSectionIndexTrackingBackgroundColor        = QMUICMI().tableSectionIndexTrackingBackgroundColor   // 列表右边索引条按下时的背景色
let TableViewSeparatorColor                         = QMUICMI().tableViewSeparatorColor                    // 列表分隔线颜色
let TableViewCellBackgroundColor                    = QMUICMI().tableViewCellBackgroundColor               // 列表 cell 的背景色
let TableViewCellSelectedBackgroundColor            = QMUICMI().tableViewCellSelectedBackgroundColor       // 列表 cell 按下时的背景色
let TableViewCellWarningBackgroundColor             = QMUICMI().tableViewCellWarningBackgroundColor        // 列表 cell 在提醒状态下的背景色
let TableViewCellNormalHeight                       = QMUICMI().tableViewCellNormalHeight                  // QMUITableView 的默认 cell 高度

let TableViewCellDisclosureIndicatorImage           = QMUICMI().tableViewCellDisclosureIndicatorImage      // 列表 cell 右边的箭头图片
let TableViewCellCheckmarkImage                     = QMUICMI().tableViewCellCheckmarkImage                // 列表 cell 右边的打钩checkmark
let TableViewCellDetailButtonImage                  = QMUICMI().tableViewCellDetailButtonImage             // 列表 cell 右边的 i 按钮
let TableViewCellSpacingBetweenDetailButtonAndDisclosureIndicator = QMUICMI().tableViewCellSpacingBetweenDetailButtonAndDisclosureIndicator   // 列表 cell 右边的 i 按钮和向右箭头之间的间距（仅当两者都使用了自定义图片并且同时显示时才生效）

let TableViewSectionHeaderBackgroundColor           = QMUICMI().tableViewSectionHeaderBackgroundColor
let TableViewSectionFooterBackgroundColor           = QMUICMI().tableViewSectionFooterBackgroundColor
let TableViewSectionHeaderFont                      = QMUICMI().tableViewSectionHeaderFont
let TableViewSectionFooterFont                      = QMUICMI().tableViewSectionFooterFont
let TableViewSectionHeaderTextColor                 = QMUICMI().tableViewSectionHeaderTextColor
let TableViewSectionFooterTextColor                 = QMUICMI().tableViewSectionFooterTextColor
let TableViewSectionHeaderAccessoryMargins          = QMUICMI().tableViewSectionHeaderAccessoryMargins
let TableViewSectionFooterAccessoryMargins          = QMUICMI().tableViewSectionFooterAccessoryMargins
let TableViewSectionHeaderContentInset              = QMUICMI().tableViewSectionHeaderContentInset
let TableViewSectionFooterContentInset              = QMUICMI().tableViewSectionFooterContentInset

let TableViewGroupedBackgroundColor                 = QMUICMI().tableViewGroupedBackgroundColor               // Grouped 类型的 QMUITableView 的背景色
let TableViewGroupedCellTitleLabelColor             = QMUICMI().tableViewGroupedCellTitleLabelColor           // Grouped 类型的列表的 QMUITableViewCell 的标题颜色
let TableViewGroupedCellDetailLabelColor            = QMUICMI().tableViewGroupedCellDetailLabelColor          // Grouped 类型的列表的 QMUITableViewCell 的副标题颜色
let TableViewGroupedCellBackgroundColor             = QMUICMI().tableViewGroupedCellBackgroundColor           // Grouped 类型的列表的 QMUITableViewCell 的背景色
let TableViewGroupedCellSelectedBackgroundColor     = QMUICMI().tableViewGroupedCellSelectedBackgroundColor   // Grouped 类型的列表的 QMUITableViewCell 点击时的背景色
let TableViewGroupedCellWarningBackgroundColor      = QMUICMI().tableViewGroupedCellWarningBackgroundColor    // Grouped 类型的列表的 QMUITableViewCell 在提醒状态下的背景色
let TableViewGroupedSectionHeaderFont               = QMUICMI().tableViewGroupedSectionHeaderFont
let TableViewGroupedSectionFooterFont               = QMUICMI().tableViewGroupedSectionFooterFont
let TableViewGroupedSectionHeaderTextColor          = QMUICMI().tableViewGroupedSectionHeaderTextColor
let TableViewGroupedSectionFooterTextColor          = QMUICMI().tableViewGroupedSectionFooterTextColor
let TableViewGroupedSectionHeaderAccessoryMargins   = QMUICMI().tableViewGroupedSectionHeaderAccessoryMargins
let TableViewGroupedSectionFooterAccessoryMargins   = QMUICMI().tableViewGroupedSectionFooterAccessoryMargins
let TableViewGroupedSectionHeaderDefaultHeight      = QMUICMI().tableViewGroupedSectionHeaderDefaultHeight
let TableViewGroupedSectionFooterDefaultHeight      = QMUICMI().tableViewGroupedSectionFooterDefaultHeight
let TableViewGroupedSectionHeaderContentInset       = QMUICMI().tableViewGroupedSectionHeaderContentInset
let TableViewGroupedSectionFooterContentInset       = QMUICMI().tableViewGroupedSectionFooterContentInset

let TableViewCellTitleLabelColor                    = QMUICMI().tableViewCellTitleLabelColor               // cell的title颜色
let TableViewCellDetailLabelColor                   = QMUICMI().tableViewCellDetailLabelColor              // cell的detailTitle颜色

// MARK: - UIWindowLevel
let UIWindowLevelQMUIAlertView                      = QMUICMI().windowLevelQMUIAlertView

// MARK: - QMUILog
let ShouldPrintDefaultLog                           = QMUICMI().shouldPrintDefaultLog
let ShouldPrintInfoLog                              = QMUICMI().shouldPrintInfoLog
let ShouldPrintWarnLog                              = QMUICMI().shouldPrintWarnLog

// MARK: - QMUIBadge
let BadgeBackgroundColor                            = QMUICMI().badgeBackgroundColor
let BadgeTextColor                                  = QMUICMI().badgeTextColor
let BadgeFont                                       = QMUICMI().badgeFont
let BadgeContentEdgeInsets                          = QMUICMI().badgeContentEdgeInsets
let BadgeCenterOffset                               = QMUICMI().badgeCenterOffset
let BadgeCenterOffsetLandscape                      = QMUICMI().badgeCenterOffsetLandscape

let UpdatesIndicatorColor                           = QMUICMI().updatesIndicatorColor
let UpdatesIndicatorSize                            = QMUICMI().updatesIndicatorSize
let UpdatesIndicatorCenterOffset                    = QMUICMI().updatesIndicatorCenterOffset
let UpdatesIndicatorCenterOffsetLandscape           = QMUICMI().updatesIndicatorCenterOffsetLandscape

// MARK: - Others

let AutomaticCustomNavigationBarTransitionStyle = QMUICMI().automaticCustomNavigationBarTransitionStyle // 界面 push/pop 时是否要自动根据两个界面的 barTintColor/backgroundImage/shadowImage 的样式差异来决定是否使用自定义的导航栏效果
let SupportedOrientationMask                        = QMUICMI().supportedOrientationMask          // 默认支持的横竖屏方向
let AutomaticallyRotateDeviceOrientation            = QMUICMI().automaticallyRotateDeviceOrientation  // 是否在界面切换或 viewController.supportedOrientationMask 发生变化时自动旋转屏幕，默认为 NO
let StatusbarStyleLightInitially                    = QMUICMI().statusbarStyleLightInitially      // 默认的状态栏内容是否使用白色，默认为NO，也即黑色
let NeedsBackBarButtonItemTitle                     = QMUICMI().needsBackBarButtonItemTitle       // 全局是否需要返回按钮的title，不需要则只显示一个返回image
let HidesBottomBarWhenPushedInitially               = QMUICMI().hidesBottomBarWhenPushedInitially // QMUICommonViewController.hidesBottomBarWhenPushed 的初始值，默认为 NO，以保持与系统默认值一致，但通常建议改为 YES，因为一般只有 tabBar 首页那几个界面要求为 NO
let PreventConcurrentNavigationControllerTransitions = QMUICMI().preventConcurrentNavigationControllerTransitions // PreventConcurrentNavigationControllerTransitions : 自动保护 QMUINavigationController 在上一次 push/pop 尚未结束的时候就进行下一次 push/pop 的行为，避免产生 crash
let NavigationBarHiddenInitially                    = QMUICMI().navigationBarHiddenInitially      // preferredNavigationBarHidden 的初始值，默认为NO
let ShouldFixTabBarTransitionBugInIPhoneX           = QMUICMI().shouldFixTabBarTransitionBugInIPhoneX // 是否需要自动修复 iOS 11 下，iPhone X 的设备在 push 界面时，tabBar 会瞬间往上跳的 bug
let ShouldFixTabBarButtonBugForAll                  = QMUICMI().shouldFixTabBarButtonBugForAll // 是否要对 iOS 12.1.2 及以后的版本也修复手势返回时 tabBarButton 布局错误的 bug(issue #410)，默认为 NO
let ShouldPrintQMUIWarnLogToConsole                 = QMUICMI().shouldPrintQMUIWarnLogToConsole // 是否在出现 QMUILogWarn 时自动把这些 log 以 QMUIConsole 的方式显示到设备屏幕上
let SendAnalyticsToQMUITeam                         = QMUICMI().sendAnalyticsToQMUITeam // 是否允许在 DEBUG 模式下上报 Bundle Identifier 和 Display Name 给 QMUI 统计用
let DynamicPreferredValueForIPad                    = QMUICMI().dynamicPreferredValueForIPad // 当 iPad 处于 Slide Over 或 Split View 分屏模式下，宏 `PreferredValueForXXX` 是否把 iPad 视为某种屏幕宽度近似的 iPhone 来取值。
@available(iOS 13.0, *)
let IgnoreKVCAccessProhibited                       = QMUICMI().ignoreKVCAccessProhibited // 是否全局忽略 iOS 13 对 KVC 访问 UIKit 私有属性的限制
@available(iOS 13.0, *)
let AdjustScrollIndicatorInsetsByContentInsetAdjustment = QMUICMI().adjustScrollIndicatorInsetsByContentInsetAdjustment // 当将 UIScrollView.contentInsetAdjustmentBehavior 设为 UIScrollViewContentInsetAdjustmentNever 时，是否自动将 UIScrollView.automaticallyAdjustsScrollIndicatorInsets 设为 NO，以保证原本在 iOS 12 下的代码不用修改就能在 iOS 13 下正常控制滚动条的位置。
