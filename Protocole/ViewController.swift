//
//  ViewController.swift
//  Protocole
//
//  Created by Qaisar Rizwan on 18/04/2017.
//  Copyright © 2017 Qaisar Rizwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tieFighter = TIEFighter()
    var milleniumFlacon = MilleniumFalcon()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tieFighter.lounch()
        milleniumFlacon.land()
        milleniumFlacon.fireLaser()
        
        var spaceshipArray: Array<Spaceship> = [tieFighter, milleniumFlacon]
       
        for spaceship in spaceshipArray{
            
            print("\(spaceship.description)")
            print("\(spaceship)")
        }

    }

  
}

