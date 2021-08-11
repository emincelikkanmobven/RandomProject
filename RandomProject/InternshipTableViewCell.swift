//
//  InternshipTableViewCell.swift
//  RandomProject
//
//  Created by Emin Çelikkan on 11.08.2021.
//

import UIKit

class InternshipTableViewCell: UITableViewCell {
    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
