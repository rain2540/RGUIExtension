//
//  UIImage+URL.swift
//  RGUIExtension
//
//  Created by RAIN on 15/11/30.
//  Copyright © 2015年 Smartech. All rights reserved.
//

import UIKit

//  MARK: URL
extension UIImage {
    /**
     通过 URL 路径获取 Image
     
     - parameter URLString: 图片的 URL 地址
     
     - returns: 初始化的 UIImage 对象, 如果不能从该 URL 初始化图像则返回nil
     */
    public convenience init?(contentsOfURL URLString: String) {
        guard let URL = NSURL(string: URLString) else {
            print("UIImage init Error: URL might not exist")
            return nil
        }
        
        guard let data = NSData(contentsOfURL: URL) else {
            print("UIImage init Error: get data fail")
            return nil
        }
        
        self.init(data: data)
    }
}
