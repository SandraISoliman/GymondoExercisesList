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
    let exerciseBase: Int?
    let description: String?
    let creationDate: String?
    let category: Int?
    let muscles: [Int]?
    let musclesSecondary: [Int]?
    let equipment: [Int]?
    let license: Int?
    let licenseAuthor: String?
    let variations: [Int]?
    var image: String?
    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case uuid = "uuid"
        case name = "name"
        case exerciseBase = "exercise_base"
        case description = "description"
        case creationDate = "creation_date"
        case category = "category"
        case muscles = "muscles"
        case musclesSecondary = "muscles_secondary"
        case equipment = "equipment"
        case license = "license"
        case licenseAuthor = "license_author"
        case variations = "variations"
        case image = "image"
    }
    
    static func == (lhs: Exercise, rhs: Exercise) -> Bool {
        if  lhs.id == rhs.id &&
            lhs.uuid == rhs.uuid &&
            lhs.name == rhs.name &&
            lhs.exerciseBase == rhs.exerciseBase &&
            lhs.description == rhs.description &&
            lhs.creationDate == rhs.creationDate &&
            lhs.category == rhs.category &&
            lhs.muscles == rhs.muscles &&
            lhs.musclesSecondary == rhs.musclesSecondary &&
            lhs.equipment == rhs.equipment &&
            lhs.license == rhs.license &&
            lhs.licenseAuthor == rhs.licenseAuthor &&
            lhs.variations == rhs.variations &&
            lhs.image == rhs.image {
            return true
        }
        return false
    }
}


