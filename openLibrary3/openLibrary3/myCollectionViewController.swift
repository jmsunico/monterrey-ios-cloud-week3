//
//  myCollectionViewController.swift
//  openLibrary3
//
//  Created by José-María Súnico on 20160710.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class myCollectionViewController: UICollectionViewController {

	struct section{
		var name: String
		var images: [UIImage]
		init(name: String, images: [UIImage]){
			self.name = name
			self.images = images
		}
	}
	
	@IBAction func searchTextField(sender: UITextField) {
		print(googleCustomSearch(sender.text!))
	}
	
	func googleCustomSearch (term: String) -> [UIImage]{
		var images = [UIImage]()
		let urlPrefix = "https://www.googleapis.com/customsearch/v1?key=AIzaSyBy5Cq8SQ0dscc8XYD3SNgo7PNNuTujgMg&cx=007652608310439950328:jhyvpayzsq0&searchType=image&q="
		let url = NSURL(string: urlPrefix + term)
		let data = NSData(contentsOfURL: url!)
		do{
			let jsonDict = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves) as! NSDictionary
			let itemsArray = jsonDict["items"] as! NSArray
			for item in itemsArray{
				let linkString = (item as! NSDictionary)["link"] as! String
				let linkURL = NSURL(string: linkString)
				let linkData = NSData(contentsOfURL: linkURL!)
				if let image = UIImage(data: linkData!){
					images.append(image)
				}
			}
		} catch _{
			print("Something nasty happened...")
		}
		return images
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
