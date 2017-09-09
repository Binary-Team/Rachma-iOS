//
//  RummyGameSetting.swift
//  Rachma
//
//  Created by Marwen Doukh on 9/9/17.
//  Copyright © 2017 Marwen Doukh. All rights reserved.
//

import UIKit


class RummyGameSetting: UIViewController {
    
    var playerNumber = 2
    var score = 500
    
    @IBOutlet weak var playerNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // change players number
    @IBAction func increasePlayersNumber(_ sender: Any) {
        if(playerNumber<4){
            playerNumber += 1
            playerNumberLabel.text=String(playerNumber)
        }
    }
    
    
    @IBAction func decreasePlayersNumber(_ sender: Any) {
        if(playerNumber>2){
            playerNumber -= 1
            playerNumberLabel.text=String(playerNumber)
        }

    }
    
   
    @IBAction func increaseScore(_ sender: Any) {
        score+=50
        scoreLabel.text=String(score)
    }
    
  
    
    @IBAction func decreaseScore(_ sender: Any) {
        if(score>150){
            score-=50
            scoreLabel.text=String(score)
            
        }

    }
    
}

