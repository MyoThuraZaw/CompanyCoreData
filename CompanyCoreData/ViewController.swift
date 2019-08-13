//
//  ViewController.swift
//  CompanyCoreData
//
//  Created by Myo Thura Zaw on 8/13/19.
//  Copyright © 2019 Myo Thura Zaw. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        tableView.backgroundColor = .darkBlue
        
//        tableView.separatorStyle = .none
        
        tableView.tableFooterView = UIView()
       
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        setupNavigationStyle()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        cell.backgroundColor = .tealColor
        
        cell.textLabel?.text = "THE COMPANY NAME"
        
        return cell
    }
    
    func setupNavigationStyle() {
        navigationItem.title = "Companies"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleAddCompany))
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = .lightRed
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    @objc func handleAddCompany() {
        print("Adding company...")
    }
    
}

