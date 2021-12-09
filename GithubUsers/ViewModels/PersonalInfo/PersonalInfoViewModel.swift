// 
//  PersonalInfoViewModel.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/8.
//

import Foundation
import RxSwift
import RxCocoa

// MARK: - Prototype

protocol PersonalInfoViewModelInput {

}

protocol PersonalInfoViewModelOutput {

}

protocol PersonalInfoViewModelPrototype {
    var input: PersonalInfoViewModelInput { get }
    var output: PersonalInfoViewModelOutput { get }
}

// MARK: - View model

class PersonalInfoViewModel: PersonalInfoViewModelPrototype {

    var input: PersonalInfoViewModelInput { self }
    var output: PersonalInfoViewModelOutput { self }

    private let disposeBag = DisposeBag()
}

// MARK: - Input & Output

extension PersonalInfoViewModel: PersonalInfoViewModelInput {

}

extension PersonalInfoViewModel: PersonalInfoViewModelOutput {

}

// MARK: - Private function

private extension PersonalInfoViewModel {

}
