//
//  ActivityDetailsProtocols.swift
//  FinanceApp
//
//  Created by Mobills on 25/05/22.
//  Copyright © 2022 tuist.io. All rights reserved.
//

import Foundation
import UIKit

protocol ActivityDetailsPresenterProtocol {
    var view: ActivityDetailsPresenterDelegate? { get set }
    var interactor: ActivityDetailsInteractorProtocol? { get set }
    var router: ActivityDetailsRouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol ActivityDetailsInteractorDelegate: AnyObject {
    func didFetch(data: ActivityDetailsDTO)
}

protocol ActivityDetailsInteractorProtocol {
    var presenter: ActivityDetailsInteractorDelegate? { get set }
    
    func fetchData()
}

protocol ActivityDetailsViewControllerProtocol: AnyObject {
    var presenter: ActivityDetailsPresenterProtocol? { get set }
}

protocol ActivityDetailsPresenterDelegate: AnyObject {
    func update(viewModel: ActivityDetailsViewModel)
}

protocol ActivityDetailsConfiguratorProtocol {
    static func createModule() -> UIViewController
}

protocol ActivityDetailsRouterProtocol {
    
}
