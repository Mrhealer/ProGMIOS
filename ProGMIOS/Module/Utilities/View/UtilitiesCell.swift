//
//  UtilitiesCell.swift
//  ProGMIOS
//
//  Created by VuTrongThien on R 1/11/09.
//  Copyright © Reiwa 1 VuTrongThien. All rights reserved.
//

import UIKit

class UtilitiesCell: UICollectionViewCell {

    @IBOutlet weak var mainMenuView: MainMenuView!

    func setupView() {
    }

    override func prepareForReuse() {
        mainMenuView.lbMenuName.text = nil
        mainMenuView.imgMenuIcon.image = nil
    }

}
