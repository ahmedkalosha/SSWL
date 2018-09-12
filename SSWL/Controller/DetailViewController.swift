//
//  DetailViewController.swift
//  SSWL
//
//  Created by Ahmed on 9/4/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var image = UIImage()
    var PackgeName = ""
    var PriceOfPackage = ""
    var detailPackge = ""
    
    @IBOutlet var img: UIImageView!
    @IBOutlet var PackageName: UILabel!
    @IBOutlet var PriceLabel: UILabel!
    @IBOutlet var TextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PackageName.text = PackgeName
        PriceLabel.text = PriceOfPackage 
        // Do any additional setup after loading the view.
    }

 
    @IBAction func Order(_ sender: Any) {
    }
}
