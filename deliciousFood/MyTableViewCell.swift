//
//  MyTableViewCell.swift
//  deliciousFood
//
//  Created by dengmaojiang on 16/3/7.
//  Copyright © 2016年 dengmaojiang. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantSaleCount: UILabel!
    @IBOutlet weak var restaurantPrice: UILabel!
    @IBOutlet weak var restaurantPrice1: UILabel!
    @IBOutlet weak var restaurantFrieght: UILabel!
    @IBOutlet weak var restaurantFrieghtCount: UILabel!
    @IBOutlet weak var restaurantFrieghtTime: UILabel!
    @IBOutlet weak var restaurantFavorable: UILabel!
    @IBOutlet weak var restaurantFirst: UILabel!
    @IBOutlet weak var restaurantFirst1: UILabel!
    @IBOutlet weak var restaurantFavorable1: UILabel!
    var time = 49
    var count=0
    var price = 1
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
