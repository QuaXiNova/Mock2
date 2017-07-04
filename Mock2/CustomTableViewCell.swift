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
    var stackView = UIStackView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        stackView.addSubview(leftButton)
        stackView.addSubview(rightButton)
        contentView.addSubview(content)
        contentView.addSubview(stackView)
        
        let margins = contentView.layoutMarginsGuide
        
        content.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        content.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        content.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        content.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        content.textAlignment = .center
        stackView.topAnchor.constraint(equalTo: content.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        contentView.addConstraint(NSLayoutConstraint(item: stackView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 0))
        
        leftButton.frame = CGRect(x: 40, y: 0, width: 80, height: 20)
        leftButton.setTitleColor(.white, for: .normal)
        rightButton.frame = CGRect(x: 223, y: 0, width: 80, height: 20)
        rightButton.setTitleColor(.white, for: .normal)

        leftButton.setTitle("Orange", for: .normal)
        rightButton.setTitle("Blue", for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        leftButton.backgroundColor = self.tintColor
        rightButton.backgroundColor = self.tintColor
    }

}
