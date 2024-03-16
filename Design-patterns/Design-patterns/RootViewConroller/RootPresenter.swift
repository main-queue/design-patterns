//
//  RootPresenter.swift
//  Design-patterns
//
//  Created by Лада Зудова on 16.03.2024.
//

import Foundation
import UIKit

protocol IRootPresenter {
    func model(for indexPath: IndexPath) -> CustomTableViewModel
}

final class RootPresenter: IRootPresenter {
    
    private let tableViewDirector: ITableViewDirector
    
    init(tableViewDirector: ITableViewDirector) {
        self.tableViewDirector = tableViewDirector
    }
    
    func model(for indexPath: IndexPath) -> CustomTableViewModel {
        tableViewDirector.model(
            with: UIImage(systemName: "heart"),
            title: "Title",
            subtitle: "SubTitle",
            titleValue: "TitleValue",
            subtitleValue: "SubtitleValue"
        )
    }
}
