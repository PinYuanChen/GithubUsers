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
    var model: Observable<PersonalInfoModel> { get }
}

protocol PersonalInfoViewModelPrototype {
    var input: PersonalInfoViewModelInput { get }
    var output: PersonalInfoViewModelOutput { get }
}

// MARK: - View model

class PersonalInfoViewModel: PersonalInfoViewModelPrototype {

    var input: PersonalInfoViewModelInput { self }
    var output: PersonalInfoViewModelOutput { self }
    
    init(api: PersonalInfoAPIPrototype?) {
        self.api = api
        guard let api = self.api else { return }
        bind(api: api)
    }

    private let user = "PinYuanChen"
    private let api: PersonalInfoAPIPrototype?
    private let _model = BehaviorRelay<PersonalInfoModel?>(value: nil)
    private let disposeBag = DisposeBag()
}

// MARK: - Input & Output

extension PersonalInfoViewModel: PersonalInfoViewModelInput {

}

extension PersonalInfoViewModel: PersonalInfoViewModelOutput {
    var model: Observable<PersonalInfoModel> {
        _model.compactMap { $0 }.asObservable()
    }
}

// MARK: - Private function

private extension PersonalInfoViewModel {

    func bind(api: PersonalInfoAPIPrototype) {
        
        api
            .result
            .subscribe(onNext: { [weak self] model in
                guard let self = self else { return }
                self._model.accept(model)
            })
            .disposed(by: disposeBag)
        
        api
            .error
            .subscribe(onNext: { error in
                print("\(error)")
            })
            .disposed(by: disposeBag)
        
        api.get(name: user)
    }
}
