//
//  ViewController.swift
//  check2
//
//  Created by 三上翔吾 on 2020/06/07.
//  Copyright © 2020 Mikami Sho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var numberArray = ["1番目","2番目","3番目","4番目","5番目"]
    var nameArray = ["ジョン","タロウ","ジロウ","イチロウ","サブロウ"]
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        numberLabel.text = numberArray[count]
        nameLabel.text = nameArray[count]
    }
    
    func text() {
        numberLabel.text = numberArray[count]
        nameLabel.text = nameArray[count]
    }
    
    @IBAction func backButton(_ sender: Any) {
        count -= 1
        if count < 0 {
            count = 4
        }
        
        text()
        
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        count += 1
        if count > 4 {
            count = 0
        }
        
        text()    }
    
    @IBAction func first(_ sender: Any) {
        count = 0
        text()
    }
    
    @IBAction func second(_ sender: Any) {
        count = 1
        
        text()
    }
    
    @IBAction func third(_ sender: Any) {
        count = 2
        text()
    }
    
    
}
