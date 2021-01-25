//
//  CellTransferCollectionViewCell.swift
//  Ovo
//
//  Created by asykur khamid on 15/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit
import SnapKit

class CellTransferCollectionViewCell: UICollectionViewCell {
    
    
    lazy var mainConatiner : UIView = {
        let col = UIView()
        col.backgroundColor = .white
        return col
    }()
    
    
    lazy var subConatiner : UIView = {
        let col = UIView()
        col.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        return col
    }()
    
    lazy var card1 : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = .white
        view.dropShadow()
        return view
    }()
    
    lazy var card2 : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = .white
        view.dropShadow()
        return view
    }()
    
    lazy var sesamaOvo : UILabel = {
        let tv = UILabel()
        tv.text = "Ke Sesama OVO"
        tv.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        tv.textColor = .black
        return tv
    }()
    
    lazy var rekeningBank : UILabel = {
        let tv = UILabel()
        tv.text = "Kerekening Bank"
        tv.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        tv.textColor = .black
        return tv
    }()
    
    lazy var lastTRX : UILabel = {
        let tv = UILabel()
        tv.text = "Transaksi Terakhir"
        tv.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        tv.textColor = .black
        return tv
    }()
    
    lazy var arrow1 : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "arrow")
        return img
    }()
    
    lazy var arrow2 : UIImageView  = {
        let img = UIImageView()
        img.image = UIImage(named: "arrow")
        return img
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        
        self.backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        
       
        self.addSubview(mainConatiner)
        self.addSubview(subConatiner)
        self.addSubview(card1)
        self.addSubview(card2)
        card1.addSubview(sesamaOvo)
        card2.addSubview(rekeningBank)
        card1.addSubview(arrow1)
        card2.addSubview(arrow2)
        self.addSubview(lastTRX)
        
       
        
        mainConatiner.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing)
                maker.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
            }else{
                maker.leading.equalTo(self.snp.leading)
                maker.trailing.equalTo(self.snp.trailing)
                maker.bottom.equalTo(self.snp.bottom)
            }
        }
        
        subConatiner.snp.makeConstraints { (maker) in
            maker.height.equalTo(200)
            maker.top.equalTo(mainConatiner.snp.top)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing)
            }else{
                maker.leading.equalTo(self.snp.leading)
                maker.trailing.equalTo(self.snp.trailing)
            }
        }
        
        card1.snp.makeConstraints { (maker) in
            maker.height.equalTo(70)
            maker.width.equalTo(self.frame.width)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(-16)
                maker.top.equalTo(subConatiner.snp.top).offset(16)
            }else{
                maker.leading.equalTo(self.snp.leading).offset(16)
                maker.trailing.equalTo(self.snp.trailing).offset(-16)
                maker.top.equalTo(subConatiner.snp.top).offset(16)
            }
        }
        
        card2.snp.makeConstraints { (maker) in
            maker.height.equalTo(70)
            maker.width.equalTo(self.frame.width)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(-16)
                maker.top.equalTo(card1.snp.bottom).offset(10)
            }else{
                maker.leading.equalTo(self.snp.leading).offset(16)
                maker.trailing.equalTo(self.snp.trailing).offset(-16)
                maker.top.equalTo(card1.snp.bottom).offset(10)
            }
        }
        
        arrow1.snp.makeConstraints { (maker) in
            maker.height.equalTo(10)
            maker.width.equalTo(10)
            maker.trailing.equalTo(card1.snp.trailing).offset(-16)
            maker.centerY.equalTo(card1.snp.centerY)
        }
        
        arrow2.snp.makeConstraints { (maker) in
            maker.height.equalTo(10)
            maker.width.equalTo(10)
            maker.trailing.equalTo(card2.snp.trailing).offset(-16)
            maker.centerY.equalTo(card2.snp.centerY)
        }
        
        sesamaOvo.snp.makeConstraints { (maker) in
            maker.centerY.equalTo(card1.snp.centerY)
            maker.leading.equalTo(card1.snp.leading).offset(16)
        }
        
        rekeningBank.snp.makeConstraints { (maker) in
            maker.centerY.equalTo(card2.snp.centerY)
            maker.leading.equalTo(card2.snp.leading).offset(16)
        }
        
        lastTRX.snp.makeConstraints { (maker) in
            maker.top.equalTo(subConatiner.snp.bottom).offset(16)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.leading.equalTo(self.snp.leading).offset(16)
            }
        }
        
    }
}
