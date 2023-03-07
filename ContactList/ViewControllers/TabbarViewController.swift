//
//  TabbarViewController.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 07.03.2023.
//

import UIKit

final class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let contacts = Contact.generateContacts()
        contactListVC.contactList = contacts
        sectionVC.contactList = contacts
        
    }
    
}
