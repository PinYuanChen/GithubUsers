// 
//  PersonalInfoViewController.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/8.
//

import UIKit
import RxSwift
import RxCocoa

class PersonalInfoViewController: UIViewController {

    // MARK: - Property

    var viewModel: PersonalInfoViewModelPrototype?

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()

        guard let viewModel = viewModel else { return }

        bind(viewModel)
    }

    // MARK: - Private property
    private let bannerImageView = UIImageView()
    private let profileImageView = UIImageView()
    private let nameLabel = UILabel()
    private let subLabel = UILabel()
    private let disposeBag = DisposeBag()
}

// MARK: - UI configure

private extension PersonalInfoViewController {

    func setupUI() {
        view.backgroundColor = .white
        configureNavigationController()
        configureBannerImageView()
        configureProfileImageView()
        configureNameLabel()
        configureSubLabel()
    }
    
    func configureNavigationController() {
        let label = UILabel()
        label.text = "GitHub"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .white
        navigationItem.leftBarButtonItem = .init(customView: label)
    }
    
    func configureBannerImageView() {
        view.addSubview(bannerImageView)
        bannerImageView.snp.makeConstraints {
            $0.top.width.equalToSuperview()
            $0.height.equalToSuperview().multipliedBy(0.4)
        }
        
        bannerImageView.backgroundColor = UIColor(red: 15.0/255.0,
                                                  green: 36.0/255.0,
                                                  blue: 73.0/255.0,
                                                  alpha: 1.0)
        bannerImageView.contentMode = .scaleAspectFill
    }
    
    func configureProfileImageView() {
        view.addSubview(profileImageView)
        profileImageView.snp.makeConstraints{
            $0.size.equalTo(100)
            $0.leading.equalToSuperview().offset(10)
            $0.centerY.equalTo(bannerImageView.snp.bottom)
        }
        
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.cornerRadius = 50
        profileImageView.clipsToBounds = true
    }
    
    func configureNameLabel() {
        
    }
    
    func configureSubLabel() {
        
    }

}

// MARK: - Private func

private extension PersonalInfoViewController {

}

// MARK: - Binding

private extension PersonalInfoViewController {

    func bind(_ viewModel: PersonalInfoViewModelPrototype) {
        viewModel
            .output
            .model
            .subscribe(onNext: { [weak self] model in
                guard let self = self,
                      let imgURL = model.avatarURL else { return }
                self.profileImageView.kf.setImage(with: URL(string: imgURL))
            })
            .disposed(by: disposeBag)
    }
}
