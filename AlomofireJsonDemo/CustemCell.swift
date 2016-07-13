//
//  CustemCell.swift
//  AlomofireJsonDemo
//
//  Created by Kvana Dev Ipod on 05/07/16.
//  Copyright © 2016 Kvana Dev Ipod. All rights reserved.
//

import UIKit

class CustemCell: UITableViewCell {

    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
