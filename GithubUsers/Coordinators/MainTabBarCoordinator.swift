// 
//  MainTabBarCoordinator.swift
//  GithubUsers
//
//  Created by PatrickChen on 2021/12/8.
//

import UIKit
import RxSwift
import RxCocoa

class MainTabBarCoordinator: Coordinator<Void> {

    // MARK: - Life cycle
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        
    }

    override func stop() {
    }
    
    // MARK: - Private

    private let window: UIWindow
}
