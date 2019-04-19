//
//  CoffeeTableViewCell.swift
//  CoffeeLab
//
//  Created by SungIn on 2019. 4. 18..
//  Copyright © 2019년 SungIn. All rights reserved.
//

import UIKit

class CoffeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var coffeeImg : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var priceLabel : UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
