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
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // recieves information from main view controller and sets emojiLabel to recieved emoji
        emojiLabel.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
