//
//  DetailViewController.swift
//  APPLE
//
//  Created by elias bloemendaal on 19/11/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var TitleText: UILabel!
    @IBOutlet weak var HeadImage: UIImageView!
    
 //   var Images = UIImage
    var Text = String()
    // var Images[]() = String()
    //var images = UIImage(named: <#T##String#>)
    var textImages = String()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TitleText.text = Text
        var images = UIImage(named: textImages)

        HeadImage.image = images
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
