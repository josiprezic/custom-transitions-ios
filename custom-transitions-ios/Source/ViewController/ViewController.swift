//
//  ViewController.swift
//  custom-transitions-ios
//
//  Created by Josip Rezic on 13/03/2020.
//  Copyright © 2020 Josip Rezic. All rights reserved.
//

import UIKit

enum Transition: CaseIterable {
    case test
}

final class ViewController: UIViewController {
    
    //
    // MARK: - Properties
    //
    
    private let contentView = View()
    private let transitions = Transition.allCases
    
    //
    // MARK: - View methods
    //
    
    override func loadView() {
        view = contentView
        setupTableView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("View did load")
    }
    
    //
    // MARK: - Private methods
    //
    
    private func setupTableView() {
        contentView.tableView.delegate = self
        contentView.tableView.dataSource = self
        contentView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "id")
    }
    
    private func handleNewTransition(transition: Transition) {
        
    }
}

//
// MARK: - Extension - UITableViewDelegate
//

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let transition = transitions[indexPath.row]
        handleNewTransition(transition: transition)
    }
}

//
// MARK: - Extension - UITableViewDelegate
//

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Transition.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "id") else {
            return UITableViewCell()
        }
        
        cell.textLabel?.text = "\(transitions[indexPath.row])"
        cell.backgroundColor = .clear
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
}

