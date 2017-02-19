//
//  UINavigationBar+RGUIExtension.swift
//  RGUIExtension
//
//  Created by RAIN on 15/11/30.
//  Copyright © 2015年 Smartech. All rights reserved.
//

import UIKit

extension RGUIExtension where Base: UINavigationBar {
    /// 修改 Navigation Bar 的背景颜色
    ///
    /// - Parameter color: 提供给 Navigation Bar 的背景的 tint color
    static func barTintColor(_ color: UIColor) {
        UINavigationBar.appearance().barTintColor = color
    }

    /// 修改 Navigation item 和 bar button item 的 tint color
    ///
    /// - Parameter color: 提供给 Navigation item 和 bar button item 的 tint color
    static func tintColor(_ color: UIColor) {
        UINavigationBar.appearance().tintColor = color
    }

    static func titleTextColor(_ color: UIColor) {
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: color]
    }
}

//  MARK: Colors
extension UINavigationBar {
    /**
     修改 Navigation Bar 的背景颜色
     
     - parameter color: 提供给 Navigation Bar 的背景的 tint color
     */
    @available(*, deprecated, message: "Extensions directly on UINavigationBar are deprecated. Use `UINavigationBar.rue.barTintColor` instead.", renamed: "rue.barTintColor")
    static func rue_barTintColor(_ color: UIColor) {
        UINavigationBar.appearance().barTintColor = color
    }
    
    /**
     修改 Navigation item 和 bar button item 的 tint color
     
     - parameter color: 提供给 Navigation item 和 bar button item 的 tint color
     */
    @available(*, deprecated, message: "Extensions directly on UINavigationBar are deprecated. Use `UINavigationBar.rue.tintColor` instead.", renamed: "rue.tintColor")
    static func rue_tintColor(_ color: UIColor) {
        UINavigationBar.appearance().tintColor = color
    }
    
    /**
     修改 Navigation Bar 的文字颜色
     
     - parameter color: 提供给 Navigation Bar 上文字的颜色
     */
    static func rue_titleTextColor(_ color: UIColor) {
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: color]
    }
}
