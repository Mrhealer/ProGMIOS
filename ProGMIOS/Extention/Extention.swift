//
//  Extention.swift
//
//  Created by Mac Pro on 6/2/18.
//  Copyright © 2018 vu trong thien. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 2
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 5
    @IBInspectable var shadowColor: UIColor? = .black
    @IBInspectable var shadowOpacity: Float = 0.5

    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }

}

@IBDesignable
class StackView: UIStackView {
    
   @IBInspectable private var color: UIColor?
    override var backgroundColor: UIColor? {
        get { return color }
        set {
            color = newValue
            self.setNeedsLayout()
        }
    }

    private lazy var backgroundLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        self.layer.insertSublayer(layer, at: 0)
        return layer
    }()
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundLayer.path = UIBezierPath(rect: self.bounds).cgPath
        backgroundLayer.fillColor = self.backgroundColor?.cgColor
    }
    
}

extension UIView {

    func setOvalView() {
        if frame.width >= frame.height {
            layer.cornerRadius = CGFloat(frame.width)/2.0
        } else{
            layer.cornerRadius = CGFloat(frame.height)/2.0
        }
    }

    func clearAllSubview() {
        subviews.forEach { (subview) in
            subview.removeFromSuperview()
        }
    }

    func boundsToSuperView() {
        if let superView = superview {
            frame = superView.bounds
            autoresizingMask = [.flexibleWidth, .flexibleHeight]
            translatesAutoresizingMaskIntoConstraints = true
        }
    }
    
}
