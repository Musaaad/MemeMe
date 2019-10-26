//
//  MemeTableViewController.swift
//  MemeMeV1
//
//  Created by Musaad on 10/19/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController {

    var memes: [Meme]! {
       return (UIApplication.shared.delegate as! AppDelegate).memes
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath)
        let meme = memes[indexPath.row]
        
        
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = meme.topText + " ... " + meme.bottomText
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let MD = self.storyboard?.instantiateViewController(withIdentifier: "MemeDetail") as! MemeDetailViewController
        MD.memes = self.memes[indexPath.row]
        navigationController!.pushViewController(MD, animated: true)
    }
    

    
    
    
    
   
}
