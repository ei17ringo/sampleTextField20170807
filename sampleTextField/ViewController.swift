//
//  ViewController.swift
//  sampleTextField
//
//  Created by Eriko Ichinohe on 2017/08/30.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //キーボードのリターンキーが押された時発動
    @IBAction func tapReturn(_ sender: UITextField) {
        
        //テキストフィールドに入力されてる文字をデバッグエリアに表示
        print(sender.text!)
        
        //ヒント(この場合、「見つかった」とデバッグエリアに表示されます)
//        let str:String! = "abcdefghij"
        let str:String! = sender.text!
        if let r = str.range(of: "test") {
            print("見つかった")
            myLabel.text = "testです"
        } else {
            print("見つからない")
            myLabel.text = str
        }

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

