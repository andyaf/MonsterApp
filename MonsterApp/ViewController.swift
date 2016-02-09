//
//  ViewController.swift
//  MonsterApp
//
//  Created by Andrew2 on 2/8/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: UIImageView!
    
    @IBOutlet weak var foodImg: DragImg!
    
    @IBOutlet weak var heartImg: DragImg!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    var imgArray = [UIImage]()
        
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
       
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("I just touched the screen")
    }

    
}

