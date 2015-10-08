//
//  PhotoCollectionViewCell.swift
//  Demo23-UICollectionView
//
//  Created by Prashant on 08/10/15.
//  Copyright © 2015 PrashantKumar Mangukiya. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    // outlet - image view
    @IBOutlet var photoImageView: UIImageView!
    
    // set corner radious for image view
    func setCornerRadious(radious: Int) {

        self.photoImageView.clipsToBounds = true
        
        self.photoImageView.layer.cornerRadius = CGFloat(radious)
    }
    
}
