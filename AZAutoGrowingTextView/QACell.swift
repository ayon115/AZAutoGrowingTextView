//
//  QACell.swift
//  DateUp
//
//  Created by Ashiq Uz Zoha on 4/29/16.
//  Copyright © 2016 Wildcat Interactive LLC. All rights reserved.
//

import UIKit
import SZTextView

protocol ExpandingCellDelegate {
    func updateCellHeight (indexPath: NSIndexPath, comment:String)
}

class QACell: UITableViewCell, UITextViewDelegate {

    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var answerTextView: SZTextView!
    var delegate: ExpandingCellDelegate!
    var cellIndexPath: NSIndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.answerTextView.delegate = self
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func textViewDidChange(textView: UITextView) {
        self.delegate.updateCellHeight(self.cellIndexPath, comment: textView.text)
    }
}
