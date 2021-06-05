//
//  ViewController.swift
//  チェックワーク
//
//  Created by masahiro tono on 2021/06/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!

    let foodArray: [String] = ["ハンバーグ","カレー","焼肉","お寿司"]
    
    var index: Int = 0
    
    @IBAction func random() {
        let foodIndex = Int.random(in: 0...3)
        
        label2.text = foodArray[foodIndex]
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func next(){
        label2.text = foodArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
        
    }
}

