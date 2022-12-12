//
//  TableViewCell.swift
//  Test N6 (3)
//
//  Created by Magdiel Altynbekov on 11/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var firstImage: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

