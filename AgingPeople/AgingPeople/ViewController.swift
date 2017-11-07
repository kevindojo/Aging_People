//
//  ViewController.swift
//  AgingPeople
//
//  Created by Kevin Pham on 11/6/17.
//  Copyright © 2017 Kevin Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let nameBank = [
        ("Captain America"), ("Iron Man"), ("Hulk"), ("Spiderman"), ("Hawk Eye"), ("Ant Man"), ("Black Widow"), ("Wasp"), ("Black Panther")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (nameBank.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = nameBank[indexPath.row]
        
        let age = arc4random_uniform(90)+5
        cell.detailTextLabel?.text = "\(age) years old"
        return cell
    }
}
