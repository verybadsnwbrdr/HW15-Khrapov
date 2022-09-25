//
//  DetailViewController.swift
//  HW15-Khrapov
//
//  Created by Anton on 25.09.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Model
    
    var model: CellModels?
    
    // MARK: - View
    
    private var detailView: DetailView? {
        isViewLoaded ? view as? DetailView : nil
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DetailView()
        setupController()
    }
    
    // MARK: - Setup
    
    private func setupController() {
        guard let model = model else { return }
        detailView?.configureView(with: model)
    }
}
