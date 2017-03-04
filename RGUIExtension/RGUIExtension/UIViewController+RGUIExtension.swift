//
//  UIViewController+RGUIExtension.swift
//  RGUIExtension
//
//  Created by RAIN on 2017/2/21.
//  Copyright © 2017年 Smartech. All rights reserved.
//

import UIKit

extension RGUIExtension where Base: UIViewController {
    /// 获取 topViewController (当前位于顶层的 活跃的 ViewController)
    public var topViewController: UIViewController {
        if base is UITabBarController {
            let tabBarController = base as! UITabBarController
            return tabBarController.selectedViewController!.rue.topViewController
        } else if base is UINavigationController {
            let navigationController = base as! UINavigationController
            return navigationController.visibleViewController!.rue.topViewController
        } else if let presentedViewController = base.presentedViewController {
            return presentedViewController.rue.topViewController
        } else {
            return base
        }
    }
}
