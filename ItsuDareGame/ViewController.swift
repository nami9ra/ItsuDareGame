//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 渡辺奈実 on 2020/09/14.
//  Copyright © 2020 Watanabe nami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var whenLabel: UILabel!
    @IBOutlet var whereLabel: UILabel!
    @IBOutlet var whoLabel: UILabel!
    @IBOutlet var howLabel: UILabel!
    
    let whenArray: [String] = ["一年前", "1週間", "昨日", "今日", "一昨日", "さっき"]
    let whereArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで", "プールで", "舞台で"]
    let whoArray: [String] = ["僕が", "大統領が", "先生が", "友達が", "父が", "犬が"]
    let howArray: [String] = ["叫んだ", "演説した", "怒った", "踊った", "吠えた", "転んだ"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        //それぞれのラベルに配列の要素を追加する
        whenLabel.text = whenArray[index]
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        howLabel.text = howArray[index]
        
        //indexの値を+1する
        index += 1
        
        //indexの値が3より大きくなったら0に戻す
        if index > 5{
            index = 0
        }
    }

    @IBAction func reset(){
        //それぞれのラベルを元に戻す
        whenLabel.text = "---"
        whereLabel.text = "---"
        whoLabel.text = "---"
        howLabel.text = "---"
        
        //indexを初期化する
        index = 0
        
    }
    
    @IBAction func random(){
        //乱数を生成して，それぞれのindexに入れる
        let whenIndex = Int.random(in: 0...5)
        let whereIndex = Int.random(in: 0...5)
        let whoIndex = Int.random(in: 0...5)
        let howIndex = Int.random(in: 0...5)
        
        //コンソールに出力して，それぞれの値を確かめる
        print("いつ：\(whenIndex)")
        print("どこで：\(whereIndex)")
        print("だれが：\(whoIndex)")
        print("どうした：\(howIndex)")
        
        //それぞれのラベルに要素を追加する
        whenLabel.text = whenArray[whenIndex]
        whereLabel.text = whereArray[whereIndex]
        whoLabel.text = whoArray[whoIndex]
        howLabel.text = howArray[howIndex]
    }

}

