//
//  PersonsListViewController.swift
//  Persons_List
//
//  Created by Pavel Krigin on 31.8.22..
//

import UIKit

final class PersonsListViewController: UITableViewController {

    private var personList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)

        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        content.secondaryText = person.surname
        
        cell.contentConfiguration = content
        
        return cell
    }
 
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: <#T##IndexPath#>, animated: true)
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "show", sender: person)
    }
        
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //должен передавать экзепляр модели
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailsVC.person = sender as? Person
        
    }
    

}
