//
//  ViewController.swift
//  MonsterApp
//
//  Created by Andrew2 on 2/8/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: MonsterImg!
    //is of type MonsterImg, will call MonsterImg class
    //we also changed the picture to type UIImage view on right side bar, review
    
    @IBOutlet weak var foodImg: DragImg!
    
    @IBOutlet weak var heartImg: DragImg!
    
    
    @IBOutlet weak var penaltyOne: UIImageView!
    
    @IBOutlet weak var penatlyTwo: UIImageView!
    
    @IBOutlet weak var penaltyThree: UIImageView!
   
    
    
    
    let DIM_ALPHA: CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    let MAX_PENALTIES = 3
    // we put this in caps to let programmer know it is a constant
    
    var penalties = 0
    var timer: NSTimer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg
        //set the drop target
        
        penaltyOne.alpha = DIM_ALPHA
        penatlyTwo.alpha = DIM_ALPHA
        penaltyThree.alpha = DIM_ALPHA
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        //create observer for notifcation and monitor it
        //selector is the function your are gonna call
        
        startTimer()
        
          
    }
    
    
    func itemDroppedOnCharacter(notif:AnyObject) {
        
        print("Item Dropped on Character")
        
    }
    
    func startTimer() {
        if timer != nil {
        timer.invalidate()
        
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "changeGameState", userInfo: nil, repeats: true)
    }
    
    func changeGameState() {
        penalties++
    
        if penalties == 1 {
            penaltyOne.alpha = OPAQUE
            penatlyTwo.alpha = DIM_ALPHA
        } else if penalties == 2 {
            penatlyTwo.alpha = OPAQUE
            penaltyThree.alpha = DIM_ALPHA
            
        } else if penalties >= 3 {
            penaltyThree.alpha = OPAQUE
        } else {
            penaltyOne.alpha = DIM_ALPHA
            penatlyTwo.alpha = DIM_ALPHA
            penaltyThree.alpha = DIM_ALPHA
        }

        if penalties >= MAX_PENALTIES{
            gameOver()
            
            
        }
    
    }
    
    func gameOver() {
        timer.invalidate()
        monsterImg.playDeathAnimation()
    }
    
}

