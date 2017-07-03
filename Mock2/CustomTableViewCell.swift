//
//  CustomTableViewCell.swift
//  Mock2
//
//  Created by Vincent Immanuel on 6/30/17.
//  Copyright © 2017 Vincent Immanuel. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var content = UILabel()
    var leftButton = UIButton()
    var rightButton = UIButton()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(content)
        contentView.addSubview(leftButton)
        contentView.addSubview(rightButton)
        
        content.translatesAutoresizingMaskIntoConstraints = false
        leftButton.translatesAutoresizingMaskIntoConstraints = false
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        
        let margins = contentView.layoutMarginsGuide
        
        content.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        content.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        content.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        content.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 2.0).isActive = true
        content.textAlignment = .center
        leftButton.topAnchor.constraint(equalTo: content.bottomAnchor).isActive = true
        leftButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: contentView.frame.width / 5).isActive = true
        leftButton.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 2.0).isActive = true
        rightButton.topAnchor.constraint(equalTo: content.bottomAnchor).isActive = true
        rightButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -contentView.frame.width / 5).isActive = true
        rightButton.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 2.0).isActive = true
        
        leftButton.setTitleColor(.white, for: .normal)
        leftButton.backgroundColor = self.tintColor
        rightButton.setTitleColor(.white, for: .normal)
        rightButton.backgroundColor = self.tintColor
        
        leftButton.setTitle("Orange", for: .normal)
        rightButton.setTitle("Blue", for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
