//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 02.03.2023.
//

import UIKit
// MARK: - ContactInfoViewController

final class ContactInfoViewController: UIViewController {

    // MARK: -IB Outlets
    @IBOutlet var PhoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Values
    var contact: Contact!
    
    // MARK: - Life Cycle Of View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PhoneLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
        title = contact.fullName
    }
}
