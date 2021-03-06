//
//  TopUpViewController.swift
//  Ovo
//
//  Created by asykur khamid on 07/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit

class TopUpViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    let cellTopUp = "cellTopUp"

    lazy var selectedIndicator: UIView = {
        let div = UIView()
        div.backgroundColor = UIColor(red: 5/255, green: 176/255, blue: 186/255, alpha: 1)// green
        return div
    }()
    
    lazy var divider1: UIView = {
        let div = UIView()
        div.backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        return div
    }()
    
    lazy var divider2: UIView = {
        let div = UIView()
        div.backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        return div
    }()
    
    lazy var tvTab1: UILabel = {
        let tv = UILabel()
        tv.text = "Instan Top Up"
        tv.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        tv.textColor = .white
        return tv
    }()
    
    lazy var tvTab2: UILabel = {
        let tv = UILabel()
        tv.text = "Metode Lain"
        tv.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        tv.textColor = UIColor(red: 174/255, green: 148/255, blue: 224/255, alpha: 1)
        return tv
    }()
    
    lazy var collection : UICollectionView = {
        let colLayout = UICollectionViewFlowLayout()
        let coll = UICollectionView(frame: .zero, collectionViewLayout: colLayout)
        coll.delegate = self
        coll.dataSource = self
        coll.backgroundColor = .white
        coll.register(CellTopUpCollectionViewCell.self, forCellWithReuseIdentifier: cellTopUp)
        return coll
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
        // Do any additional setup after loading the view.
    }
    
    private func createView(){
        self.title = "TOP UP"
        self.view.backgroundColor = UIColor(red: 86/255, green: 51/255, blue: 150/255, alpha: 1)
        self.view.addSubview(divider1)
        self.view.addSubview(divider2)
        self.view.addSubview(tvTab1)
        self.view.addSubview(tvTab2)
        self.view.addSubview(selectedIndicator)
        self.view.addSubview(collection)
        
        divider1.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.view.frame.width / 2)
            maker.height.equalTo(50)
            
            if #available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading)
            }else{
                maker.top.equalTo(self.view.snp.top)
                maker.leading.equalTo(self.view.snp.leading)
            }
            
        }
        
        selectedIndicator.snp.makeConstraints { (maker) in
            maker.height.equalTo(3)
            maker.leading.equalTo(divider1.snp.leading)
            maker.trailing.equalTo(divider1.snp.trailing)
            maker.bottom.equalTo(divider1.snp.bottom)
        }
        
        tvTab1.snp.makeConstraints { (maker) in
            maker.center.equalTo(divider1.snp.center)
        }
        
        divider2.snp.makeConstraints { (maker) in
            maker.width.equalTo(self.view.frame.width / 2)
            maker.height.equalTo(50)
            
            if #available(iOS 11.0, *){
                maker.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
                maker.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing)
            }else{
                maker.top.equalTo(self.view.snp.top)
                maker.trailing.equalTo(self.view.snp.trailing)
            }
            tvTab2.snp.makeConstraints { (maker) in
                maker.center.equalTo(divider2.snp.center)
            }
        }
        
        collection.snp.makeConstraints { (maker) in
            if #available(iOS 11.0, *){
                maker.top.equalTo(divider1.snp.bottom)
                maker.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading)
                maker.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing)
                maker.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            }else{
                maker.top.equalTo(divider1.snp.bottom)
                maker.leading.equalTo(self.view.snp.leading)
                maker.trailing.equalTo(self.view.snp.trailing)
                maker.bottom.equalTo(self.view.snp.bottom)
            }
        }
    }
}

extension TopUpViewController{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellTopUp, for: indexPath)
        return cell
    }
}

extension TopUpViewController{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.height)
    }
}
