//
//  Image.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 26/07/2022.
//

import Foundation

struct Image: Decodable, Equatable {
    let id: Int?
    let uuid: String?
    let exerciseBase: Int?
    let image: String?
    let isMain: Bool?
    let status: String?
    let style: String?
    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case uuid = "uuid"
        case exerciseBase = "exercise_base"
        case image = "image"
        case isMain = "is_main"
        case status = "status"
        case style = "style"
    }
    
    static func == (lhs: Image, rhs: Image) -> Bool {
        if  lhs.id == rhs.id &&
            lhs.uuid == rhs.uuid &&
            lhs.exerciseBase == rhs.exerciseBase &&
            lhs.image == rhs.image &&
            lhs.isMain == rhs.isMain &&
            lhs.status == rhs.status &&
            lhs.style == rhs.style {
            return true
        }
        return false
    }
}



