//
//  commentsViewCell.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 14/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit

class commentsViewCell: UITableViewCell {

    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameLAbel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
