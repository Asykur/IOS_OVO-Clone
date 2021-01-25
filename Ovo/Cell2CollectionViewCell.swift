//
//  Cell2CollectionViewCell.swift
//  Ovo
//
//  Created by asykur khamid on 04/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit
import SnapKit

protocol nameCell2CollectionViewCellDelegate: class {
    func cell2Click()
}

class Cell2CollectionViewCell: UICollectionViewCell {
    
    weak var delegate: nameCell2CollectionViewCellDelegate?
    
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
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var separator : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        return view
    }()
    
    private func setupViews(){
        backgroundColor = .white
        
        addSubview(divider1)
        addSubview(divider2)
        addSubview(divider3)
        addSubview(divider4)
        addSubview(imgPLN)
        addSubview(pln)
        addSubview(imgData)
        addSubview(data)
        addSubview(imgPasca)
        addSubview(pasca)
        addSubview(imgPulsa)
        addSubview(pulsa)
        addSubview(imgBPJS)
        addSubview(bpjs)
        addSubview(imgTVKabel)
        addSubview(tvKabel)
        addSubview(imgStreaming)
        addSubview(streaming)
        addSubview(imgOthers)
        addSubview(others)
        addSubview(separator)

        divider1.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(self.snp.top)
        }
        
        divider2.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(self.snp.top)
            maker.leading.equalTo(divider1.snp.trailing)
        }
        
        divider3.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(self.snp.top)
            maker.leading.equalTo(divider2.snp.trailing)
        }
        
        divider4.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.frame.width / 4)
            maker.height.equalTo(300)
            maker.top.equalTo(self.snp.top)
            maker.leading.equalTo(divider3.snp.trailing)
        }
        
        imgPLN.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(self.snp.top).offset(5)
            maker.centerX.equalTo(divider1.snp.centerX)
        }
        
//        let click = UITapGestureRecognizer(target: self, action: #selector(doClick))
//        imgPLN.addGestureRecognizer(click)
//        imgPLN.isUserInteractionEnabled = true
        
        pln.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgPLN.snp.bottom).offset(10)
            maker.centerX.equalTo(imgPLN.snp.centerX)
        }
        
        imgPulsa.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(self.snp.top).offset(5)
            maker.centerX.equalTo(divider2.snp.centerX)
        }
        
        pulsa.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgPulsa.snp.bottom).offset(10)
            maker.centerX.equalTo(imgPulsa.snp.centerX)
        }
        
        imgData.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(self.snp.top).offset(5)
            maker.centerX.equalTo(divider3.snp.centerX)
        }
        
        data.snp.makeConstraints { (maker) in
            maker.top.equalTo(imgData.snp.bottom).offset(10)
            maker.centerX.equalTo(imgData.snp.centerX)
        }
        
        imgPasca.snp.makeConstraints { (maker) in
            maker.height.equalTo(40)
            maker.width.equalTo(40)
            maker.top.equalTo(self.snp.top).offset(5)
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
            maker.width.equalTo(self.frame.width)
            maker.height.equalTo(10)
            maker.bottom.equalTo(self.snp.bottom)
            maker.leading.equalTo(self.snp.leading)
            maker.trailing.equalTo(self.snp.trailing)
            
        }
    }
    
    @objc
    func clickPLN(){
        print("PLN Clicked")
        delegate?.cell2Click()
    }
    
    @objc
    func clickPulsa(){
        print("Pulsa Clicked")
        delegate?.cell2Click()
    }
    
    @objc
    func clickData(){
        print("Paket Data Clicked")
        delegate?.cell2Click()
    }
    
    @objc
    func clickPasca(){
        print("Pasca bayar Clicked")
        delegate?.cell2Click()
    }
    
    @objc
    func clickBPJS(){
        print("BPJS Clicked")
        delegate?.cell2Click()
    }
    
    @objc
    func clickStreaming(){
        print("Streaming Clicked")
        delegate?.cell2Click()
    }
    
    @objc
    func clickKabel(){
        print("TV Kabel Clicked")
        delegate?.cell2Click()
    }
    
    @objc
    func clickOther(){
        print("Menu Lainnya Clicked")
        delegate?.cell2Click()
    }
    
}
