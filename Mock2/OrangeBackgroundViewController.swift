//
//  OrangeBackgroundViewController.swift
//  Mock2
//
//  Created by Vincent Immanuel on 7/5/17.
//  Copyright © 2017 Vincent Immanuel. All rights reserved.
//

import UIKit

class OrangeBackgroundViewController: UIViewController {
    
    static let main = OrangeBackgroundViewController()
    
    //MARK: Variables
    var cellInfo = UILabel(frame: UIScreen.main.bounds)

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange
        view.addSubview(cellInfo)
        cellInfo.textAlignment = .center
    }
}
