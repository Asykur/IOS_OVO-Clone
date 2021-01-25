//
//  Cell3CollectionViewCell.swift
//  Ovo
//
//  Created by asykur khamid on 04/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit

class Cell3CollectionViewCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let promo = "promo"
    
    lazy var kenaliOVO : UILabel = {
        let tv = UILabel()
        tv.text = "Kenali OVO Lebih Dekat"
        tv.textColor = .black
        tv.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return tv
    }()
    
    lazy var akrab : UILabel = {
        let tv = UILabel()
        tv.text = "Biar makin akrab, yuk cek tips berikut!"
        tv.textColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var tutup : UILabel = {
        let tv = UILabel()
        tv.text = "Tutup"
        tv.textColor = UIColor(red: 49/255, green: 171/255, blue: 173/255, alpha: 1)
        tv.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return tv
    }()
    
    lazy var coll3 : UICollectionView = {
        let collectionLayout = UICollectionViewFlowLayout()
        collectionLayout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionLayout)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.register(PromoCollectionViewCell.self, forCellWithReuseIdentifier: promo)
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        backgroundColor = .white
        addSubview(coll3)
        addSubview(kenaliOVO)
        addSubview(akrab)
        addSubview(tutup)

        kenaliOVO.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top).offset(16)
            maker.leading.equalTo(self.snp.leading).offset(16)
        }
        
        akrab.snp.makeConstraints { (maker) in
            maker.top.equalTo(kenaliOVO.snp.bottom).offset(5)
            maker.leading.equalTo(self.snp.leading).offset(16)
        }
        
        tutup.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top).offset(16)
            maker.trailing.equalTo(self.snp.trailing).offset(-16)
        }
        
        coll3.snp.makeConstraints { (maker) in
            maker.top.equalTo(akrab.snp.bottom)
            maker.leading.equalTo(self.snp.leading)
            maker.trailing.equalTo(self.snp.trailing)
            maker.bottom.equalTo(self.snp.bottom)

        }
    }
    
}

// UICollectionViewDelegateFlowLayout
extension Cell3CollectionViewCell{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 180)
    }
}

// UICollectionViewDataSource
extension Cell3CollectionViewCell{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let promoCell = collectionView.dequeueReusableCell(withReuseIdentifier: promo, for: indexPath)
        return promoCell
    }
    
}
