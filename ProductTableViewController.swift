//
//  ProductTableViewController.swift
//  APPLE
//
//  Created by elias bloemendaal on 18/11/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

   // var appleProducts = [Products]()

    var appleProducts = [String]()
    var imageArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = ["applewatch","imac","ipad","iphone","macbook"]
        appleProducts = ["APPLE WATCH","IMAC","IPAD","IPHONE","MACBOOK"]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  self.appleProducts.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        // var products : Products
        // products = appleProducts[indexPath.row]
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        
        var currentPhoto = imageArray[indexPath.row]
       
        cell.imageView!.image = UIImage(named: currentPhoto)
        cell.textLabel?.text = appleProducts[indexPath.row]
        
        cell.accessoryType =  UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let DestinationViewController : DetailViewController = segue.destinationViewController as! DetailViewController
        
       // DestinationViewController.Images = imageArray[indexPath.row]
            DestinationViewController.Text = appleProducts[indexPath.row]
            DestinationViewController.textImages = imageArray[indexPath.row]
        
    }
}
