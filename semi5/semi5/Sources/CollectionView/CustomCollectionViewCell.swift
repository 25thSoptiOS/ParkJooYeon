//
//  CustomCollectionViewCell.swift
//  semi5
//
//  Created by 박주연 on 20/11/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainContentLabel: UILabel!
    @IBOutlet weak var secretLabel: UILabel!
    @IBOutlet weak var anonymousNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var replyImage: UIImageView!
    @IBOutlet weak var replyCountLabel: UILabel!
}
