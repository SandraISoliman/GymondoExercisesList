//
//  ExercisesList.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import UIKit

import UIKit

class ExercisesListViewController: UIViewController, UITableViewDelegate {
    
    private var tableView =  UITableView()
    
    var exercises : [Exercise] = []
    var presenter: ViewToPresenterExercisesListProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        setupTableView()
        navigationItem.title = "Exercises"

        presenter?.fetchExercises()
        
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        tableView.register(ExerciseCell.self, forCellReuseIdentifier: "ExerciseCell")
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        tableView.tableFooterView = UIView()
        
        tableView.backgroundColor = .white
    }
    
}

extension ExercisesListViewController: PresenterToViewExercisesListProtocol {
    
    func onResponseSucces(list: [Exercise]) {
        self.exercises = list
        self.tableView.reloadData()
    }
    
    func onResponseFailed(error: String) {
    }
}

extension ExercisesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! ExerciseCell
        cell.exercise = exercises[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
