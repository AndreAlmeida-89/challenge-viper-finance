//
//  HomeInteractor.swift
//  FinanceApp
//
//  Created by Victor Catão on 20/03/22.
//

import Foundation

// MARK: - HomeInteractorDelegate

protocol HomeInteractorDelegate: AnyObject {
    func didFailFetchHomeData(error: HomeError?)
    func didFetchHomeData(_ homeData: HomeData)
}

// MARK: - HomeInteractor

final class HomeInteractor: HomeIteractorProtocol {
    
    // MARK: Public Properties
    
    weak var presenter: HomeInteractorDelegate?

    // MARK: Private Properties
    
    private let repository: HomeRepositoryProtocol?
    
    // MARK: Init

    init(repository: HomeRepositoryProtocol = HomeRepository()) {
        self.repository = repository
    }

    // MARK: Public Methods

    func fetchData() {
        repository?.fetchHomeData(completion: { [weak self] homeData, homeError in
            guard let self = self else { return }
            guard let homeData = homeData else {
                self.presenter?.didFailFetchHomeData(error: homeError)
                return
            }
            self.presenter?.didFetchHomeData(homeData)
        })
    }
}
