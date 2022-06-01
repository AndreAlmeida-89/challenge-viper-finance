//
//  ContactListViewController.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import UIKit

class ContactListViewController: UIViewController {
    var presenter: ContactListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    override func loadView() {
        self.view = ContactListView()
    }
}

extension ContactListViewController: ContactListPresenterDelegate {
    func showData() {
        print("Show data")
    }
}
