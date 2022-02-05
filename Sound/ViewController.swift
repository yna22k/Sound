//
//  ViewController.swift
//  Sound
//
//  Created by 金妍廷 on 2022/02/04.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムを表示する箱
    @IBOutlet var drumButton: UIButton!
    //ピアノを表示する箱
    @IBOutlet var pianoButton: UIButton!
    //ギターを表示する箱
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイル
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    //ピアノのサウンドファイル
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    //ギターのサウンドファイル
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムのタップが始まった時
    @IBAction func touchDownDrumButton(){
        //タップされた時の画像をセット
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //音巻き戻し
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
    
    //ピアノのタップが始まった時
    @IBAction func touchDownPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
    
    //ギターのタップが始まった時
    @IBAction func touchDownGuitarButton(){
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
    }
    
    //ドラムのタップが終わった時
    @IBAction func touchUpDrumButton(){
        //画像をセット
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    //ピアノのタップが終わった時
    @IBAction func touchUPPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    //ギターのタップが終わった時
    @IBAction func touchUPGuitarButton(){
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}

