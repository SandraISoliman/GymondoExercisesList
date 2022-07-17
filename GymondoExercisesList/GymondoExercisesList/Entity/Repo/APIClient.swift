//
//  APIClient.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation
import Combine

protocol ExercisesClientProtocol {
    func fetchArticles() -> AnyPublisher<ExercisesResponse, Error>
}

class APIService: ExercisesClientProtocol{
    
    func fetchArticles() -> AnyPublisher<ExercisesResponse, Error> {
        
        var components = URLComponents(string: "https://wger.de/api/v2/exercise/?limit=20&offset=0")!
        
        components.queryItems = [
            URLQueryItem(name: "Authorization", value: "Token 8822110bf23c010e02bcc486be85512f5bd4cb88")
        ]
        
        let request = URLRequest(url: components.url!, timeoutInterval: 10)
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: ExercisesResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
