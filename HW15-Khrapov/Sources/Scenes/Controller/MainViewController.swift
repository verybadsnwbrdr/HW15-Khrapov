//
//  MainViewController.swift
//  HW15-Khrapov
//
//  Created by Anton on 19.09.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - Model
    
    var model: CellModels? // Как не передовать модель во VIEW?
    
    // MARK: - ViewConfigure
    
    private func configureView(with model: CellModels) {
        //  Надо обрашаться к view?
    }
    
    // MARK: - View
    
    private var mainView: MainView? {
        isViewLoaded ? view as? MainView : nil
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
        configureView(with: <#T##CellModels#>)
    }
    
    // MARK: - Setup
    
    private func setupController() {
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        view = MainView()
    }
}
