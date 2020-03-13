//
//  View.swift
//  custom-transitions-ios
//
//  Created by Josip Rezic on 13/03/2020.
//  Copyright © 2020 Josip Rezic. All rights reserved.
//

import SnapKit

final class View: UIView {
    
    //
    // MARK: - Properties
    //
    
    let tableView = UITableView()
    
    //
    // MARK: - Initializers
    //
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        addSubviews()
        setupStyling()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //
    // MARK: - Private methods
    //
    
    private func addSubviews() {
        addSubview(tableView)
    }
    
    private func setupStyling() {
        backgroundColor = .gray
        tableView.backgroundColor = .clear
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
