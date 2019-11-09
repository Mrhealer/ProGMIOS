//
//  MainMenu.swift
//  ProGMIOS
//
//  Created by VuTrongThien on R 1/11/09.
//  Copyright © Reiwa 1 VuTrongThien. All rights reserved.
//

import UIKit

class MainMenuView: UIView, NibLoadableViewType {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var imgMenuIcon: UIImageView!
    @IBOutlet weak var lbMenuName: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        loadContentViewFromNib()
    }
    
}
