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
    
    var emojis = ["🐶","💩","💀","🙈","🙉","🙊"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiDictTableView.dataSource = self
        emojiDictTableView.delegate = self
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
        defVC.emoji = sender as! String
    }
    
    // tells table what information to show in each row - indexPath.row asks what info is gonna be in that row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // save UItablecell object into cell var and save item in array into cell
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

