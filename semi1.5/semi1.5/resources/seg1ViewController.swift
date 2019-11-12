//
//  seg1ViewController.swift
//  semi1.5
//
//  Created by 박주연 on 03/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class seg1ViewController: UIViewController {

    @IBOutlet weak var Onbtn: UIButton!
    @IBOutlet weak var seg: UISegmentedControl!
    var makeString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destVC = segue.destination as! seg2ViewController

        let situation: String! = seg.titleForSegment(at: seg.selectedSegmentIndex)

        destVC.title = situation

        makeString = situation
        makeString += " 선택됨"

        // ViewController에서 정보를 받아 문자열 출력
        destVC.info = makeString

        // ViewController에서 Index를 받아 세그먼트 출력
        destVC.selectedSegmentIndex = seg.selectedSegmentIndex
    }


  

}
