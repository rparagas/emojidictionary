//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Ray Paragas on 7/12/16.
//  Copyright © 2016 Ray Paragas. All rights reserved.
//

import Foundation

class Emoji {
    // class variables
    var emojiSymbol = ""
    var definition = ""
    var category = ""
    var birthYear = 0
    
    //consturctor method
    init(emojiSymbol: String, definition: String, category: String, birthYear: Int ) {
        self.emojiSymbol = emojiSymbol
        self.definition = definition
        self.category = category
        self.birthYear = birthYear
    }
    
}
