//
//  StringExtenst.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/27.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import Foundation

extension String {
    
    func localized() -> String {
        return NSLocalizedString(self, comment: "Not defined key-value")
    }
    
    func localizedFormat(_ args: CVarArg...) -> String {
        return String(format: localized(), arguments: args)
    }
    
}
