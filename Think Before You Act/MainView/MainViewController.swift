//
//  ViewController.swift
//  Think Before You Act
//
//  Created by Александр Манжосов on 25.07.2025.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var devilButton: UIButton!
    
    weak var coordinator: AppCoordinator?
    var mainViewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    @IBAction func devilButtonPressed(_ sender: Any) {
        mainViewModel?.devilButtonPressed(coordinator)
    }
    
    func bindViewModel() {
        mainViewModel?.messageText.bind { [weak self] messageText in
            DispatchQueue.main.async {
                self?.messageLabel.text = messageText
            }
        }
        mainViewModel?.buttonImageName.bind { [weak self] buttonImageName in
            DispatchQueue.main.async {
                self?.devilButton.setImage(UIImage(named: buttonImageName), for: .normal)
            }
        }
    }
}

