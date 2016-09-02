//
//  DetailTableViewCell.swift
//  deliciousFood
//
//  Created by dengmaojiang on 16/3/12.
//  Copyright © 2016年 dengmaojiang. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var detailFoodImage: UIImageView!
    @IBOutlet weak var saleCount: UILabel!
    @IBOutlet weak var Good: UILabel!
    @IBOutlet weak var price: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buy(sender: AnyObject) {
    }

}
