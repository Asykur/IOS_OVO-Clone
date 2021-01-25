//
//  PromoCollectionViewCell.swift
//  Ovo
//
//  Created by asykur khamid on 04/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit
import SnapKit

class PromoCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        self.layer.cornerRadius = 10 
    }
    
}
