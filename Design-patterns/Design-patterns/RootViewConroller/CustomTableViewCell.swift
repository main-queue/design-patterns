//
//  CustomTableViewCell.swift
//  Design-patterns
//
//  Created by Лада Зудова on 16.03.2024.
//

import Foundation
import UIKit

struct CustomTableViewModel {
    var image: UIImage?
    var title: LabelConfiguration?
    var titleValue: LabelConfiguration?
    var description: LabelConfiguration?
    var descriptionValue: LabelConfiguration?
}

final class CustomTableViewCell: UITableViewCell {
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleValueLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var descriptionValueLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(image)
        contentView.addSubview(titleLabel)
        contentView.addSubview(titleValueLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(descriptionValueLabel)
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            image.heightAnchor.constraint(equalToConstant: 40),
            image.widthAnchor.constraint(equalToConstant: 40),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            titleValueLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor),
            titleValueLabel.leadingAnchor.constraint(greaterThanOrEqualTo: titleLabel.trailingAnchor, constant: 10),
            titleValueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            descriptionValueLabel.topAnchor.constraint(equalTo: descriptionLabel.topAnchor),
            descriptionValueLabel.leadingAnchor.constraint(greaterThanOrEqualTo: descriptionLabel.trailingAnchor, constant: 10),
            descriptionValueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            descriptionValueLabel.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor)
        ])
    }
    
    func configure(viewModel: CustomTableViewModel) {
        image.image = viewModel.image
        
        if let titleConfiguration = viewModel.titleValue {
            titleLabel.text = titleConfiguration.text
            titleLabel.textColor = titleConfiguration.textColor
            titleLabel.font = titleConfiguration.font
        }
        
        if let titleValueConfiguration = viewModel.titleValue {
            titleValueLabel.text = titleValueConfiguration.text
            titleValueLabel.textColor = titleValueConfiguration.textColor
            titleValueLabel.font = titleValueConfiguration.font
        }
        
        if let descriptionConfiguration = viewModel.description {
            descriptionLabel.text = descriptionConfiguration.text
            descriptionLabel.textColor = descriptionConfiguration.textColor
            descriptionLabel.font = descriptionConfiguration.font
        }
        
        if let descriptionValueConfiguration = viewModel.descriptionValue {
            descriptionValueLabel.text = descriptionValueConfiguration.text
            descriptionValueLabel.textColor = descriptionValueConfiguration.textColor
            descriptionValueLabel.font = descriptionValueConfiguration.font
        }
    }
}
