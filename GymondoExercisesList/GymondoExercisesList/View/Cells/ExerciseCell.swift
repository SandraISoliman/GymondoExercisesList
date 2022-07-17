//
//  ExerciseCell.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import Foundation
import UIKit
import Kingfisher

class ExerciseCell: UITableViewCell {
    
    private let exerciseImageView = UIImageView()
    private let title = UILabel()
    
    var exercise: Exercise? {
        didSet{
            configureCell()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(){
        imageViewSetup()
        titleSetup()
    }
    
    func imageViewSetup(){
        contentView.addSubview(exerciseImageView)
        exerciseImageView.translatesAutoresizingMaskIntoConstraints = false
        exerciseImageView.contentMode = .scaleToFill
        exerciseImageView.kf.setImage(with: URL(string: exercise?.image ?? ""), placeholder: UIImage(named: "placeholder"))
        
        NSLayoutConstraint.activate([
            exerciseImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            exerciseImageView.widthAnchor.constraint(equalToConstant: 60),
            exerciseImageView.heightAnchor.constraint(equalToConstant: 60),
            exerciseImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    func titleSetup(){
        contentView.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = exercise?.name
        title.font = UIFont.boldSystemFont(ofSize: 16)
        title.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            title.leadingAnchor.constraint(equalTo: exerciseImageView.trailingAnchor, constant: 8),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
}


