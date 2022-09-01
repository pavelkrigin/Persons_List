//
//  PersonDetailsViewController.swift
//  Persons_List
//
//  Created by Pavel Krigin on 1.9.22..
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    @IBOutlet var name: UILabel!
    @IBOutlet var surName: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = person.name
        surName.text = person.surname
        phone.text = person.telephone
        email.text = person.email
        
    }
    

}
