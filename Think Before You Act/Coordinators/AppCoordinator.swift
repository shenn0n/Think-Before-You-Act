//
//  AppCoordinator.swift
//  Think Before You Act
//
//  Created by Александр Манжосов on 28.07.2025.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        showLogin()
    }

    func showLogin() {
        let vc = MainViewController.createObject()
        vc.coordinator = self
        vc.mainViewModel = MainViewModel()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showDetail() {
        let vc = ResultViewController.createObject()
        vc.coordinator = self
        vc.resultViewModel = ResultViewModel()
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(vc, animated: true)
    }
}
