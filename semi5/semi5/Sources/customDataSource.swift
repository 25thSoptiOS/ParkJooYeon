//
//  customDataSource.swift
//  semi5
//
//  Created by 박주연 on 21/11/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class CustomDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseCell", for: indexPath) as?
            CustomCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
}

//
//class CustomDataSource2: NSObject, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//    }
//}
