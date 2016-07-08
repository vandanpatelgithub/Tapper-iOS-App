//
//  ViewController.swift
//  Tapper
//
//  Created by Preeti Patel on 08/07/16.
//  Copyright © 2016 Vandan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var howManyTapsTxt: UITextField!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    
    @IBOutlet weak var tapLabel: UILabel!
    
    @IBAction func onCoinTap(sender: UIButton!){
        
        currentTaps += 1;
        
        updatetapLabel();
        
        if isGameOver(){
            restartGame()
        }
        
        
    }
    
    @IBAction func onPlayClick(sender: UIButton!){

        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            
            logoImage.hidden = true;
            howManyTapsTxt.hidden = true;
            playButton.hidden = true;
            
            tapButton.hidden = false;
            tapLabel.hidden = false;
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updatetapLabel()
          
        }
    }
    
    func restartGame() {
        
        maxTaps = 0
        
        howManyTapsTxt.text = ""
        
        logoImage.hidden = false
        howManyTapsTxt.hidden = false
        playButton.hidden = false
        
        tapButton.hidden = true;
        tapLabel.hidden = true;
    }
    
    func isGameOver() -> Bool {
        
        if currentTaps > maxTaps{
            return true
        }
        else{
            return false
        }
    }
    
    func updatetapLabel() {
          tapLabel.text = "\(currentTaps) Taps"
    }
    
}

