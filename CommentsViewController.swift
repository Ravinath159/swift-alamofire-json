//
//  CommentsViewController.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 14/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit
import Alamofire


class CommentsViewController: UIViewController {
    var commentsArray = [comments]()


    @IBOutlet weak var commentsTableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://jsonplaceholder.typicode.com/comments") .responseJSON { response in
            if let JSON = response.result.value {
                for data in JSON  as! [AnyObject]{
                    let details = comments(fromDictionary: data as! NSDictionary)
                    self.commentsArray.append(details)
                }
            }
            self.commentsTableView.reloadData()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commentsArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell: commentsViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? commentsViewCell
        if cell == nil {
            tableView.registerNib(UINib(nibName: "commentsViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? commentsViewCell
        }
        
        let album = commentsArray[indexPath.row]
        cell.nameLAbel.text = album.name
        cell.emailLabel.text = album.email
        cell.bodyTextView.text = album.body
        
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 184
    }

}
