//
//  SubTabOneViewController.swift
//  Mock2
//
//  Created by Vincent Immanuel on 6/29/17.
//  Copyright © 2017 Vincent Immanuel. All rights reserved.
//

import UIKit

class SubTabOneViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Constants
    let labels = ["label1", "label2", "label3"]
    
    //MARK: Variables
    var tableView: UITableView = UITableView()
    var expandedCell = Set<IndexPath>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.estimatedRowHeight = 40
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Table Functions
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell
        
        cell?.content.text = labels[indexPath.row]
        cell?.leftButton.isHidden = true
        cell?.rightButton.isHidden = true
        
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !expandedCell.isEmpty && !expandedCell.contains(indexPath) {
            let currIndex = expandedCell.popFirst()
            let cell = tableView.cellForRow(at: currIndex!) as? CustomTableViewCell
            cell?.contentView.constraints[7].constant = 0
            cell?.leftButton.isHidden = true
            cell?.rightButton.isHidden = true
        }
        let cell = tableView.cellForRow(at: indexPath) as? CustomTableViewCell
        if expandedCell.contains(indexPath) {
            expandedCell.remove(indexPath)
            cell?.contentView.constraints[7].constant = 0
            cell?.leftButton.isHidden = true
            cell?.rightButton.isHidden = true
        } else {
            expandedCell.insert(indexPath)
            cell?.contentView.constraints[7].constant = 20
            cell?.leftButton.isHidden = false
            cell?.rightButton.isHidden = false
        }
        
        tableView.beginUpdates()
        tableView.endUpdates()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
