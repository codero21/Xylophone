//
//  ViewController.swift
//  Xylophone
//
//  Created by Rollin Francois on 4/14/20.
//  Copyright © 2020 Francois Technology. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        //print(sender.currentTitle!)
        print("Start")
        playSound(soundName: sender.currentTitle!)
        
        // Reduce Button opacity when pressed
        sender.alpha = 0.5
        
        // Code should execute after 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.2){
            
            // Bring button's/sender's opacity back up to full
            sender.alpha = 1.0
            
            print("End")
            
        }

        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}

