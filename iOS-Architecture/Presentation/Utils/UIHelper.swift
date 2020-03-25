//
//  UIHelper.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/25.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit
import QMUIKit

class UIHelper {
    class func forceInterfaceOrientationPortrait() {
        QMUIHelper.rotate(to: .portrait)
    }
}

// MARK: - QMUIMoreOperationAppearance
extension UIHelper {
    class func customMoreOperationAppearance() {
        QMUIMoreOperationController.appearance().cancelButtonTitleColor = UIColor.red
    }
}

// MARK: - QMUIAlertControllerAppearance
extension UIHelper {
    class func customAlertControllerAppearance() {
        // 如果需要统一修改全局的 QMUIAlertController 样式，在这里修改 appearance 的值即可
    }
}

// MARK: - QMUIDialogViewControllerAppearance
extension UIHelper {
    class func customDialogViewControllerAppearance() {
        let appearance = QMUIDialogViewController.appearance()
        appearance.backgroundColor = UIColor.qmui_color(themeProvider: { (manager, identifier, theme) -> UIColor in
            return UIColorMake(34, 34, 34)
        })
    }
}


// MARK: - UITabBarItem
extension UIHelper {
    class func tabBarItemWithTitle(_ title: String, image: UIImage, selectedImage: UIImage, tag: Int) -> UITabBarItem {
        let tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
        tabBarItem.selectedImage = selectedImage
        return tabBarItem
    }
}
