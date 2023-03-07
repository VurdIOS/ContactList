//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 02.03.2023.
//

import UIKit
// MARK: - ContactListViewController

final class ContactListViewController: UITableViewController {

    // MARK: - Private Values
    var contactList: [Contact] = []

    // MARK: - Life Cycle Of View
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as? ContactInfoViewController
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactInfoVC?.contact = contactList[indexPath.row]
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = "\(contact.fullName)"
        content.image = UIImage(named: "ContactIcon")
        cell.contentConfiguration = content
        
        return cell
    }

}
