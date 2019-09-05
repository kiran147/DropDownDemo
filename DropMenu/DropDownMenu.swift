//
//  DropDownMenu.swift
//  Mailbox
//
//  Created by Kian on 29/05/18.
//  Copyright © 2018 Kiran. All rights reserved.
//

import Foundation
import DropDown


protocol  DropDownDelegate {
    func didSelect(option : String)
}

class DropDownMenu
{
    let dropDown = DropDown()
    var delegate : DropDownDelegate?
    var width : CGFloat!
    var anchorView : UIView?
    
    func showMenuWith(options : [String],anchorView : UIButton)
    {
        self.anchorView = anchorView
        self.dropDown.dataSource = options
        self.dropDown.anchorView = anchorView
        self.dropDown.show()
        self.dropDown.dismissMode = .onTap
        self.dropDown.selectionAction = { (index, item) in
            self.delegate?.didSelect(option: item)
        }
    }
    
    func spinnerWith(options : [String],anchorView : UIView)
    {
        self.anchorView = anchorView
        self.dropDown.dataSource = options
        self.dropDown.anchorView = anchorView
        self.dropDown.bottomOffset = CGPoint.init(x: 0, y: anchorView.frame.height)
        self.dropDown.width = (self.width != nil ? self.width : anchorView.frame.width)
        self.dropDown.show()
        self.dropDown.dismissMode = .onTap
        self.dropDown.selectionAction = { (index, item) in
            self.delegate?.didSelect(option: item)
        }
    }
    
    func setUpSpinnerTo(anchorView : UIView)
    {
        self.dropDown.anchorView = anchorView
        self.dropDown.bottomOffset = CGPoint.init(x: 0, y: anchorView.frame.height)
        self.dropDown.width = (self.width != nil ? self.width : anchorView.frame.width)
        self.dropDown.dismissMode = .automatic
        self.anchorView = anchorView
    }
    
    func hideMenu()
    {
        self.dropDown.hide()
    }
    
}
