//
//  TableViewCell.swift
//  SearchBar_1
//
//  Created by Duc on 4/1/19.
//  Copyright © 2019 Duc. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameSingerLabel: UILabel!
    @IBOutlet weak var typeSingerLabel: UILabel!
    @IBOutlet weak var imageSinger: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        textLabel?.text = ""
        detailTextLabel?.text = ""
        backgroundColor = UIColor.white
        
    }

}
