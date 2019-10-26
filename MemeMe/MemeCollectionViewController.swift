//
//  MemeCollectionViewController.swift
//  MemeMeV1
//
//  Created by Musaad on 10/19/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class MemeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {


    @IBOutlet var MemeCollection: UICollectionView!
    
    var memes: [Meme]! {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }
    

    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!

    override func viewDidLoad() {
        super.viewDidLoad()

       let space:CGFloat = 3.0
       let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
       flowLayout.minimumInteritemSpacing = space
       flowLayout.minimumLineSpacing = space
       flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.collectionView.reloadData()
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
        
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath as IndexPath) as! MemeCollectionViewCell
        let meme = memes[indexPath.row]
        
        cell.memeImageView?.image = meme.memedImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let MD = self.storyboard?.instantiateViewController(withIdentifier: "MemeDetail") as! MemeDetailViewController
        MD.memes = self.memes[indexPath.row]
        navigationController!.pushViewController(MD, animated: true)
        
         //let meme = memes[indexPath.row]
        //performSegue(withIdentifier: "MemeDetail", sender: meme)
        
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // if segue.identifier == "MemeDetail" {
         //   let memeDetailViewController = segue.destination as! MemeDetailViewController
           // memeDetailViewController.memes = sender as? Meme}
   // }

    
    
    


    
    }
    




