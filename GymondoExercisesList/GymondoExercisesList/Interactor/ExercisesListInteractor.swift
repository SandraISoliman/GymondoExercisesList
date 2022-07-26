//
//  ExercisesListInteractor.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation
import Combine

class ExercisesListInteractor: PresenterToInteractorExercisesListProtocol {
    var presenter: InteractorToPresenterExercisesListProtocol?
    private var cancellable: AnyCancellable?
    
    func loadExercises() {

        cancellable = APIService.fetchExercises()
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(_):
                    self.presenter?.exercisesFailed()
                case .finished:
                    break
                }
            } receiveValue: { [weak self] exercisesResponse in
                if let exercises = exercisesResponse.results{
                    self?.presenter?.exercisesSuccess(list: exercises)
                }
            }
    }
}
