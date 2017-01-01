//
//  UIView+RGUIExtension.swift
//  RGUIExtension
//
//  Created by RAIN on 15/11/30.
//  Copyright © 2015年 Smartech. All rights reserved.
//

import UIKit

//  MARK: Rect
extension UIView {
    //  MARK: size
    /// size
    var size: CGSize { return self.bounds.size }

    /// width
    var width: CGFloat {
        get {
            return self.size.width
        }

        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }

    /// height
    var height: CGFloat {
        get {
            return self.size.height
        }

        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }

    //  MARK: origin
    /// x
    var x: CGFloat {
        get {
            return self.frame.origin.x
        }

        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }

    /// y
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }

        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    /// right side x
    var maxX: CGFloat { return self.x + self.width }
    
    /// bottom y
    var maxY: CGFloat { return self.y + self.height }
    
    /// mid x
    var midX: CGFloat { return (self.x + self.maxX) / 2 }
    
    /// mid y
    var midY: CGFloat { return (self.y + self.maxY) / 2 }
}


//  MARK: DrawTools
/**
 绘制线条的方向
 
 - Horizontal: 水平方向
 - Vertical:   竖直方向
 */
public enum RGLineDirection {
    case horizontal
    case vertical
}

extension UIView {
     /**
     为视图添加边线
     
     - parameter width:        边线宽度
     - parameter cornerRadius: 边线圆角半径, 若无圆角则值为0
     - parameter color:        边线颜色
     */
    public func rue_addBorder(_ width: CGFloat, cornerRadius: CGFloat, color: UIColor) {
        self.layer.masksToBounds = true
        self.layer.borderWidth = width
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = color.cgColor
    }

     /**
     在 view 的指定位置加指定颜色的线
     
     - parameter startPoint: 起始点坐标
     - parameter length:     长度
     - parameter width:      宽度
     - parameter color:      颜色
     - parameter direction:  方向
     
     - returns: 按参数条件添加的线
     */
    public func rue_drawLine(_ startPoint: CGPoint, length: CGFloat, width: CGFloat, color: UIColor, direction: RGLineDirection = .horizontal) -> UIView {
        let line = UIView()
        line.backgroundColor = color
        
        switch (direction) {
        case .horizontal:
            line.frame = CGRect(x: startPoint.x, y: startPoint.y, width: length, height: width)
            
        case .vertical:
            line.frame = CGRect(x: startPoint.x, y: startPoint.y, width: width, height: length)
        }
        
        self.addSubview(line)
        
        return line
    }
}
