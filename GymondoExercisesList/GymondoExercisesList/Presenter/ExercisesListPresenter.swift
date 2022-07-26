//
//  ExercisesPresenter.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation

class ExercisesListPresenter: ViewToPresenterExercisesListProtocol {
    var view: PresenterToViewExercisesListProtocol?
    
    var interactor: PresenterToInteractorExercisesListProtocol?
    
    var router: PresenterToRouterExercisesListProtocol?
    
    func fetchExercises() {
        interactor?.loadExercises()
    }
 
}

extension ExercisesListPresenter: InteractorToPresenterExercisesListProtocol {
    func exercisesImagesSuccess(list: Array<Image>) {
        view?.onResponseSuccesImages(list: list)
    }
    
    func exercisesSuccess(list: Array<Exercise>) {
        view?.onResponseSucces(list: list)
    }
    
    func exercisesFailed() {
        view?.onResponseFailed(error: "Parsing Error")
    }
}
