//
//  ViewController.swift
//  Sound
//
//  Created by Towa Aoyagi on 2021/01/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //変数宣言
    @IBOutlet var drum_Button: UIButton!
    @IBOutlet var piano_Button: UIButton!
    @IBOutlet var guitar_Button: UIButton!

   //ドラムのサウンドファイルを読み込んでプレイヤーを作る処理
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"drumSound")!.data)
    let pianoSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name: "guitarSound")!.data)


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func touchDownDrumButton(){
        drum_Button.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchUpDrumButton(){
        drum_Button.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func touchDownPianoButton(){
        piano_Button.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
        
    }
    
    @IBAction func touchUpPianoButton(){
        piano_Button.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton(){
        guitar_Button.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
        
    }
    
    @IBAction func touchUpGuitarButton(){
        guitar_Button.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    
//    func touchDownButton(image_name:String,audio_name:AVAudioPlayer,button_name:UIButton){
//        button_name.setImage(UIImage(named: image_name), for: .normal)
//        audio_name.currentTime = 0
//        audio_name.play()
//    }
//
//    func touchUpButton(button_name:UIButton,image_name:String){
//        button_name.setImage(UIImage(named:image_name), for: .normal)
//    }

}

