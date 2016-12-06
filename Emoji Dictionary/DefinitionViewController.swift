//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ray Paragas on 6/12/16.
//  Copyright © 2016 Ray Paragas. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    
    var passedEmoji = Emoji(emojiSymbol: "", definition: "", category: "", birthYear: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // recieves information from main view controller and sets emojiLabel to recieved emoji
        emojiLabel.text = passedEmoji.emojiSymbol
        definitionLabel.text = passedEmoji.definition
        typeLabel.text = "Category: \(passedEmoji.category)"
        birthLabel.text = "Origin Year: \(passedEmoji.birthYear)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
