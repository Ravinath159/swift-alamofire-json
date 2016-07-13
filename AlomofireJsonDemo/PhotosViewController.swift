//
//  PhotosViewController.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 13/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage




class PhotosViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var photsArray = [photes]()

    @IBOutlet weak var photesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://jsonplaceholder.typicode.com/photos") .responseJSON { response in
            if let JSON = response.result.value {
                for data in JSON  as! [AnyObject]{
                    let details = photes(fromDictionary: data as! NSDictionary)
                    self.photsArray.append(details)
                }
            }
            self.photesTableView.reloadData()
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photsArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell: PhotosViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? PhotosViewCell
        if cell == nil {
            tableView.registerNib(UINib(nibName: "PhotosViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? PhotosViewCell
        }
        
        let album = photsArray[indexPath.row]
        cell.titleLabel.text = album.title
        let url :String = album.thumbnailUrl
        let urlStr : String = url.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        let thumbUrl : NSURL = NSURL(string: urlStr as String)!
        cell.thumbnailImageView.sd_setImageWithURL(thumbUrl)
        
        return cell
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 84
    }
}
