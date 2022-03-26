//
//  ContactViewController.swift
//  TrackListApp
//
//  Created by Кунгурцев Эдуард Сергеевич on 23.03.2022.
//

import UIKit

class ContactViewController: UITableViewController {
    var persons: [Person] = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.name)   \(contact.surname)"
        
        cell.contentConfiguration = content
        
        return cell
        
    }
    



    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetalisVC = segue.destination as? ContactDetalisViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetalisVC.persons = persons[indexPath.row]
        
    }
    

}
