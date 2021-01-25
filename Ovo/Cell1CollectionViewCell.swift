//
//  Cell1CollectionViewCell.swift
//  Ovo
//
//  Created by asykur khamid on 03/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit
import SnapKit

protocol Cell1CollectionViewCellDelegate : class{
    func topUpClick()
    func transferClick()
    func scanClick()
}

class Cell1CollectionViewCell: UICollectionViewCell {
    
    lazy var bgTop : UIView = {
        let view  = UIView()
        view.backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        view.layer.cornerRadius = 600
        return view
    }()
    
    lazy var badge : UIView = {
        let bd = UIView()
        bd.backgroundColor = .red
        bd.layer.cornerRadius = 7.5
        bd.clipsToBounds = true
        bd.layer.borderWidth = 3
        bd.layer.borderColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1).cgColor
        return bd
    }()
    
    lazy var brand: UILabel = {
        let brnd = UILabel()
        brnd.text = "OVO"
        brnd.textColor = .white
        brnd.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return brnd
    }()
    
    lazy var bel : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "notif")
        return img
    }()
    
    lazy var cash : UILabel = {
        let tv = UILabel()
        tv.text = "OVO Cash"
        tv.textColor = .white
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var rp : UILabel = {
        let tv = UILabel()
        tv.text = "Rp"
        tv.textColor = .white
        tv.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return tv
    }()
    
    lazy var saldo : UILabel = {
        let tv = UILabel()
        tv.text = "90.000"
        tv.textColor = .white
        tv.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return tv
    }()
    
    lazy var ovoPoint : UILabel = {
        let tv = UILabel()
        tv.text = "OVO Points"
        tv.textColor = .white
        tv.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return tv
    }()
    
    lazy var points : UILabel = {
        let tv = UILabel()
        tv.text = "20.500"
        tv.textColor = UIColor(red: 255/255, green: 189/255, blue: 97/255, alpha: 1)
        tv.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return tv
    }()
    
    
    lazy var container2 : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    lazy var imgTopUp : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "add")
        return img
    }()
    
    // ===========================================PROTOCOL==============================================
    //weak itu ngga retain isinya, ketika didestroy classnya akan hilang datanya & hanya hidup ketika class itu ada
    weak var delegate : Cell1CollectionViewCellDelegate?
    
    lazy var imgTransfer : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "topup")
        return img
    }()
    
    lazy var imgHistory : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "time")
        return img
    }()
    
    lazy var topUp : UILabel = {
        let tv = UILabel()
        tv.text = "Top Up"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var tranfer : UILabel = {
        let tv = UILabel()
        tv.text = "Transfer"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var history : UILabel = {
        let tv = UILabel()
        tv.text = "History"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private func  setupViews(){
    
        backgroundColor = .white
        addSubview(bgTop)
        addSubview(brand)
        addSubview(bel)
        addSubview(badge)
        addSubview(cash)
        addSubview(rp)
        addSubview(saldo)
        addSubview(ovoPoint)
        addSubview(points)
        addSubview(container2)
        addSubview(imgTopUp)
        addSubview(imgHistory)
        addSubview(imgTransfer)
        addSubview(topUp)
        addSubview(history)
        addSubview(tranfer)

        bgTop.snp.makeConstraints { (maker) in
            maker.height.equalTo(1200)
            maker.width.equalTo(1200)
            maker.centerX.equalToSuperview()
            maker.top.equalTo(self.snp.top).offset(-950)
        }

        brand.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            if #available(iOS 11.0, *){
                maker.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
            }else{
                maker.top.equalTo(self.snp.top)
            }
        }

        bel.snp.makeConstraints { (maker) in
            maker.height.equalTo(30)
            maker.width.equalTo(30)

            if #available(iOS 11.0, *){
                maker.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(-16)
            }else{
                maker.trailing.equalTo(self.snp.trailing).offset(16)
                maker.top.equalTo(self.snp.top).offset(-16)
            }
        }

        badge.snp.makeConstraints { (maker) in
            maker.height.equalTo(15)
            maker.width.equalTo(15)
            if #available(iOS 11.0, *){
                maker.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(14)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(-14)
            }else{
                maker.trailing.equalTo(self.snp.trailing).offset(14)
                maker.top.equalTo(self.snp.top).offset(-14)
            }
        }

        cash.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.top.equalTo(brand.snp.bottom).offset(20)
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.top.equalTo(brand.snp.bottom).offset(20)
                maker.leading.equalTo(self.snp.leading).offset(16)
            }
        }

        rp.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.top.equalTo(cash.snp.bottom).offset(5)
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.top.equalTo(brand.snp.bottom).offset(5)
                maker.leading.equalTo(self.snp.leading).offset(16)
            }
        }

        saldo.snp.makeConstraints { (maker) in
            maker.top.equalTo(cash.snp.bottom).offset(5)
            maker.leading.equalTo(rp.snp.trailing).offset(5)
        }

        ovoPoint.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.top.equalTo(saldo.snp.bottom).offset(5)
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.top.equalTo(saldo.snp.bottom).offset(5)
                maker.leading.equalTo(self.snp.leading).offset(16)
            }
        }

        points.snp.makeConstraints { (maker) in
            maker.leading.equalTo(ovoPoint.snp.trailing).offset(5)
            maker.top.equalTo(saldo.snp.bottom).offset(5)
        }

        container2.dropShadow()
        container2.snp.makeConstraints { (maker) in
            maker.height.equalTo(90)
            maker.centerX.equalToSuperview()
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(20)
                maker.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(-20)
                maker.top.equalTo(ovoPoint.snp.bottom).offset(16)
            }else{
                maker.leading.equalTo(self.snp.leading).offset(20)
                maker.trailing.equalTo(self.snp.trailing).offset(-20)
                maker.top.equalTo(ovoPoint.snp.bottom).offset(16)
            }
        }

        imgTransfer.snp.makeConstraints { (maker) in
            maker.height.equalTo(35)
            maker.width.equalTo(35)

            maker.centerX.equalToSuperview()
            maker.top.equalTo(container2.snp.top).offset(15)
        }

        tranfer.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgTransfer.snp.bottom).offset(10)
            maker.centerX.equalToSuperview()
        }
        
        imgTopUp.snp.makeConstraints { (maker) in
            maker.height.equalTo(35)
            maker.width.equalTo(35)
            maker.leading.equalTo(container2.snp.leading).offset(50)
            maker.top.equalTo(container2.snp.top).offset(15)
        }
        // =============================== set Clickable ===================================
        let clickTop = UITapGestureRecognizer(target: self, action: #selector(clickTopUp))
        let clickTrx = UITapGestureRecognizer(target: self, action: #selector(clickTransfer))
        let clickHis = UITapGestureRecognizer(target: self, action: #selector(clickHistory))

        imgTopUp.addGestureRecognizer(clickTop)
        imgTopUp.isUserInteractionEnabled = true
        
        imgTransfer.addGestureRecognizer(clickTrx)
        imgTransfer.isUserInteractionEnabled = true
        
        imgHistory.addGestureRecognizer(clickHis)
        imgHistory.isUserInteractionEnabled = true
        
        topUp.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgTopUp.snp.bottom).offset(10)
            maker.centerX.equalTo(imgTopUp.snp.centerX)
        }
        
        imgHistory.snp.makeConstraints { (maker) in
            maker.height.equalTo(35)
            maker.width.equalTo(35)
            maker.trailing.equalTo(container2.snp.trailing).offset(-50)
            maker.top.equalTo(container2.snp.top).offset(15)
        }
        
        history.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgHistory.snp.bottom).offset(10)
            maker.centerX.equalTo(imgHistory.snp.centerX)
        }
        
    }
    
    @objc
    func clickTopUp(){
        print("topUp Clicked")
        delegate?.topUpClick()
    }
    
    @objc
    func clickTransfer(){
        print("Transfer Clicked")
        delegate?.transferClick()
    }
    
    @objc
    func clickHistory(){
        print("History Clicked")
        delegate?.scanClick()
    }
    
    
}
