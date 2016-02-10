//
//  DragImg.swift
//  MonsterApp
//
//  Created by Andrew2 on 2/9/16.
//  Copyright © 2016 Andrew. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    //We are subclassing the UIImage view
    
    var originalPosition : CGPoint!
    var dropTarget : UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center
        //self = imageview
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first{
            let position = touch.locationInView(self.superview)
            self.center = CGPointMake(position.x, position.y)
            //whereever your finger is dragging, let's move the object
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let touch = touches.first, let target = dropTarget {
            //two if lets, if value in touch & value in target, go into code
            
            let position = touch.locationInView(self.superview)
            
            if CGRectContainsPoint(target.frame, position) {
                //if it is anywhere inside frame, that means we dropped it on monster
                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "onTargetDropped", object: nil))
                //we are calling NSNotification center, we are grabbing efault center, and then we are posting a notifcation, we are creating a new notification called "onTargetDropped"
                
                
                
                
            }
            
            
        }
        
        
        
       self.center = originalPosition
            
        }
        
    
    
}
