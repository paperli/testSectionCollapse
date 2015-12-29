//
//  ViewController.swift
//  testSection
//
//  Created by paper on 2015/12/25.
//  Copyright © 2015年 paper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.tableView.contentInset = UIEdgeInsets.init(top: 20, left: 0, bottom: 0, right: 0)
        //self.tableView.backgroundColor = UIColor.whiteColor()
        self.view.backgroundColor = UIColor.init(red: 0.11, green: 0.741, blue: 0.698, alpha: 1)
        let gradient:CAGradientLayer = CAGradientLayer()
        gradient.frame = CGRect.init(x: 0, y: 0, width: self.cardView.bounds.size.width, height: 190)
        gradient.colors = [UIColor.init(red: 0.706, green: 0.925, blue: 0.318, alpha: 1).CGColor, UIColor.init(red: 0.11, green: 0.741, blue: 0.698, alpha: 1).CGColor]
        gradient.locations = [0, 1]
        self.cardView.backgroundColor = UIColor.init(red: 0.11, green: 0.741, blue: 0.698, alpha: 1)
        self.cardView.layer.insertSublayer(gradient, atIndex: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 0
        } else {
            return 6
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("row", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.init(red: random_number(), green: random_number(), blue: random_number(), alpha: 1.0)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("top_row")
            cell?.backgroundColor = UIColor.clearColor()
            return cell
        } else {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("header")
            //cell?.backgroundColor = UIColor.clearColor()
            cell?.backgroundColor = UIColor.init(red: 0.11, green: 0.741, blue: 0.698, alpha: 1)
            return cell
        }
        
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 190
        } else {
            return 44
        }
    }
    
    func random_number() -> CGFloat{
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
}

