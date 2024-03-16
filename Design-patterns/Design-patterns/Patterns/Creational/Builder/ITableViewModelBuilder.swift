//
//  ITableViewModelBuilder.swift
//  Design-patterns
//
//  Created by Лада Зудова on 16.03.2024.
//

import Foundation
import UIKit

struct LabelConfiguration {
    let text: String
    let textColor: UIColor
    let font: UIFont
}

protocol ITableViewModelBuilder: AnyObject {
    func build(image: UIImage)
    func build(title: String)
    func build(titleValue: String)
    func build(description: String)
    func build(descriptionValue: String)
    func create() -> CustomTableViewModel
}
