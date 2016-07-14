//
//  PhotosViewCell.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 13/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit

class PhotosViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
 
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = thumbnailImageView.frame.size.width/2
        thumbnailImageView.layer.masksToBounds = true
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        thumbnailImageView.userInteractionEnabled = true
        thumbnailImageView.addGestureRecognizer(tapGestureRecognizer)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func imageTapped(img: AnyObject)
    {
      
    }
}
