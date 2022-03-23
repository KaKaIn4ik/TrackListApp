//
//  MainTabBarViewController.swift
//  TrackListApp
//
//  Created by Кунгурцев Эдуард Сергеевич on 23.03.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    var persons: [Person] = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarController.viewControllers else {return }
//
//    }

    
    // MARK: - Navigation



}
