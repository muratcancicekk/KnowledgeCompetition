//
//  QuestionModel.swift
//  KnowledgeCompetition
//
//  Created by Murat Çiçek on 20.04.2022.
//

import Foundation
// MARK: - Question
struct Question: Codable {
    let responseCode: Int
    let results: [Results]

    enum CodingKeys: String, CodingKey {
        case responseCode = "response_code"
        case results
    }
}

// MARK: - Result
struct Results: Codable {
    let category: String?
    let type: TypeEnum?
    let difficulty: Difficulty?
    let question, correctAnswer: String?
    let incorrectAnswers: [String]?

    enum CodingKeys: String, CodingKey {
        case category, type, difficulty, question  
        case correctAnswer = "correct_answer"
        case incorrectAnswers = "incorrect_answers"
    }
}

enum Difficulty: String, Codable {
    case easy = "easy"
    case hard = "hard"
    case medium = "medium"
}

enum TypeEnum: String, Codable {
    case boolean = "boolean"
    case multiple = "multiple"
}
