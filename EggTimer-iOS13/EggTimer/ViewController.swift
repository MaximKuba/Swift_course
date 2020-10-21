//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer!
    var counter = 0
    var timer = Timer()
    var temp = 0
    
     
    let eggTimes = ["Soft": 10,"Medium": 20,"Hard": 30]
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        counter = eggTimes[hardness]!
        progressBar.progress = 0.0
        temp = 0
        titleLabel.text = hardness

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
          
    }
    
    @objc func updateTime() {
        //example functionality
        if temp < counter {
            temp += 1
            progressBar.progress = Float(temp)/Float(counter)
            
            
        }
        else {
            titleLabel.text = "READY"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
            timer.invalidate()
        }
    }
    
    

}
