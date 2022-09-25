//
//  MainTableViewCell.swift
//  HW15-Khrapov
//
//  Created by Anton on 22.09.2022.
//

import UIKit
import SnapKit

class MainTableViewCell: UITableViewCell {
    
    // MARK: - Identifier

    static let identifier = "MainTableViewCell"
    
    // MARK: - Configuration
    
    func configureCell(with model: CellModels) {
        setupTableCell(with: model.type, detailTextLabel: model.detailTextLabel)
        if model.isSystemImage {
            image.image = UIImage(systemName: model.image)
        } else {
            image.image = UIImage(named: model.image)
        }
        text.text = model.name
        backImageView.backgroundColor = UIColor(named: model.imageColor)
    }
    
    // MARK: - Elements
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.tintColor = .white
        return image
    }()
    
    private lazy var backImageView: UIView = {
        let imageView = UIView()
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    private lazy var text: UILabel = {
        let text = UILabel()
        return text
    }()
    
    private lazy var switchElement: UISwitch = {
        let switchElement = UISwitch()
        switchElement.setOn(false, animated: true)
        switchElement.addTarget(self, action: #selector(switched), for: .valueChanged)
        return switchElement
    }()
    
    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .value1, reuseIdentifier: reuseIdentifier)
        separatorInset.left = 58
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(backImageView)
        addSubview(image)
        addSubview(text)
    }
    
    private func setupLayout() {
        backImageView.snp.makeConstraints { make in
            make.centerY.equalTo(snp.centerY)
            make.left.equalTo(snp.left).offset(15)
            make.width.height.equalTo(28)
        }
        
        image.snp.makeConstraints { make in
            make.center.equalTo(backImageView)
            make.width.height.equalTo(21)
        }
        
        text.snp.makeConstraints { make in
            make.centerY.equalTo(backImageView)
            make.left.equalTo(backImageView.snp.right).offset(15)
        }
    }
    
    private func setupTableCell(with accessoryCellType: CellType, detailTextLabel: String?) {
        switch accessoryCellType {
        case .defaultType:
            accessoryType = .disclosureIndicator
        case .switchType:
            selectionStyle = .none
            accessoryView = switchElement
        case .textType:
            accessoryType = .disclosureIndicator
            self.detailTextLabel?.isEnabled = true
            self.detailTextLabel?.text = detailTextLabel
        }
    }
    
    // MARK: - Actions
    
    @objc private func switched() {
        
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        accessoryType = .none
        accessoryView = nil
        detailTextLabel?.text = nil
        selectionStyle = .default
    }
}
