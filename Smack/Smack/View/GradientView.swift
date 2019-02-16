//
//  GradientView.swift
//  Smack
//
//  Created by YuanHungLin on 2019/2/16.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

@IBDesignable  // 將調整的部分即時顯示在 Storyboard

class GradientView: UIView {
    
    // IBInspectable 在Builder Interface裡面添加 內容
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0, green: 0.8213806748, blue: 0.4752416015, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.287455678, green: 0.3025078475, blue: 0.8791555762, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
