//
//  Questions.swift
//  SolarSystem
//
//  Created by Ярослав Любиченко on 9.3.2023.
//

import Foundation

struct Question {
    let title: String
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [
        Question(
            title: "Какую площадь поверхности планеты занимает Мировой океан?",
            answers: [
            Answer(title: "Приблизительно 70,8 %"),
            Answer(title: "Приблизительно 72 %"),
            Answer(title: "Приблизительно 73 %"),
            Answer(title: "Приблизительно 78,0 %")
            ]
        ),
        Question(
            title: "Какая планета самая большая из карликовых?",
            answers: [
            Answer(title: "Меркурий"),
            Answer(title: "Плутон"),
            Answer(title: "Эрида"),
            Answer(title: "Марс")
            ]
        ),
        Question(
            title: "Сколько спутников у Сатурна?",
            answers: [
            Answer(title: "83"),
            Answer(title: "87"),
            Answer(title: "85"),
            Answer(title: "81")
            ]
        ),
        Question(
            title: "Какую площадь поверхности планеты занимает Мировой океан?",
            answers: [
            Answer(title: "Приблизительно 70,8 %"),
            Answer(title: "Приблизительно 72 %"),
            Answer(title: "Приблизительно 73 %"),
            Answer(title: "Приблизительно 78,0 %")
            ]
        ),
        Question(
            title: "Какая планета была названа в честь древнегреческого бога Ареса?",
            answers: [
            Answer(title: "Уран"),
            Answer(title: "Плутон"),
            Answer(title: "Марс"),
            Answer(title: "Юпитер")
            ]
        )
        ]
    }
}

struct Answer {
    let title: String
}
