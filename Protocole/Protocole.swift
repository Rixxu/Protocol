//
//  Protocole.swift
//  Protocole
//
//  Created by Qaisar Rizwan on 18/04/2017.
//  Copyright © 2017 Qaisar Rizwan. All rights reserved.
//

import Foundation
protocol Spaceship : CustomStringConvertible{
    
    var isFlying : Bool { get set }
    mutating func lounch()
    mutating func land()
}

//Value type confirms the protocole
struct TIEFighter: Spaceship{
    
    var isFlying: Bool = false
    
    var description: String{
        
        if isFlying{
            
            return "TIE Fighter is flying"
        }else{
            
            return "TIE Fighter is not flying"
        }
    }
    
    mutating func lounch() {
        if isFlying{
            
            print("already laounched!")
        }else{
            
            isFlying = true
            print("Blast Off")
        }
    }
    
    
    mutating func land() {
        if isFlying {
            
            isFlying = false
            print("silence")
        }else{
            
            print("already landed")
        }
    }
    
}

//Reference type confirms the protocole
class MilleniumFalcon:Spaceship{
    
    var isFlying: Bool = false
    
    var description: String{
        
        if isFlying{
            
            return "The MilleniumFalcon is flying"
        }else{
            
            return "THe MilleniumFalcon is not flying"
        }
    }
    
    func lounch() {
        if isFlying{
            
            print("Great,kid. Don't get cocky")
        }else{
            
            isFlying = true
            print("Punch it")
        }
    }
    
    
    func land() {
        if isFlying {
            
            isFlying = false
            print("You know sometimes i amaze even myself...")
        }else{
            
            print("Chewie, we're home")
        }
    }
    
    func fireLaser() {
        print("PEW PEW PEW")
    }
}
