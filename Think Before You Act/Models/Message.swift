//
//  Message.swift
//  Think Before You Act
//
//  Created by Александр Манжосов on 28.07.2025.
//

import Foundation

struct Message {
    let messageText: String
    let buttomImageName: String
    
    static func getMessage() -> [Message] {
        return [
            Message(messageText: "Вижу, ты нажал на красную кнопку, но это тебе не шутки! Тебе НЕЛЬЗЯ так делать!", buttomImageName: "4.1"),
            Message(messageText: "Так, я понял — ты невменяемый. Я отключаю кнопку. Тебе нельзя доверять. (", buttomImageName: "5.1"),
            Message(messageText: "Ладно… я не могу её отключить на самом деле, но просто прекрати тыкать в неё, в конце концов!", buttomImageName: "4.1"),
            Message(messageText: "Остановись, прошу! Это последний шанс!!!", buttomImageName: "4.1"),
            Message(messageText: "…То был не последний шанс, но этот — точно последний!", buttomImageName: "4.1"),
            Message(messageText: "(▽◕ ᴥ ◕▽) Остановись.", buttomImageName: "4.1")
        ]
    }
}
