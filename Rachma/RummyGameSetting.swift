//
//  RummyGameSetting.swift
//  Rachma
//
//  Created by Marwen Doukh on 9/9/17.
//  Copyright © 2017 Marwen Doukh. All rights reserved.
//

import UIKit


class RummyGameSetting: UIViewController {
    
    var playersNumber = 2
    var finalScore = 500
    
    @IBOutlet weak var playerNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var player1Name: UITextField!
    
    @IBOutlet weak var player2Name: UITextField!
    
    @IBOutlet weak var player3Name: UITextField!
    
    @IBOutlet weak var player4Name: UITextField!
    
    
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
        if(playersNumber<4){
            playersNumber += 1
            playerNumberLabel.text=String(playersNumber)
        }
        editTextFieldsVisibility()
    }
    
    
    @IBAction func decreasePlayersNumber(_ sender: Any) {
        if(playersNumber>2){
            playersNumber -= 1
            playerNumberLabel.text=String(playersNumber)
        }
        editTextFieldsVisibility()
    }
    
   
    @IBAction func increaseScore(_ sender: Any) {
        finalScore+=50
        scoreLabel.text=String(finalScore)
    }
    
  
    
    @IBAction func decreaseScore(_ sender: Any) {
        if(finalScore>150){
            finalScore-=50
            scoreLabel.text=String(finalScore)
        }
    }
    
    
    func editTextFieldsVisibility(){
        // hide player name text fields
        if(playersNumber==3)
        {
            player3Name.isHidden=false
            player4Name.isHidden=true
        }
        else if(playersNumber==4)
        {
            player3Name.isHidden=false
            player4Name.isHidden=false
        }
        else{
            player3Name.isHidden=true
            player4Name.isHidden=true
        }

    }
    
    @IBAction func goButton(_ sender: Any) {
        self.performSegue(withIdentifier: "rummyscorekeeping", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let rummyScorekeeping = segue.destination as! RummyScorekeeping
        rummyScorekeeping.finalScore = self.finalScore
        rummyScorekeeping.playersNumber = self.playersNumber
        //players names
        rummyScorekeeping.player1Name = self.player1Name.text!
        rummyScorekeeping.player2Name = self.player2Name.text!
        if(playersNumber==3){
            rummyScorekeeping.player3Name = self.player3Name.text!

        }else if(playersNumber==4){
            rummyScorekeeping.player3Name = self.player3Name.text!
            rummyScorekeeping.player4Name = self.player4Name.text!
        }

    }

    
    
    
}

