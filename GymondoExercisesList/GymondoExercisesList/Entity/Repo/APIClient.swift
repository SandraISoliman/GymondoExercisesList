//
//  APIClient.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation
import Combine

class APIService: ExercisesClientProtocol{
    
    static func fetchExercises() -> AnyPublisher<ExercisesResponse, Error> {
        
        var components = URLComponents(string: "https://wger.de/api/v2/exercise/")!

        components.queryItems = [
            URLQueryItem(name: "Authorization", value: "Token 8822110bf23c010e02bcc486be85512f5bd4cb88")
        ]

        let request = URLRequest(url: components.url!, timeoutInterval: 10)

        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: ExercisesResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func fetchImages() -> AnyPublisher<ImagesResponse, Error> {
        
        var components = URLComponents(string: "https://wger.de/api/v2/exerciseimage/")!

        components.queryItems = [
            URLQueryItem(name: "Authorization", value: "Token 8822110bf23c010e02bcc486be85512f5bd4cb88")
        ]

        let request = URLRequest(url: components.url!, timeoutInterval: 10)

        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: ImagesResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
        
}
