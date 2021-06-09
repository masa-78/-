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
        
        button1.backgroundColor = .purple
        button2.backgroundColor = .purple
        
        button1.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button2.setTitleColor(UIColor.white, for: UIControl.State.normal)
        
        button1.layer.cornerRadius = 10
        button2.layer.cornerRadius = 10
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
        
        self.viewRed()
    }
    
    @IBAction func next(){
        label2.text = foodArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
        
        self.viewRed()
        
    }
    func viewRed() {
        
        if label2.text == "焼肉" {
            view.backgroundColor = UIColor.red
        }
        else {
            view.backgroundColor = UIColor.white
        }
    }
}

