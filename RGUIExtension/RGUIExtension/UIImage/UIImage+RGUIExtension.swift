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
    public convenience init?(contentsOf URLString: String) {
        guard let url = URL(string: URLString) else {
            print("UIImage init Error: URL might not exist")
            return nil
        }
        var gotData: Data?
        do {
            gotData = try Data(contentsOf: url)
        } catch let error as NSError {
            print("UIImage init Error: ", error)
        }
        
        guard let data = gotData else {
            print("UIImage init got data is nil")
            return nil
        }
        self.init(data: data)
    }
}
