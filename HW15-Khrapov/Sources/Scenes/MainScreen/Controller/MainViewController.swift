//
//  MainViewController.swift
//  HW15-Khrapov
//
//  Created by Anton on 19.09.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - Model
    
    var cells = CellModels.cells

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
    }
    
    // MARK: - Setup
    
    private func setupController() {
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        view = MainView(viewController: self)
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        cells.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cells[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
        let model = cells[indexPath.section][indexPath.row]
        cell.configureCell(with: model)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        let model = cells[indexPath.section][indexPath.row]
        guard model.type != CellType.switchType else { return }
        viewController.model = model
        navigationController?.pushViewController(viewController, animated: true)
    }
}
