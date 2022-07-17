//
//  ExerciseResponse.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation

struct ExercisesResponse: Decodable, Equatable {
    
    let count: Int?
    let results: [Exercise]?
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case results = "results"
    }
    
    static func == (lhs: ArticleResponse, rhs: ArticleResponse) -> Bool {
        if lhs.count == rhs.count &&
           lhs.results == rhs.results{
            return true
        }
        return false
    }
}
