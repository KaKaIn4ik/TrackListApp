//
//  GroupContactInfoViewController.swift
//  TrackListApp
//
//  Created by Кунгурцев Эдуард Сергеевич on 23.03.2022.
//

import UIKit

class GroupContactInfoViewController: UITableViewController {
    var persons =  Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        


    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newContact", for: indexPath)
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.email
        content.secondaryText = contact.phone

        
        return cell
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        let section = "sdsd"
        return section

    }
    

    

    
    // MARK: - Navigation

    

}
