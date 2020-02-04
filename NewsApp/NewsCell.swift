//
//  NewsCell.swift
//  NewsApp
//
//  Created by Apple MacBook Pro  on 2/4/20.
//  Copyright © 2020 Apple MacBook Pro . All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    @IBOutlet weak var shownewsPhoto: UIImageView!
    
    @IBOutlet weak var showNewsTitle: UILabel!
    @IBOutlet weak var showNewsTime: UILabel!
    @IBOutlet weak var AllViews: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        AllViews.layer.cornerRadius = 6
        shownewsPhoto.layer.cornerRadius = 6
        
        AllViews.layer.shadowColor = UIColor.black.cgColor
        
        AllViews.layer.shadowPath = UIBezierPath(rect: AllViews.bounds).cgPath
        AllViews.layer.shadowRadius = 3
        AllViews.layer.shadowOffset = .zero
        AllViews.layer.shadowOpacity = 2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
