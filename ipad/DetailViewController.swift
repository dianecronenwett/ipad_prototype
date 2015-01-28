//
//  DetailViewController.swift
//  ipad
//
//  Created by diane cronenwett on 1/27/15.
//  Copyright (c) 2015 diane cronenwett. All rights reserved.
//

import UIKit

let images = ["fb_feeditem", "avatar_100", "avatar_65"]

class DetailViewController: UIViewController {
    @IBOutlet weak var feedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func selectSignal(index: Int) {
        println("Selected Signal \(index)")
        feedImage.image = UIImage(named: images[index])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
