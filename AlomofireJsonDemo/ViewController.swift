//
//  ViewController.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 05/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit
import Alamofire

var aulbumArray = [RootClass]()
class ViewController: UIViewController{

    @IBOutlet weak var zoomImage: UIImageView!
    @IBOutlet weak var MytableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://jsonplaceholder.typicode.com/posts") .responseJSON { response in
              if let JSON = response.result.value {
                for data in JSON  as! [AnyObject]{
                let details = RootClass(fromDictionary: data as! NSDictionary)
                    aulbumArray.append(details)
                }
            }
            self.MytableView.reloadData()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aulbumArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)as! CustemCell
        let album = aulbumArray[indexPath.row]
        cell.titleLabel.text = album.title
        cell.bodyLabel.text = album.body
        return cell
    }
     
    
}



