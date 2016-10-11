//
//  OverviewTableViewCell.swift
//  ContactCard-App
//
//  Created by Thomas Woerdeman on 11/10/2016.
//  Copyright © 2016 Thomas Woerdeman. All rights reserved.
//

import UIKit

class OverviewTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageVieq: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
