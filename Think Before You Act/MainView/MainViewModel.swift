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
    var isQuizFinished = Dynamic(false)
    
    private var messages = Message.getMessage()
    private var currentIndex = 0
    
    func devilButtonPressed() {
        guard currentIndex < messages.count else {
            isQuizFinished.value = true
            return
        }
        
        messageText.value = messages[currentIndex].messageText
        buttonImageName.value = messages[currentIndex].buttomImageName
        currentIndex += 1
    }
}
