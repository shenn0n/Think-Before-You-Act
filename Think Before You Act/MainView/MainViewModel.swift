//
//  MainViewModel.swift
//  Think Before You Act
//
//  Created by Александр Манжосов on 27.07.2025.
//

import Foundation

class MainViewModel {
    var messageText = Dynamic("")
    var buttonImageName = Dynamic("")
    
    private var messages = Message.getMessage()
    private var currentIndex = 0
    
    func devilButtonPressed(_ coordinator: AppCoordinator?) {
        guard currentIndex < messages.count else {
            coordinator?.showDetail()
            return
        }
        
        messageText.value = messages[currentIndex].messageText
        buttonImageName.value = messages[currentIndex].buttomImageName
        currentIndex += 1
    }
}
