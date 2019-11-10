//
//  UtilitiesViewController.swift
//  ProGMIOS
//
//  Created by VuTrongThien on R 1/11/09.
//  Copyright © Reiwa 1 VuTrongThien. All rights reserved.
//

import UIKit

class UtilitiesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension UtilitiesViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
            return 6
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if self.collectionView == collectionView,
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UtilitiesCell",
                                                              for: indexPath) as? UtilitiesCell {
               cell.setupView()
               return cell
            }
            return UICollectionViewCell()
       }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
            let size = CGSize(width: collectionView.frame.width / 2,
                              height: (collectionView.frame.height - 10) / 3)
            return size
    }
        
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0
    }
    
}
