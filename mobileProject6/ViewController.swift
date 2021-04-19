//
//  ViewController.swift
//  mobileProject6
//
//  Created by Christian Robinson on 4/16/21.
//

import UIKit

class ViewController: UIViewController {

    class ViewController: UIViewController {
        
        
        @IBOutlet weak var swipeLabel1: UILabel!
       
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
       
            // The user can interact with the label object
            swipeLabel1.isUserInteractionEnabled = true
            
            
            // Create swipe gesture
            let swipeGestureObject = UISwipeGestureRecognizer(target: self, action: #selector(self.swipe(recognizer:)))
            
            // Connect the swipe gesture to our label
            swipeLabel1.addGestureRecognizer(swipeGestureObject)
            
      
            swipeGestureObject.direction = .up
        
        }
        
        // Functionality for the swipe gesture
        @objc func swipe(recognizer: UISwipeGestureRecognizer) {
            performSegue(withIdentifier: "showDetail", sender: self)
            
       
            
        }
        
        }
        
        

    }

 

