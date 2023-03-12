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
                    Answer(title: "Приблизительно 70,8 %", status: true),
                    Answer(title: "Приблизительно 72 %", status: false),
                    Answer(title: "Приблизительно 73 %", status: false),
                    Answer(title: "Приблизительно 78,0 %", status: false)
                ]
            ),
            Question(
                title: "Какая планета самая большая из карликовых?",
                answers: [
                    Answer(title: "Меркурий", status: false),
                    Answer(title: "Плутон", status: true),
                    Answer(title: "Эрида", status: false),
                    Answer(title: "Марс", status: false)
                ]
            ),
            Question(
                title: "Сколько спутников у Сатурна?",
                answers: [
                    Answer(title: "83", status: true),
                    Answer(title: "87", status: false),
                    Answer(title: "85", status: false),
                    Answer(title: "81", status: false)
                ]
            ),
            Question(
                title: "Какая планета третья по удаленности от Солнца?",
                answers: [
                    Answer(title: "Земля", status: true),
                    Answer(title: "Марс", status: false),
                    Answer(title: "Плутон", status: false),
                    Answer(title: "Луна", status: false)
                ]
            ),
            Question(
                title: "Какая планета была названа в честь древнегреческого бога Ареса?",
                answers: [
                    Answer(title: "Уран", status: false),
                    Answer(title: "Плутон", status: false),
                    Answer(title: "Марс", status: true),
                    Answer(title: "Юпитер", status: false)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String
    let status: Bool
}
