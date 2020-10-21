//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    
    let storyPart: String
    let pick1: String
    let pick2: String
    let pick1Destination: Int
    let pick2Destination: Int
    
    
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        
        storyPart = title
        pick1 = choice1
        pick1Destination = choice1Destination
        pick2 = choice2
        pick2Destination = choice2Destination
        
    }
}
