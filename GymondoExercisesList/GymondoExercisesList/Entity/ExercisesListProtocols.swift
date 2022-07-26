//
//  ExercisesListProtocols.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation
import Combine

protocol ExercisesClientProtocol {
    static func fetchExercises() -> AnyPublisher<ExercisesResponse, Error>
}

protocol ViewToPresenterExercisesListProtocol {
    
    var view: PresenterToViewExercisesListProtocol? {get set}
    var interactor: PresenterToInteractorExercisesListProtocol? {get set}
    var router: PresenterToRouterExercisesListProtocol? {get set}
    
    func fetchExercises()
    
    
}

protocol PresenterToViewExercisesListProtocol {
    func onResponseSucces(list: [Exercise])
    func onResponseFailed(error: String)
}

protocol PresenterToRouterExercisesListProtocol {
    
    static func createExercisesListModule() -> ExercisesListViewController 
    
}

protocol PresenterToInteractorExercisesListProtocol {
    
    var presenter: InteractorToPresenterExercisesListProtocol? {get set}
    func loadExercises()
    
}

protocol InteractorToPresenterExercisesListProtocol {
    func exercisesSuccess(list: Array<Exercise>)
    func exercisesFailed()
}
