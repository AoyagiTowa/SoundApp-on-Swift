//
//  ViewController.swift
//  Sound
//
//  Created by Towa Aoyagi on 2021/01/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
   //ドラムのサウンドファイルを読み込んでプレイヤーを作る処理
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func tapDrumButton(){
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }


}

