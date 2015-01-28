//
//  ContentViewController.swift
//  ipad
//
//  Created by diane cronenwett on 1/26/15.
//  Copyright (c) 2015 diane cronenwett. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var contentScroll: UIScrollView!

    @IBOutlet var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentScroll.delegate = self
        contentScroll.contentSize = CGSize(width:contentView.bounds.width, height:contentView.frame.size.height * 2)
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   
}
