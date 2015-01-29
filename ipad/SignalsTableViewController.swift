//
//  TableViewController.swift
//  ipad
//
//  Created by diane cronenwett on 1/26/15.
//  Copyright (c) 2015 diane cronenwett. All rights reserved.
//

import UIKit

class SignalsTableViewController: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var birthdayCollectionView: UICollectionView!
    
    var detailViewController: DetailViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewControllers = self.splitViewController!.viewControllers
        println(viewControllers)
        detailViewController = viewControllers[1] as? DetailViewController
        println(detailViewController)
        
        birthdayCollectionView.delegate = self
        birthdayCollectionView.dataSource = self
    }
    
    
    // --- Signals Table Code ---
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("Signals-\(indexPath.row)") as UITableViewCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Tapped row \(indexPath.row)")
        detailViewController?.selectSignal(indexPath.row)
    }
    
    // --- Birthday Collection Code ---
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCellWithReuseIdentifier("Birthdays-\(indexPath.row % 3)", forIndexPath: indexPath) as UICollectionViewCell
           }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) { 
        detailViewController?.selectBirthday(indexPath.row)
        
    }
}
