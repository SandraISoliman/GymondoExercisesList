//
//  Exercise.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation

struct Exercise: Decodable, Equatable {
    let id: Int?
    let uuid: String?
    let name: String?
    let exerciseBaseId: Int?
    let category: BaseModel?
    let equipment: [BaseModel]?
    let variations: [Int]?
    var images: [Image]?
    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case uuid = "uuid"
        case name = "name"
        case exerciseBaseId = "exercise_base_id"
        case category = "category"
        case equipment = "equipment"
        case variations = "variations"
        case images = "images"
    }
    
    static func == (lhs: Exercise, rhs: Exercise) -> Bool {
        if  lhs.id == rhs.id &&
            lhs.uuid == rhs.uuid &&
            lhs.name == rhs.name &&
            lhs.exerciseBaseId == rhs.exerciseBaseId &&
            lhs.category == rhs.category &&
            lhs.equipment == rhs.equipment &&
            lhs.variations == rhs.variations &&
            lhs.images == rhs.images {
            return true
        }
        return false
    }
}


