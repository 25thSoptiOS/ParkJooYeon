//
//  MusicCell.swift
//  semi7_tableView
//
//  Created by 박주연 on 06/12/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {
    
    // MusicTable - MusicCell - ContentView - Album
    @IBOutlet var albumImg: UIImageView!
    // MusicTable - MusicCell - ContentView - Title
    @IBOutlet var musicTitle: UILabel!
    // MusicTable - MusicCell - ContentView - Singer
    @IBOutlet var singer: UILabel!
    
    // 객체 초기화
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        albumImg.layer.cornerRadius = 3
        albumImg.layer.masksToBounds = true
    }
}
