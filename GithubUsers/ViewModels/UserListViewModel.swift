// 
//  UserListViewModel.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/8.
//

import Foundation
import RxSwift
import RxCocoa

// MARK: - Prototype

protocol UserListViewModelInput {

}

protocol UserListViewModelOutput {

}

protocol UserListViewModelPrototype {
    var input: UserListViewModelInput { get }
    var output: UserListViewModelOutput { get }
}

// MARK: - View model

class UserListViewModel: UserListViewModelPrototype {

    var input: UserListViewModelInput { self }
    var output: UserListViewModelOutput { self }

    private let disposeBag = DisposeBag()
}

// MARK: - Input & Output

extension UserListViewModel: UserListViewModelInput {

}

extension UserListViewModel: UserListViewModelOutput {

}

// MARK: - Private function

private extension UserListViewModel {

}
