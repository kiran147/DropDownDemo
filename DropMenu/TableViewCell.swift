//
//  TableViewCell.swift
//  DropMenu
//
//  Created by P4D on 05/09/19.
//  Copyright © 2019 Kiran. All rights reserved.
//

import UIKit

protocol options : NSObject {
    func options() -> [String]
}

class TableViewCell: UITableViewCell {

    weak var delegate : options?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func dropDownAction(_ sender: UIButton) {
        let dropDown = DropDownMenu()
        dropDown.delegate = self
        dropDown.showMenuWith(options: (self.delegate?.options() ?? [String]()), anchorView: sender)
    }
    
}

extension TableViewCell : DropDownDelegate
{
    func didSelect(option: String) {
        print(option)
    }
    
}
