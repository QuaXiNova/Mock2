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
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Table Functions
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell
        
        cell?.content.text = labels[indexPath.row]
        
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
            // tableView.cellForRow(at: currIndex!)?.height = 0
        }
        if !expandedCell.contains(indexPath) {
            expandedCell.remove(indexPath)
            // tableView.cellForRow(at: indexPath!)?.height = 0
        } else {
            expandedCell.insert(indexPath)
            // tableView.cellForRow(at: indexPath!)?.height = 100
        }
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
