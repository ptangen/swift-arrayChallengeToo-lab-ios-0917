//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
        var results = ""
        
        if line.isEmpty{
            results = "Welcome \(name), you're first in line!";
            line.append(name)
        } else if name == "Billy Crystal"{
            results = "Welcome Billy Crystal! You can sit wherever you like."
            line.insert(name, at: 0)
        } else if name == "Meg Ryan"{
            results = "Welcome Meg Ryan! You can sit wherever you like."
            line.insert(name, at: 0)
        } else {
            results = "Welcome \(name), you're number \(line.count + 1) in line."
            line.append(name)
        }
        
        return results
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        var results = ""
        if line.isEmpty{
            results = "There is no one to be served."
        } else {
            results = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return results

    }
    
    
    // 3
    func lineDescription() -> String {
        
        var description = ""
        if line.isEmpty{
            description = "The line is currently empty."
        } else {
            description = "The line is:"
            for (index, customer) in line.enumerated() {
                description = "\(description)\n\(index+1). \(customer)"
            }
        }
        return description

    }
    
}
