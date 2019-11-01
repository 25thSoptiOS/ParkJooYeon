//
//  ViewController2.swift
//  semi2_세번째 실습
//
//  Created by 박주연 on 26/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit
import CHIPageControl

class ViewController2: UIViewController {

    @IBOutlet weak var BannerCV: UICollectionView!
    @IBOutlet weak var paging: CHIPageControlAleppo!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBanner()
        
        BannerCV.delegate = self
        BannerCV.dataSource = self
       
    }
}

extension ViewController2: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if collectionView == self.workCV {
//            return appDelegate.workList.count
//        }
        return appDelegate.bannerList.count
        
    
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        self.paging.set(progress: currentPage, animated: true)
    }

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if collectionView == self.workCV {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkCell", for: indexPath) as! WorkCell
//
//            let work = appDelegate.workList[indexPath.row]
//
//            cell.workIdx = work.workIdx
//            cell.workImg.image = work.workMainImg
//
//            return cell
//        }
//        else {
            let bannerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
            
            let banner = appDelegate.bannerList[indexPath.row]
            bannerCell.banner?.image = banner.bannerImg
            
            // bannerCell.banner = bannerList.
            return bannerCell
//        }
    }
}

extension ViewController2{
    func setBanner() {
        let banner1 = Banner(bannerName: "mainImage")
        let banner2 = Banner(bannerName: "mainImage01")
        let banner3 = Banner(bannerName: "mainImage02")
        
        appDelegate.bannerList = [banner1, banner2, banner3]
        
    }
    
}
