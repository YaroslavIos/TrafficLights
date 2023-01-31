//
//  ViewController.swift
//  TrafficLights
//
//  Created by Ярослав Любиченко on 31.1.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startBotton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2

        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2

        greenLight.layer.cornerRadius = greenLight.frame.width / 2

        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        startBotton.layer.cornerRadius = 12
    }

    @IBAction func startButtonPressed() {
        
        startBotton.setTitle("NEXT", for: .normal)

        if redLight.alpha != 1 {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
        } else if yellowLight.alpha != 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else if greenLight.alpha != 1 {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            redLight.alpha = 0.3
        }
        }

    }
