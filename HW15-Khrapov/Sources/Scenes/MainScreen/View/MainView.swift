//
//  MainView.swift
//  HW15-Khrapov
//
//  Created by Anton on 19.09.2022.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    // MARK: - ViewController
    
    weak var viewController: UIViewController?
    
    // MARK: - Elements
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
        tableView.dataSource = viewController as? UITableViewDataSource
        tableView.delegate = viewController as? UITableViewDelegate
        return tableView
    }()
    
    // MARK: - Initializers
    
    init(viewController: UIViewController) {
        super.init(frame: .zero)
        self.viewController = viewController
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(self)
        }
    }
}
