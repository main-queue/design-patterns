//
//  TableViewDirector.swift
//  Design-patterns
//
//  Created by Лада Зудова on 16.03.2024.
//

import Foundation
import UIKit

protocol ITableViewDirector: AnyObject {
    func model(
        with image: UIImage?,
        title: String,
        subtitle: String?,
        titleValue: String?,
        subtitleValue: String?
    ) -> CustomTableViewModel
}

extension ITableViewDirector {
    func model(
        with image: UIImage? = nil,
        title: String,
        subtitle: String? = nil,
        titleValue: String? = nil,
        subtitleValue: String? = nil
    ) -> CustomTableViewModel {
        self.model(
            with: image,
            title: title,
            subtitle: subtitle,
            titleValue: titleValue,
            subtitleValue: subtitleValue
        )
    }
}

final class TableViewDirector: ITableViewDirector {
    
    private var tableViewModelBuilder: ITableViewModelBuilder
    
    init(tableViewModelBuilder: ITableViewModelBuilder) {
        self.tableViewModelBuilder = tableViewModelBuilder
    }
    
    func model(with image: UIImage?, title: String, subtitle: String?, titleValue: String?, subtitleValue: String?) -> CustomTableViewModel {
        tableViewModelBuilder.build(title: title)
        
        if let image = image {
            tableViewModelBuilder.build(image: image)
        }
        
        if let subtitle = subtitle {
            tableViewModelBuilder.build(description: subtitle)
        }
        
        if let titleValue = titleValue {
            tableViewModelBuilder.build(titleValue: titleValue)
        }
        
        if let subtitleValue = subtitleValue {
            tableViewModelBuilder.build(descriptionValue: subtitleValue)
        }
        
        return tableViewModelBuilder.create()
    }
}
