//
//  ContactDetalisViewController.swift
//  TrackListApp
//
//  Created by Кунгурцев Эдуард Сергеевич on 23.03.2022.
//

import UIKit

class ContactDetalisViewController: UIViewController {
    
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!


    var persons: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        phoneLabel.text = "Phone: \(persons.phone)"
        emailLabel.text = "Email: \(persons.email)"

    }
    

    
    // MARK: - Navigation

}


