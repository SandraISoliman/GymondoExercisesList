//
//  ExerciseDetails.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 26/07/2022.
//

import Foundation
import SwiftUI
import Kingfisher


public struct ExerciseView: View {
     var exercise: Exercise
    
    public var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 30){
                    if let images = exercise.images{
                        if images.count > 0{
                            Text("Images")
                        }
                        ForEach(images.indices, id: \.self){ index in
                            KFImage(URL(string: images[index].image ?? ""))
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                    }
                    
                    if let variations = exercise.variations{
                        if variations.count > 0{
                            Text("Variations")
                        }
                        ForEach(variations.indices, id: \.self){ index in
                            Button {
                            } label: {
                                Text(String(variations[index]))
                            }

                        }
                    }
                }
                .padding(.horizontal, 16)
                
            }
        }
    }
    
}

