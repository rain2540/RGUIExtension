//
//  RGUIExtension.swift
//  RGUIExtension
//
//  Created by RAIN on 2016/12/2.
//  Copyright © 2016年 Smartech. All rights reserved.
//

import Foundation

public struct RGUIExtension<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol RGUIExtensionCompatible {
    associatedtype RUECompatibleType
    var rue: RUECompatibleType { get }
    static var rue: RUECompatibleType.Type { get }
}
/*
public extension RGUIExtensionCompatible {
    public var rue: RGUIExtension<Self> {
        return RGUIExtension(self)
    }

    public static var rue: RGUIExtension<Self>.Type {
        return RGUIExtension.self
    }
}

extension NSObject: RGUIExtensionCompatible { }
*/
