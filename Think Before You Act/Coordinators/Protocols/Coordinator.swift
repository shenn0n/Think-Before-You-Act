//
//  Coordinator.swift
//  Think Before You Act
//
//  Created by Александр Манжосов on 28.07.2025.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
