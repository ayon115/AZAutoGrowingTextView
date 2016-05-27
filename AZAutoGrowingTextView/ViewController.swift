//
//  ViewController.swift
//  AZAutoGrowingTextView
//
//  Created by Ashiq Uz Zoha on 5/27/16.
//  Copyright © 2016 Dhrubok Infotech Services Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ExpandingCellDelegate {
    
    @IBOutlet var uiTableView: UITableView!
    
    let questions = [
        "I spend most of my time...",
        "A cool place(s) I've visited...",
        "Something on my bucket list...",
        "Favorite restaurant or coffee shop..."
    ]
    
    let hints = [
        "Tell people what you’re all about.",
        "Bonus points for international trips.",
        "The sky’s the limit!",
        "Please don’t say McDonald’s."
    ]
    
    var answers : [String] = ["","","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.uiTableView.registerNib(UINib(nibName: "QACell", bundle: nil), forCellReuseIdentifier: "QACell")
        
        self.uiTableView.estimatedRowHeight = 50
        self.uiTableView.rowHeight = UITableViewAutomaticDimension
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func updateCellHeight(indexPath: NSIndexPath, comment: String) {
        self.answers[indexPath.row] = comment
        self.uiTableView.beginUpdates()
        self.uiTableView.endUpdates()
    }
    
    // MARK: - uitableview delegates
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questions.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("QACell") as! QACell
        
        cell.answerTextView.scrollEnabled = false
        cell.answerTextView.text = self.answers[indexPath.row]
        cell.answerTextView.textColor = UIColor.blueColor()
        cell.answerTextView.font = UIFont.systemFontOfSize(17.0)
        
        let placeholder = NSAttributedString(string: self.hints[indexPath.row], attributes: [NSForegroundColorAttributeName:UIColor.lightGrayColor(), NSFontAttributeName: UIFont.systemFontOfSize(15.0)])
        cell.answerTextView.attributedPlaceholder = placeholder
        
        cell.headerLabel.text = self.questions[indexPath.row]
        cell.cellIndexPath = indexPath
        cell.delegate = self
        
        return cell
    }
    
}
