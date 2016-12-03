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
/*
public protocol RGUIExtensionCompatible {
    associatedtype CompatibleType
    var rg: CompatibleType { get }
    static var rg: CompatibleType.Type { get }
}

public extension RGUIExtensionCompatible {
    public var rg: RGUIExtension<Self> {
        return RGUIExtension(self)
    }

    public static var rg: RGUIExtension<Self>.Type {
        return RGUIExtension.self
    }
}

extension NSObject: RGUIExtensionCompatible { }
*/
