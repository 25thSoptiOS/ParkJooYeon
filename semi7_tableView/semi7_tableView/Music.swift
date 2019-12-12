//
//  Music.swift
//  semi7_tableView
//
//  Created by 박주연 on 06/12/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import Foundation
import UIKit

// Music 모델입니다.
// 멤버 변수가 총 세 개인 Music 구조체를 생성했습니다.
struct Music {
    var albumImg: UIImage?
    var musicTitle: String
    var singer: String
    
    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named: coverName)
        self.musicTitle = title
        self.singer = singer
    }
}
