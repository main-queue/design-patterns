//
//  RootViewControllerAssembly.swift
//  Design-patterns
//
//  Created by Лада Зудова on 16.03.2024.
//

import Foundation
import UIKit

protocol IRootViewControllerAssembly {
    func assemby() -> UIViewController
}

final class RootViewControllerAssembly: IRootViewControllerAssembly {
    func assemby() -> UIViewController {
        let tableViewModelBuilder = CustomTableViewModelBuilder()
        let tableViewDirecor = TableViewDirector(tableViewModelBuilder: tableViewModelBuilder)
        let presenter = RootPresenter(tableViewDirector: tableViewDirecor)
        let viewController = ViewController(presenter: presenter)
        
        return viewController
    }
}
