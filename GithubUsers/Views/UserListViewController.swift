// 
//  UserListViewController.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/8.
//

import UIKit
import RxSwift
import RxCocoa

class UserListViewController: UIViewController {

    // MARK: - Property

    var viewModel: UserListViewModelPrototype?

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()

        guard let viewModel = viewModel else { return }

        bind(viewModel)
    }

    // MARK: - Private property

    private let disposeBag = DisposeBag()
}

// MARK: - UI configure

private extension UserListViewController {

    func setupUI() {
        configureNavigationController()
    }
    
    func configureNavigationController() {
        let label = UILabel()
        label.text = "GitHub"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .white
        navigationItem.leftBarButtonItem = .init(customView: label)
    }
}

// MARK: - Private func

private extension UserListViewController {

}

// MARK: - Binding

private extension UserListViewController {

    func bind(_ viewModel: UserListViewModelPrototype) {

    }
}
