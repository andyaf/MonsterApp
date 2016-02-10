//
//  MonsterImg.swift
//  MonsterApp
//
//  Created by Andrew2 on 2/10/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
        //notice, becuase of init stuff, when the app first loads, playIdleAnimation will be called 
        
    }
    
    func playIdleAnimation() {
        var imgArray = [UIImage]()
        
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
        //we are inheriting properties from UIImageView

    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        //default inage once animation ends
        self.animationImages = nil
        //Clear animation images
        
        var imgArray = [UIImage]()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
        
        
    }
    
    func idleImage() {
        
       self.image = UIImage(named: "idle1.png")
       self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
            
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
        
        
    }
    
}