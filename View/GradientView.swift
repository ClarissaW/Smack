//
//  GradientView.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-09.
//

import UIKit
@IBDesignable //can be showed in storyboard
class GradientView: UIView {
    
    //set two values to dynamically change
    @IBInspectable var topColor:UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet{
            self.setNeedsLayout()//click it and update the layout
        }
    }
    @IBInspectable var bottomColor : UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) { //UIColor.green
        didSet{
            self.setNeedsLayout() // will call layoutsubviews function
        }
    }
    override func layoutSubviews() {
        // override subview to do the update
        let gradientLayer = CAGradientLayer() //A layer that draws a color gradient over its background color, filling the shape of the layer (including rounded corners)
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor] // can add more valuables in here
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds // set the size as the UIView size
        self.layer.insertSublayer(gradientLayer, at: 0) //at the first layer
    }
}
