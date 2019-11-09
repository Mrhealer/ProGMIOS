//
//  NibLoadView.swift
//
//  Created by vu trong thien on 5/28/18.
//  Copyright © 2018 vu trong thien. All rights reserved.
//

import UIKit

public protocol NibLoadable: Any {
    
    func nibName() -> String
    func bundle() -> Bundle
    func loadFromNib()
    
}

public extension NibLoadable {
    
    func nibName() -> String {
        return String(describing: type(of: self))
    }

    func bundle() -> Bundle {
        return Bundle(for: type(of: self as AnyObject))
    }

    func loadFromNib() {
        let nib = UINib(nibName: nibName(), bundle: bundle())
        nib.instantiate(withOwner: self, options: nil)
    }
    
}

public protocol NibLoadableViewType: NibLoadable {
    
    var contentView: UIView! { get }
    func loadContentViewFromNib()
    
}

public extension NibLoadableViewType where Self: UIView {
    
    func loadContentViewFromNib() {
        loadFromNib()

        contentView.backgroundColor = UIColor.clear
        addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|",
                                           options: [],
                                           metrics: nil,
                                           views: ["view": contentView as Any])
        )
        addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|",
                                           options: [],
                                           metrics: nil,
                                           views: ["view": contentView as Any])
        )
    }
    
}
