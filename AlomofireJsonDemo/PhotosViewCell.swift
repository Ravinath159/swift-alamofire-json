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


       
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
