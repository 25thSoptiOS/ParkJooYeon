//
//  ViewController.swift
//  semi5
//
//  Created by 박주연 on 19/11/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var postCollectionView: UICollectionView!
    
    let collectionDataSource: CustomDataSource = CustomDataSource()
//    let collectionDataSource2: CustomDataSource2 = CustomDataSource2()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        postCollectionView.dataSource = collectionDataSource
        postCollectionView.delegate = self
        
//        post2CollectionView.dataSource = collectionDataSource2
    }
}

//extension ViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseCell", for: indexPath) as?
//            CustomCollectionViewCell else { return UICollectionViewCell() }
//        return cell
//    }
//}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 60, height: collectionView.frame.height)
    }
}

