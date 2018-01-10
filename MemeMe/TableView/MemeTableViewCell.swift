//
//  MemeTableViewCell.swift
//  MemeMe
//
//  Created by Fai Wu on 10/3/17.
//  Copyright © 2017 Fai Wu. All rights reserved.
//

import UIKit
// MARK: Customed Table Cell
class MemeTableViewCell: UITableViewCell {

    @IBOutlet weak var memeImage: UIImageView!
    @IBOutlet weak var memeText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
