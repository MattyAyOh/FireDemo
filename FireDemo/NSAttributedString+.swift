//
//  NSAttributedString+.swift
//  FireDemo
//
//  Created by Matt Ao on 12/12/19.
//  Copyright © 2019 Betty Labs. All rights reserved.
//

import UIKit

extension NSAttributedString {
    func toImage(size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        let context = UIGraphicsGetCurrentContext()
        let rect = CGRect(origin: .zero, size: size)
        context?.clear(rect)
        draw(in: rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
