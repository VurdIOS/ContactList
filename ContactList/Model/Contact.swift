//
//  Contact.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 02.03.2023.
//

struct Contact {
    let name: String
    let secondName: String
    let phoneNumber: String
    let email: String
    let icon = "contactIcon"
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    static func generateContacts(from names: [String],
                                 _ secondNames: [String],
                                 _ phoneNumbers: [String],
                                 _ email: [String]) -> [Contact] {
        
        let namesShuf = names.shuffled()
        let secondNamesShuf = secondNames.shuffled()
        let phoneNumbersShuf = phoneNumbers.shuffled()
        let emailShuf = email.shuffled()
        
        var contactList: [Contact] = []
        
        for index in 0...names.count - 1 {
            contactList.append(Contact(name: namesShuf[index],
                                       secondName: secondNamesShuf[index],
                                       phoneNumber: phoneNumbersShuf[index],
                                       email: emailShuf[index]))
        }
        return contactList
    }
}

