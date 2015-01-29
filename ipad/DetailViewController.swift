//
//  DetailViewController.swift
//  ipad
//
//  Created by diane cronenwett on 1/27/15.
//  Copyright (c) 2015 diane cronenwett. All rights reserved.
//

import UIKit

let signalImages = ["fb_feeditem", "avatar_100", "avatar_65", "fb_feeditem"]
let birthdayImages = ["fb_feeditem", "avatar_100", "avatar_65"]

class DetailViewController: UIViewController {
    @IBOutlet weak var feedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func selectSignal(index: Int) {
        println("Selected Signal \(index)")
        feedImage.image = UIImage(named: signalImages[index])
    }

    func selectBirthday(index: Int) {
        println("Selected Birthday \(index)")
        feedImage.image = UIImage(named: birthdayImages[index])
    }
}
