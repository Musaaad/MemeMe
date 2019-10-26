//
//  MemeDetailViewController.swift
//  MemeMeV1
//
//  Created by Musaad on 10/19/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    @IBOutlet weak var memeImage: UIImageView!
    
     var memes: Meme!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memeImage.image = memes.memedImage
        
        
    }
    
   



}
