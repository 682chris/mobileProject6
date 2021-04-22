//
//  secondViewController.swift
//  mobileProject6
//
//  Created by Christian Robinson on 4/18/21.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var heroImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    
                
                view.backgroundColor = .gray
                setupTap()
            }

            func setupTap() {
                let touchDown = UILongPressGestureRecognizer(target:self, action: #selector(didTouchDown))
                touchDown.minimumPressDuration = 0
                view.addGestureRecognizer(touchDown)
            }

            @objc func didTouchDown(gesture: UILongPressGestureRecognizer) {
                if gesture.state == .began {
                    view.backgroundColor = .systemPurple
                } else if gesture.state == .ended || gesture.state == .cancelled {
                    view.backgroundColor = .gray
                }
            }
        }

