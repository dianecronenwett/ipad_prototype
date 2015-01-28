//
//  TableViewController.swift
//  ipad
//
//  Created by diane cronenwett on 1/26/15.
//  Copyright (c) 2015 diane cronenwett. All rights reserved.
//

import UIKit

class SignalsTableViewController: UITableViewController {
    
    var detailViewController: DetailViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewControllers = self.splitViewController!.viewControllers
        println(viewControllers)
        detailViewController = viewControllers[1] as? DetailViewController
        println(detailViewController)
    }

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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
