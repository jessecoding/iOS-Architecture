//
//  ThemeProtocol.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/31.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import QMUIKit

enum ThemeIdentifier: NSString {
    case `default` = "Default"
    case dark      = "Dark"
}

protocol ThemeProtocol: QMUIConfigurationTemplateProtocol {
    /// 界面背景色
    func themeBackgroundColor() -> UIColor

    /// 浅一点的界面背景色，例如 Grouped 类型的列表的 cell 背景
    func themeBackgroundColorLighten() -> UIColor

    /// 在通用背景色上的 item 点击高亮背景色，例如 cell 的 highlightedBackgroundColor
    func themeBackgroundColorHighlighted() -> UIColor

    /// 主题色
    func themeTintColor() -> UIColor

    /// 最深的文字颜色，可用于标题或者输入框文字
    func themeTitleTextColor() -> UIColor

    /// 主要内容的文字颜色，例如列表的 textLabel
    func themeMainTextColor() -> UIColor

    /// 界面上一些附属说明的小字颜色
    func themeDescriptionTextColor() -> UIColor

    /// 输入框 placeholder 的颜色
    func themePlaceholderColor() -> UIColor

    /// 文字中的代码颜色
    func themeCodeColor() -> UIColor

    /// 分隔线颜色，例如 tableViewSeparator
    func themeSeparatorColor() -> UIColor

    /// App 首页每个单元格的颜色
    func themeGridItemTintColor() -> UIColor

    func themeName() -> NSString
}
