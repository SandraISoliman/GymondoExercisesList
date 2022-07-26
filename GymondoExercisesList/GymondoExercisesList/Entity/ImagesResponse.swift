//
//  ImagesResponse.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 26/07/2022.
//

import Foundation

struct ImagesResponse: Decodable, Equatable {
    
    let count: Int?
    let results: [Image]?
    let next: String?
    let previous: String?
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case results = "results"
        case next = "next"
        case previous = "previous"
    }
    
    static func == (lhs: ImagesResponse, rhs: ImagesResponse) -> Bool {
        if lhs.count == rhs.count &&
            lhs.results == rhs.results &&
            lhs.next == rhs.next &&
            lhs.previous == rhs.previous{
            return true
        }
        return false
    }
}

