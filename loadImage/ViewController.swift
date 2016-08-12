//
//  ViewController.swift
//  loadImage
//
//  Created by Madhukar Bommala on 2/7/16.
//  Copyright © 2016 Madhukar. All rights reserved.
//

import UIKit
import CoreMedia
//import CoreLocation

class ViewController: UIViewController {
    
//    var namloc : [(Int, CLLocationCoordinate2D)]

    @IBOutlet weak var myName: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(sender: AnyObject) {
        myImage.contentMode = .ScaleAspectFill
        myImage.image=UIImage(named: (myName.text?.lowercaseString)!)
        
        myImage.resignFirstResponder()
        myName.resignFirstResponder()
    }

    @IBAction func myTextSelected(sender: AnyObject) {
        myName.text=nil
    }
}

