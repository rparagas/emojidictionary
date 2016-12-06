//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ray Paragas on 6/12/16.
//  Copyright © 2016 Ray Paragas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //tableview connection
    @IBOutlet weak var emojiDictTableView: UITableView!
    
    //declare emoji array
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiDictTableView.dataSource = self
        emojiDictTableView.delegate = self
        //run emoji function and save into declared emojis array
        emojis = makeEmojiArray()
    }
    
    // tells tableview how many rows to popuate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    // when cell/row is selected, perform segue
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // unhighlight selected row
        tableView.deselectRow(at: indexPath, animated:true)
        //saves selected row to next view controller
        let emoji = emojis[indexPath.row]
        // performs segue to next viewcontroller
        performSegue(withIdentifier: "selectSegue", sender: emoji)
    }
    
    // gets run when your about to perform segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // sends, sender information to DefinitionViewController
        let defVC = segue.destination as! DefinitionViewController
        defVC.passedEmoji = sender as! Emoji
    }
    
    // tells table what information to show in each row - indexPath.row asks what info is gonna be in that row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // save UItablecell object into cell var and save item in array into cell
        let cell = UITableViewCell()
        // save emoji object to emoji var, get symbol from object and place in cell
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiSymbol
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //creates emoji array
    func makeEmojiArray() -> [Emoji] {
        //create emoji objects using emoji init()
        let emoji1 = Emoji(emojiSymbol: "🐶", definition: "PUPPY", category: "Animals", birthYear: 2009)
        let emoji2 = Emoji(emojiSymbol: "💩", definition: "HAHA POOP", category: "Smiley", birthYear: 2011)
        let emoji3 = Emoji(emojiSymbol: "💀", definition: "DEATH", category: "Smiley", birthYear: 2011)
        let emoji4 = Emoji(emojiSymbol: "🙈", definition: "MONKEY SEE", category: "Animals", birthYear: 2010)
        let emoji5 = Emoji(emojiSymbol: "🙉", definition: "MONKEY HEAR", category: "Animals", birthYear: 2010)
        let emoji6 = Emoji(emojiSymbol: "🙊", definition: "MONKEY SPEAK", category: "Animals", birthYear: 2010)
  
        //suggested let
        let emojis = [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
        return emojis
    }

}

