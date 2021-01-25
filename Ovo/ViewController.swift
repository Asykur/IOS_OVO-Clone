//
//  ViewController.swift
//  Ovo
//
//  Created by asykur khamid on 30/11/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController{
    
    lazy var card1 : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        view.clipsToBounds = true
        return view
    }()
    
    lazy var keuntungan : UILabel = {
        let tv = UILabel()
        tv.text = "KEUNTUNGAN\nPAKAI OVO"
        tv.textAlignment = .center
        tv.textColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        tv.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        tv.numberOfLines = 0
        return tv
    }()
    
    lazy var card2 : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        view.clipsToBounds = true
        return view
    }()
    
    lazy var caraTopUp : UILabel = {
        let tv = UILabel()
        tv.text = "CARA TOP UP\nOVO CASH"
        tv.textAlignment = .center
        tv.textColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        tv.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        tv.numberOfLines = 0
        return tv
    }()
    
    lazy var card3 : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        view.clipsToBounds = true
        return view
    }()
    
    lazy var upgrade : UILabel = {
        let tv = UILabel()
        tv.text = "UPGRADE KE\nOVO PREMIUM"
        tv.textAlignment = .center
        tv.textColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        tv.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        tv.numberOfLines = 0
        return tv
    }()
    
    lazy var divider1 : UIView = {
       let view = UIView()
        return view
    }()
    lazy var divider2 : UIView = {
        let view = UIView()
        return view
    }()
    lazy var divider3 : UIView = {
        let view = UIView()
        return view
    }()
    lazy var divider4 : UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var separator : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        return view
    }()
    
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
    
    lazy var imgPLN : UIImageView = {
       let img = UIImageView()
        img.image = UIImage(named: "lightning")
        return img
    }()
    
    lazy var pln : UILabel = {
        let tv = UILabel()
        tv.text = "PLN"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var imgPulsa : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "smartphone")
        return img
    }()
    
    lazy var pulsa : UILabel = {
        let tv = UILabel()
        tv.text = "Pulsa"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var imgData : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "earth")
        return img
    }()
    
    lazy var data : UILabel = {
        let tv = UILabel()
        tv.text = "Paket Data"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var imgPasca : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "payphone")
        return img
    }()
    
    lazy var pasca : UILabel = {
        let tv = UILabel()
        tv.text = "Pasca\nBayar"
        tv.numberOfLines = 0
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var imgBPJS : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "shield")
        return img
    }()
    
    lazy var bpjs : UILabel = {
        let tv = UILabel()
        tv.text = "BPJS"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var imgTVKabel: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "streaming")
        return img
    }()
    
    lazy var tvKabel : UILabel = {
        let tv = UILabel()
        tv.text = "TV Kabel"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var imgStreaming : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "computer")
        return img
    }()
    
    lazy var streaming : UILabel = {
        let tv = UILabel()
        tv.text = "Streaming"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
    lazy var imgOthers : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "others")
        return img
    }()
    
    lazy var others : UILabel = {
        let tv = UILabel()
        tv.text = "Lainnya"
        tv.textColor = .darkGray
        tv.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return tv
    }()
    
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
    
//=================================================================================================================

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createView()
    }
    
    private func createView(){
        self.view.backgroundColor = .white
 
        self.view.addSubview(bgTop)
        self.view.addSubview(brand)
        self.view.addSubview(bel)
        self.view.addSubview(badge)
        self.view.addSubview(cash)
        self.view.addSubview(rp)
        self.view.addSubview(saldo)
        self.view.addSubview(ovoPoint)
        self.view.addSubview(points)
        self.view.addSubview(container2)
        self.view.addSubview(imgTopUp)
        self.view.addSubview(imgHistory)
        self.view.addSubview(imgTransfer)
        self.view.addSubview(topUp)
        self.view.addSubview(history)
        self.view.addSubview(tranfer)
        
        self.view.addSubview(divider1)
        self.view.addSubview(divider2)
        self.view.addSubview(divider3)
        self.view.addSubview(divider4)
        self.view.addSubview(imgPLN)
        self.view.addSubview(pln)
        self.view.addSubview(imgData)
        self.view.addSubview(data)
        self.view.addSubview(imgPasca)
        self.view.addSubview(pasca)
        self.view.addSubview(imgPulsa)
        self.view.addSubview(pulsa)
        self.view.addSubview(imgBPJS)
        self.view.addSubview(bpjs)
        self.view.addSubview(imgTVKabel)
        self.view.addSubview(tvKabel)
        self.view.addSubview(imgStreaming)
        self.view.addSubview(streaming)
        self.view.addSubview(imgOthers)
        self.view.addSubview(others)
        
        self.view.addSubview(separator)
        self.view.addSubview(kenaliOVO)
        self.view.addSubview(akrab)
        self.view.addSubview(tutup)

        card3.addSubview(upgrade)
        card2.addSubview(caraTopUp)
        card1.addSubview(keuntungan)
        self.view.addSubview(card1)
        self.view.addSubview(card2)
        self.view.addSubview(card3)


        bgTop.snp.makeConstraints { (maker) in
            maker.height.equalTo(1200)
            maker.width.equalTo(1200)
            maker.centerX.equalToSuperview()
            maker.top.equalTo(self.view.snp.top).offset(-905)
        }
        
        brand.snp.makeConstraints { (maker) in
            maker.centerX.equalToSuperview()
            if #available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            }else{
                maker.top.equalTo(self.view.snp.top)
            }
        }
        
        bel.snp.makeConstraints { (maker) in
            maker.height.equalTo(30)
            maker.width.equalTo(30)
            
            if #available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
                maker.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-16)
            }else{
                maker.trailing.equalTo(self.view.snp.trailing).offset(16)
                maker.top.equalTo(self.view.snp.top).offset(-16)
            }
        }
        
        badge.snp.makeConstraints { (maker) in
            maker.height.equalTo(15)
            maker.width.equalTo(15)
            if #available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(14)
                maker.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-14)
            }else{
                maker.trailing.equalTo(self.view.snp.trailing).offset(14)
                maker.top.equalTo(self.view.snp.top).offset(-14)
            }
        }
        
        cash.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.top.equalTo(brand.snp.bottom).offset(20)
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.top.equalTo(brand.snp.bottom).offset(20)
                maker.leading.equalTo(self.view.snp.leading).offset(16)
            }
        }
        
        rp.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.top.equalTo(cash.snp.bottom).offset(5)
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.top.equalTo(brand.snp.bottom).offset(5)
                maker.leading.equalTo(self.view.snp.leading).offset(16)
            }
        }
        
        saldo.snp.makeConstraints { (maker) in
                maker.top.equalTo(cash.snp.bottom).offset(5)
                maker.leading.equalTo(rp.snp.trailing).offset(5)
            }
        
        ovoPoint.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.top.equalTo(saldo.snp.bottom).offset(5)
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(16)
            }else{
                maker.top.equalTo(saldo.snp.bottom).offset(5)
                maker.leading.equalTo(self.view.snp.leading).offset(16)
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
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
                maker.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-20)
                maker.top.equalTo(ovoPoint.snp.bottom).offset(16)
            }else{
                maker.leading.equalTo(self.view.snp.leading).offset(20)
                maker.trailing.equalTo(self.view.snp.trailing).offset(-20)
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
        
        divider1.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.view.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(container2.snp.bottom).offset(30)
        }
        
        divider2.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.view.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(container2.snp.bottom).offset(30)
            maker.leading.equalTo(divider1.snp.trailing)
        }
        
        divider3.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.view.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(container2.snp.bottom).offset(30)
            maker.leading.equalTo(divider2.snp.trailing)
        }
        
        divider4.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.view.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(container2.snp.bottom).offset(30)
            maker.leading.equalTo(divider3.snp.trailing)
        }
        
        imgPLN.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(container2.snp.bottom).offset(50)
            maker.centerX.equalTo(divider1.snp.centerX)
        }
        
        pln.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgPLN.snp.bottom).offset(10)
            maker.centerX.equalTo(imgPLN.snp.centerX)
        }
        
        imgPulsa.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(container2.snp.bottom).offset(50)
            maker.centerX.equalTo(divider2.snp.centerX)
        }
        
        pulsa.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgPulsa.snp.bottom).offset(10)
            maker.centerX.equalTo(imgPulsa.snp.centerX)
        }
        
        imgData.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(container2.snp.bottom).offset(50)
            maker.centerX.equalTo(divider3.snp.centerX)
        }
        
        data.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgData.snp.bottom).offset(10)
            maker.centerX.equalTo(imgData.snp.centerX)
        }
        
        imgPasca.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(container2.snp.bottom).offset(50)
            maker.centerX.equalTo(divider4.snp.centerX)
        }
        
        pasca.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgPasca.snp.bottom).offset(10)
            maker.centerX.equalTo(imgPasca.snp.centerX)
        }
        
//        =============
        
        imgBPJS.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(pln.snp.bottom).offset(50)
            maker.centerX.equalTo(divider1.snp.centerX)
        }
        
        bpjs.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgBPJS.snp.bottom).offset(10)
            maker.centerX.equalTo(imgBPJS.snp.centerX)
        }
        
        imgTVKabel.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(pln.snp.bottom).offset(50)
            maker.centerX.equalTo(divider2.snp.centerX)
        }
        
        tvKabel.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgTVKabel.snp.bottom).offset(10)
            maker.centerX.equalTo(imgTVKabel.snp.centerX)
        }
        
        imgStreaming.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(pln.snp.bottom).offset(50)
            maker.centerX.equalTo(divider3.snp.centerX)
        }
        
        streaming.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgStreaming.snp.bottom).offset(10)
            maker.centerX.equalTo(imgStreaming.snp.centerX)
        }
        
        imgOthers.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(pln.snp.bottom).offset(50)
            maker.centerX.equalTo(divider4.snp.centerX)
        }
        
        others.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgOthers.snp.bottom).offset(10)
            maker.centerX.equalTo(imgOthers.snp.centerX)
        }
        
        separator.snp.makeConstraints { (maker) in
            maker.height.equalTo(10)
            maker.width.equalTo(self.view.frame.width)
            maker.top.equalTo(bpjs.snp.bottom).offset(40)
        }
        
        kenaliOVO.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
                maker.top.equalTo(separator.snp.bottom).offset(30)
            }else{
                maker.leading.equalTo(self.view.snp.leading).offset(20)
                maker.top.equalTo(separator.snp.bottom).offset(30)
            }
        }
        
        akrab.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
                maker.top.equalTo(kenaliOVO.snp.bottom).offset(5)
            }else{
                maker.leading.equalTo(self.view.snp.leading).offset(20)
                maker.top.equalTo(kenaliOVO.snp.bottom).offset(5)
            }
        }
        
        tutup.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-20)
                maker.top.equalTo(separator.snp.bottom).offset(30)
            }else{
                maker.trailing.equalTo(self.view.snp.trailing).offset(20)
                maker.top.equalTo(separator.snp.bottom).offset(30)
            }
        }
        
        card1.dropShadow()
        card1.snp.makeConstraints { (maker) in
            maker.height.equalTo(160)
            maker.width.equalTo(120)
            if #available(iOS 11.0, *){
                maker.top.equalTo(akrab.snp.bottom).offset(20)
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(20)
            }else{
                maker.top.equalTo(akrab.snp.bottom).offset(20)
                maker.leading.equalTo(self.view.snp.leading).offset(20)
            }
        }
        
        card2.dropShadow()
        card2.snp.makeConstraints { (maker) in
            maker.height.equalTo(160)
            maker.width.equalTo(120)
            if #available(iOS 11.0, *){
                maker.top.equalTo(akrab.snp.bottom).offset(20)
                maker.leading.equalTo(card1.snp.trailing).offset(20)
            }else{
                maker.top.equalTo(akrab.snp.bottom).offset(20)
                maker.leading.equalTo(card1.snp.trailing).offset(20)
            }
        }
        
        card3.dropShadow()
        card3.snp.makeConstraints { (maker) in
            maker.height.equalTo(160)
            maker.width.equalTo(120)
            if #available(iOS 11.0, *){
                maker.top.equalTo(akrab.snp.bottom).offset(20)
                maker.leading.equalTo(card2.snp.trailing).offset(20)
            }else{
                maker.top.equalTo(akrab.snp.bottom).offset(20)
                maker.leading.equalTo(card2.snp.trailing).offset(20)
            }
        }
        
        upgrade.snp.makeConstraints { (maker) in
            maker.top.equalTo(card1.snp.top).offset(10)
            maker.centerX.equalTo(card3.snp.centerX)
        }
        
        keuntungan.snp.makeConstraints { (maker) in
            maker.top.equalTo(card1.snp.top).offset(10)
            maker.centerX.equalTo(card1.snp.centerX)
        }
        
        caraTopUp.snp.makeConstraints { (maker) in
            maker.top.equalTo(card2.snp.top).offset(10)
            maker.centerX.equalTo(card2.snp.centerX)
        }
        
    }

}

extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = .zero
        layer.shadowRadius = 5
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}

