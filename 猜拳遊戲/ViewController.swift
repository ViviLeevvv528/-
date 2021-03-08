//
//  ViewController.swift
//  猜拳遊戲
//
//  Created by Vivi Lee on 2021/3/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pcPlayer: UIImageView!
    @IBOutlet weak var player: UIImageView!
    @IBOutlet weak var result: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //設定猜拳顯示的圖片:)
    let rockImage = UIImage(named: "rock")
    let paperImage = UIImage(named: "paper")
    let scissorImage = UIImage(named: "scissor")

    //pc隨機圖片array
    let pcPlayerImage = ["rock","paper", "scissor"]
    
    @IBAction func playgame(_ sender: Any) {
        
    }
    

}

