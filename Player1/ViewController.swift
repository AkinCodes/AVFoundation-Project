//
//  ViewController.swift
//  Player1
//
//  Created by Akin on 22/09/2021.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    //
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        playVideo()
    }
    
    
    private func playVideo() {
           guard let path = Bundle.main.path(forResource: "JL", ofType:"MOV") else {
               debugPrint("Justice league video not found")
               return
           }
           let player = AVPlayer(url: URL(fileURLWithPath: path))
           let playerController = AVPlayerViewController()
           playerController.player = player
           present(playerController, animated: true) {
               player.play()
           }
       }
    
    

}

