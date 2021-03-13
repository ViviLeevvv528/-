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
    @IBOutlet weak var scissorBtn: UIButton!
    @IBOutlet weak var rockBtn: UIButton!
    @IBOutlet weak var paperBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //設定猜拳顯示的圖片
    let rockImage = UIImage(named: "rock")
    let paperImage = UIImage(named: "paper")
    let scissorImage = UIImage(named: "scissor")
    //pc隨機圖片array
    let pcPlayerImage = ["rock","paper", "scissor"]
    func pcPlay() {
        pcPlayer.image = UIImage(named: pcPlayerImage.randomElement()!)
    }

//    按鈕定義三種出拳
    @IBAction func playGameAction(_ sender: UIButton) {
        if sender == scissorBtn{
            player.image = scissorImage
        }
        if sender == rockBtn{
            player.image = rockImage
        }
        if sender == paperBtn{
            player.image = paperImage
        }
        pcPlay()
    }

    //    設定結果顯示圖片
        let winImage = UIImage(named: "win")
        let loseImage = UIImage(named: "lose")
        let winwinImage = UIImage(named: "try")
    func resultImage() {
        if player.image == pcPlayer.image{
            result.image =  UIImage(named: "try")
        }
        else if player.image == scissorImage{
            if pcPlayerImage == "rock"{
                result.image = UIImage(named: "lose")
            }
            else result.image = uiimage(named: "win")
        }
        else if player.image == rockImage{
            if pcPlayerImage == UIImage(named:"paper"){
                result.image = UIImage(named: "lose")
            }
            else result.image = uiimage(named: "win")
        }
        else if player.image == paperImage{
            if pcPlayerImage == UIImage(named:"scissor"){
                result.image = UIImage(named: "lose")
            }
            else result.image = uiimage(named: "win")
        }
    
    }

}

