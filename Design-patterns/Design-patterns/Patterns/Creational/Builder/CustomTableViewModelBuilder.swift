//
//  CustomTableViewModelBuilder.swift
//  Design-patterns
//
//  Created by Лада Зудова on 16.03.2024.
//

import Foundation
import UIKit

final class CustomTableViewModelBuilder: ITableViewModelBuilder {
    
    private var model: CustomTableViewModel = CustomTableViewModel.empty
    
    func build(image: UIImage) {
        model.image = image
    }
    
    func build(title: String) {
        model.title = LabelConfiguration(
            text: title,
            textColor: .black,
            font: .boldSystemFont(ofSize: 14)
        )
    }
    
    func build(titleValue: String) {
        model.titleValue = LabelConfiguration(
            text: titleValue,
            textColor: .black,
            font: .boldSystemFont(ofSize: 14)
        )
    }
    
    func build(description: String) {
        model.description = LabelConfiguration(
            text: description,
            textColor: .darkGray,
            font: .italicSystemFont(ofSize: 12)
        )
    }
    
    func build(descriptionValue: String) {
        model.descriptionValue = LabelConfiguration(
            text: descriptionValue,
            textColor: .darkGray,
            font: .italicSystemFont(ofSize: 12)
        )
    }
    
    func create() -> CustomTableViewModel {
        return model
    }
}

private extension CustomTableViewModel {
    static var empty: CustomTableViewModel {
        CustomTableViewModel(
            image: nil,
            title: nil,
            titleValue: nil,
            description: nil,
            descriptionValue: nil
        )
    }
}
