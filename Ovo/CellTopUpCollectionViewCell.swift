//
//  CellTopUpCollectionViewCell.swift
//  Ovo
//
//  Created by asykur khamid on 15/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit
import SnapKit

class CellTopUpCollectionViewCell: UICollectionViewCell {
    
   
    
    lazy var mainConatiner : UIView = {
        let col = UIView()
        col.backgroundColor = .white
        return col
    }()
    
    lazy var tvTopUpKe : UILabel = {
        let tv = UILabel()
        tv.text = "Top Up Ke"
        tv.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        tv.textColor = .black
        return tv
    }()
    
    lazy var card1 : UIView = {
        let card = UIView()
        card.backgroundColor = .white
        card.layer.cornerRadius = 10
        return card
    }()
    
    lazy var ovoBG : UIView = {
        let card = UIView()
        card.layer.cornerRadius = 5
        card.backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        return card
    }()
    
    
    lazy var ovo : UILabel = {
        let tv = UILabel()
        tv.text = "OVO"
        tv.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        tv.textColor = .white
        return tv
    }()
    
    lazy var ovoCash : UILabel = {
        let tv = UILabel()
        tv.text = "OVO Cash"
        tv.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        tv.textColor = .black
        return tv
    }()
    
    lazy var saldo : UILabel = {
        let tv = UILabel()
        tv.text = "Saldo Rp90.000"
        tv.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        tv.textColor = UIColor(red: 46/255, green: 46/255, blue: 46/255, alpha: 1)
        return tv
    }()
    
    lazy var separator : UIView = {
        let sep = UIView()
        sep.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        return sep
    }()
    
    lazy var nominal : UILabel = {
        let tv = UILabel()
        tv.text = "Pilih Nominal top Up"
        tv.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        tv.textColor = .black
        return tv
    }()
    
    lazy var duaratusBG : UIView = {
        let bg = UIView()
        bg.layer.borderColor = UIColor.lightGray.cgColor
        bg.layer.borderWidth = 2
        bg.backgroundColor = .white
        bg.layer.cornerRadius = 25
        return bg
    }()
    
    lazy var limaratusBG : UIView = {
        let bg = UIView()
        bg.layer.borderColor = UIColor.lightGray.cgColor
        bg.layer.borderWidth = 2
        bg.layer.cornerRadius = 25
        return bg
    }()
    
    lazy var seratusBG : UIView = {
        let bg = UIView()
        bg.layer.borderColor = UIColor.lightGray.cgColor
        bg.layer.borderWidth = 2
        bg.layer.cornerRadius = 25
        return bg
    }()
    
    lazy var duaratus : UILabel = {
        let tv = UILabel()
        tv.text = "Rp200.000"
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        tv.textColor = .black
        return tv
    }()
    
    lazy var seratus : UILabel = {
        let tv = UILabel()
        tv.text = "Rp100.000"
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        tv.textColor = .black
        return tv
    }()
    
    lazy var limaratus : UILabel = {
        let tv = UILabel()
        tv.text = "Rp500.000"
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        tv.textColor = .black
        return tv
    }()
    
    lazy var masukkanTopup : UILabel = {
        let tv = UILabel()
        tv.text = "Atau masukkan nominal top up disini"
        tv.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        tv.textColor = .gray
        return tv
    }()
    
    lazy var inputNominalBG : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var wordigInput : UILabel = {
        let tv = UILabel()
        tv.text = "Minimal Rp10.000"
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        tv.textColor = .gray
        return tv
    }()
    
    lazy var separator2 : UIView = {
        let sep = UIView()
        sep.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        return sep
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        self.backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        
        self.addSubview(mainConatiner)
        self.addSubview(tvTopUpKe)
        self.addSubview(card1)
        card1.addSubview(ovoBG)
        card1.addSubview(ovo)
        card1.addSubview(saldo)
        card1.addSubview(ovoCash)
        self.addSubview(separator)
        self.addSubview(nominal)
        self.addSubview(duaratusBG)
        self.addSubview(seratusBG)
        self.addSubview(limaratusBG)
        duaratusBG.addSubview(duaratus)
        seratusBG.addSubview(seratus)
        limaratusBG.addSubview(limaratus)
        self.addSubview(masukkanTopup)
        self.addSubview(inputNominalBG)
        inputNominalBG.addSubview(wordigInput)
        self.addSubview(separator2)
        
        
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
        
        tvTopUpKe.snp.makeConstraints { (maker) in
            maker.top.equalTo(mainConatiner.snp.top).offset(16)
            maker.leading.equalTo(mainConatiner.snp.leading).offset(16)
        }
        
        card1.dropShadow()
        card1.snp.makeConstraints { (maker) in
            maker.height.equalTo(80)
            maker.width.equalTo(self.frame.width)
            
            maker.top.equalTo(tvTopUpKe.snp.bottom).offset(16)
            maker.leading.equalTo(self.snp.leading).offset(16)
            maker.trailing.equalTo(self.snp.trailing).offset(-16)
        }
        
        ovoBG.snp.makeConstraints { (maker) in
            maker.height.equalTo(25)
            maker.width.equalTo(40)
            maker.centerY.equalTo(card1.snp.centerY)
            maker.leading.equalTo(card1.snp.leading).offset(16)
        }
        ovo.snp.makeConstraints { (maker) in
            maker.center.equalTo(ovoBG.snp.center)
        }
        
        ovoCash.snp.makeConstraints { (maker) in
            maker.leading.equalTo(ovoBG.snp.trailing).offset(10)
            maker.bottom.equalTo(card1.snp.centerY).offset(-2)
        }
        
        saldo.snp.makeConstraints { (maker) in
            maker.top.equalTo(card1.snp.centerY).offset(2)
            maker.leading.equalTo(ovoBG.snp.trailing).offset(10)
        }
        
        separator.snp.makeConstraints { (maker ) in
            maker.height.equalTo(8)
            maker.width.equalTo(self.frame.width)
            
            maker.top.equalTo(card1.snp.bottom).offset(20)
            
        }
        
        nominal.snp.makeConstraints { (maker) in
            maker.top.equalTo(separator.snp.bottom).offset(16)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.leading.equalTo(self.snp.leading).offset(16)
            }
        }
        
        duaratusBG.snp.makeConstraints { (maker) in
            maker.height.equalTo(50)
            maker.width.equalTo(120)
            maker.top.equalTo(nominal.snp.bottom).offset(16)
            maker.centerX.equalTo(self.snp.centerX)
        }
        
        duaratus.snp.makeConstraints { (maker) in
            maker.center.equalTo(duaratusBG.snp.center)
        }
        
        seratusBG.snp.makeConstraints { (maker) in
            maker.height.equalTo(50)
            maker.width.equalTo(120)
            maker.top.equalTo(nominal.snp.bottom).offset(16)
            maker.leading.equalTo(self.snp.leading).offset(15)
        }
        
        seratus.snp.makeConstraints { (maker) in
            maker.center.equalTo(seratusBG.snp.center)
        }
        
        limaratusBG.snp.makeConstraints { (maker) in
            maker.height.equalTo(50)
            maker.width.equalTo(120)
            maker.top.equalTo(nominal.snp.bottom).offset(16)
            maker.trailing.equalTo(self.snp.trailing).offset(-15)
        }
        
        limaratus.snp.makeConstraints { (maker) in
            maker.center.equalTo(limaratusBG.snp.center)
        }
        
        masukkanTopup.snp.makeConstraints { (maker) in
            maker.top.equalTo(seratusBG.snp.bottom).offset(16)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.leading.equalTo(self.snp.leading).offset(16)
            }
        }
        
        inputNominalBG.snp.makeConstraints { (maker) in
            maker.height.equalTo(50)
            maker.width.equalTo(self.frame.width)
            maker.top.equalTo(masukkanTopup.snp.bottom)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(-16)
                
            }else{
                maker.leading.equalTo(self.snp.leading).offset(16)
                maker.trailing.equalTo(self.snp.trailing).offset(-16)
                
            }
        }
        
        wordigInput.snp.makeConstraints { (maker) in
            maker.centerY.equalTo(inputNominalBG.snp.centerY)
            maker.leading.equalTo(inputNominalBG.snp.leading).offset(16)
        }
        
        separator2.snp.makeConstraints { (maker) in
            maker.height.equalTo(10)
            maker.width.equalTo(self.frame.width)
            maker.top.equalTo(inputNominalBG.snp.bottom).offset(30)
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing)
                
            }else{
                maker.leading.equalTo(self.snp.leading)
                maker.trailing.equalTo(self.snp.trailing)
                
            }
        }
    }
    
}
