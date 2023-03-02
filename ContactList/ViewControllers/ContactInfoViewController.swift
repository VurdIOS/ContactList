//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 02.03.2023.
//

import UIKit

class ContactInfoViewController: UIViewController {

    
    @IBOutlet var PhoneLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PhoneLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
        title = contact.fullName

    }
}
