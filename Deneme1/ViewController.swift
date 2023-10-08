//
//  ViewController.swift
//  Deneme1
//
//  Created by Eren lifetime on 2.10.2023.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressStick: UIProgressView!
        let patatoTimer = ["hPatato":21,"kPatato":31,"pPatato":41]
        let timer = Timer()
        var totalTime = 0
        var secondsPassed = 0
    @IBAction  func hardnessSelected(_ sender: UIButton) {
            timer.invalidate()
            let hardness = sender.currentTitle!
            totalTime = patatoTimer[hardness]!
            
        progressStick.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
@objc func updateTimer(){
               if secondsPassed < totalTime{
                    secondsPassed += 1
                   progressStick.progress = Float(secondsPassed) / Float(totalTime)
                   print(Float(secondsPassed) / Float(totalTime))
               }else{
                   timer.invalidate()
                   titleLabel.text = "BİTTİ!"
               }
            }
        }
