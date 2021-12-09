// 
//  UserDetailViewModel.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/9.
//

import Foundation
import RxSwift
import RxCocoa

// MARK: - Prototype

protocol UserDetailViewModelInput {

}

protocol UserDetailViewModelOutput {

}

protocol UserDetailViewModelPrototype {
    var input: UserDetailViewModelInput { get }
    var output: UserDetailViewModelOutput { get }
}

// MARK: - View model

class UserDetailViewModel: UserDetailViewModelPrototype {

    var input: UserDetailViewModelInput { self }
    var output: UserDetailViewModelOutput { self }
    
    init(username: String, userDetailAPI: UserDetailAPIPrototype?) {
        
        self.userDetailAPI = userDetailAPI
        self.username = username
        guard let userDetailAPI = self.userDetailAPI else {
            return
        }
        
        bind(userDetailAPI: userDetailAPI)
    }
    
    private let userDetailAPI: UserDetailAPIPrototype?
    private let username: String
    private let disposeBag = DisposeBag()
}

// MARK: - Input & Output

extension UserDetailViewModel: UserDetailViewModelInput {

}

extension UserDetailViewModel: UserDetailViewModelOutput {

}

// MARK: - Private function

private extension UserDetailViewModel {

    func bind(userDetailAPI: UserDetailAPIPrototype) {
        
        userDetailAPI.fetch(username: username)
    }
    
}
