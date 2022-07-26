//
//  AppDelegate.swift
//  GymondoExercisesList
//
//  Created by Sandra Soliman on 17/07/2022.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ExercisesRouter.createExercisesListModule()
        
        let navigation = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigation
        self.window = window
        window.makeKeyAndVisible()
        
        
        var components = URLComponents(string: "https://wger.de/api/v2/exercise/")!
        
        components.queryItems = [
            URLQueryItem(name: "Authorization", value: "Token 8822110bf23c010e02bcc486be85512f5bd4cb88")
        ]
        
        let request = URLRequest(url: components.url!, timeoutInterval: 10)
        
        return true
    }
}

