//
//  ExercisesRouter.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation
import UIKit

class ExercisesRouter: PresenterToRouterExercisesListProtocol {
    static func createExercisesListModule() -> ExercisesListViewController {
        let viewController = ExercisesListViewController()
        let presenter: ViewToPresenterExercisesListProtocol & InteractorToPresenterExercisesListProtocol = ExercisesListPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ExercisesRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ExercisesListInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        return viewController
    }
}
