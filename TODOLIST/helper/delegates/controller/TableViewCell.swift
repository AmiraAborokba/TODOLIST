//
//  TableViewCell.swift
//  TODOLIST
//
//  Created by Amira on 10/11/20.
//  Copyright © 2020 Amira. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var backview: UIView!{
        didSet{
            backview.layer.cornerRadius = backview.frame.height/5
            backview.layer.borderColor = UIColor.black.cgColor
            backview.layer.borderWidth = 1
        }
        
    }
    
    
    @IBOutlet weak var lblcell: UILabel!
    
    @IBOutlet weak var upbtn: UIButton!
    
    @IBOutlet weak var downbtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
