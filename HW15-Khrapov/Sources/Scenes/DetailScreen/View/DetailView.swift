//
//  DetailView.swift
//  HW15-Khrapov
//
//  Created by Anton on 25.09.2022.
//

import UIKit
import SnapKit

class DetailView: UIView {
    
    // MARK: Configurator
    
    func configureView(with model: CellModels) {
        if model.isSystemImage {
            cellImage.image = UIImage(systemName: model.image)
        } else {
            cellImage.image = UIImage(named: model.image)
        }
        cellLabel.text = model.name
        cellBackgroundImage.backgroundColor = UIColor(named: model.imageColor)
    }
    
    // MARK: - Elements
    
    private lazy var cellBackgroundImage: UIView = {
        let background = UIView()
        background.layer.cornerRadius = 125
        return background
    }()
    
    private lazy var cellImage: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        return imageView
    }()
    
    private lazy var cellLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
    
    // MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(cellBackgroundImage)
        addSubview(cellImage)
        addSubview(cellLabel)
    }
    
    private func setupLayout() {
        cellBackgroundImage.snp.makeConstraints { make in
            make.center.equalTo(snp.center)
            make.width.height.equalTo(250)
        }
        
        cellImage.snp.makeConstraints { make in
            make.center.equalTo(cellBackgroundImage)
            make.width.height.equalTo(180)
        }
        
        cellLabel.snp.makeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.top.equalTo(cellBackgroundImage.snp.bottom).offset(20)
        }
    }
}
