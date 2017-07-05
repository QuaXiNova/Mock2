//
//  BlueBackgroundViewController.swift
//  Mock2
//
//  Created by Vincent Immanuel on 7/5/17.
//  Copyright © 2017 Vincent Immanuel. All rights reserved.
//

import UIKit

class BlueBackgroundViewController: UIViewController {

    static let main = BlueBackgroundViewController()
    
    //MARK: Variables
    var cellInfo = UILabel(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = self.view.tintColor
        view.addSubview(cellInfo)
        cellInfo.textAlignment = .center
    }
}
