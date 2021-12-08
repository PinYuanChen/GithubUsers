// 
//  PersonalInfoCoordinator.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/8.
//

import UIKit
import RxSwift
import RxCocoa

class PersonalInfoCoordinator: Coordinator<Void> {

    override func start() {
        let vc = PersonalInfoViewController()
        rootViewController = vc
        
        navigationController = UINavigationController(rootViewController: vc)
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
    }

    override func stop() {
    }
    
}
