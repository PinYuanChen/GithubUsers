// 
//  UserDetailViewController.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/9.
//

import UIKit
import RxSwift
import RxCocoa

class UserDetailViewController: UIViewController {

    // MARK: - Property

    var viewModel: UserDetailViewModelPrototype?

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

private extension UserDetailViewController {

    func setupUI() {

    }
}

// MARK: - Private func

private extension UserDetailViewController {

}

// MARK: - Binding

private extension UserDetailViewController {

    func bind(_ viewModel: UserDetailViewModelPrototype) {

    }
}
