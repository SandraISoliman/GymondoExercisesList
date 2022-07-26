//
//  BaseModel.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 26/07/2022.
//

import Foundation

struct BaseModel: Decodable, Equatable {
    let id: Int?
    let name: String?

    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
    
    static func == (lhs: BaseModel, rhs: BaseModel) -> Bool {
        if  lhs.id == rhs.id &&
            lhs.name == rhs.name{
            return true
        }
        return false
    }
}
