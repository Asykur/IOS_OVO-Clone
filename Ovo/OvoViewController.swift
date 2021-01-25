//
//  OvoViewController.swift
//  Ovo
//
//  Created by asykur khamid on 03/12/19.
//  Copyright © 2019 asykur khamid. All rights reserved.
//

import UIKit

class OvoViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,Cell1CollectionViewCellDelegate {
    
    let cell1 = "cell1"
    let cell2 = "cell2"
    let cell3 = "cell3"

    
    lazy var collection : UICollectionView = {
        let colLayout = UICollectionViewFlowLayout()
        let colView = UICollectionView(frame: .zero, collectionViewLayout: colLayout)
        colView.delegate = self
        colView.dataSource = self
        colView.backgroundColor = .white
        colView.register(Cell1CollectionViewCell.self, forCellWithReuseIdentifier: cell1)
        colView.register(Cell2CollectionViewCell.self, forCellWithReuseIdentifier: cell2)
        colView.register(Cell3CollectionViewCell.self, forCellWithReuseIdentifier: cell3)

        return colView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
        // Do any additional setup after loading the view.
    }
    
    private func createView(){
        self.view.addSubview(collection)
        
        collection.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.view.snp.top)
            maker.bottom.equalTo(self.view.snp.bottom)
            maker.leading.equalTo(self.view.snp.leading)
            maker.trailing.equalTo(self.view.snp.trailing)
        }
    }

}

// UICollectionViewDelegateFlowLayout
extension OvoViewController{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0{
            return CGSize(width: self.view.frame.width, height: 300)
        }else if indexPath.item == 1 {
            return CGSize(width: self.view.frame.width, height: 250)
        }else{
            return CGSize(width: self.view.frame.width, height: 300)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

// UICollectionViewDataSource
extension OvoViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell1, for: indexPath) as! Cell1CollectionViewCell
            cell1.delegate = self
             return cell1
        } else if indexPath.item == 1{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell2, for: indexPath) as! Cell2CollectionViewCell
            return cell2
        }else{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell3, for: indexPath) as! Cell3CollectionViewCell
            return cell3
        }
    
    }
    
}

// Cell1CollectionViewCellDelegate
extension OvoViewController{
    func topUpClick() {
        print("Yeay.. top up Ovo berhail")
//        let backBtn = UIBarButtonItem()
//        backBtn.title = ""
//        navigationItem.backBarButtonItem = backBtn
        navigationController?.pushViewController(TopUpViewController(), animated: true)
//        present(ViewController(), animated: true, completion: nil)
    }
    
    func transferClick(){
        print("Yeay.. Register Ovo berhail")
        navigationController?.pushViewController(TransferViewController(), animated: true)
    }
    
    func scanClick(){
        print("Yeay.. Scan Ovo berhail")
        navigationController?.pushViewController(ScanViewController(), animated: true)
    }
}
