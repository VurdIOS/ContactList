//
//  Contact.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 02.03.2023.
//
// MARK: - Contact Struct Model
struct Contact {
    
    
    let name: String
    let secondName: String
    let phoneNumber: String
    let email: String
    let icon = "contactIcon"
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    static func generateContacts() -> [Contact] {
        
        
        let namesShuf = DataStore.shared.namesData.shuffled()
        let secondNamesShuf = DataStore.shared.secondNamesData.shuffled()
        let phoneNumbersShuf = DataStore.shared.phoneNumbersData
        let emailShuf = DataStore.shared.emailData.shuffled()
        
        var contactList: [Contact] = []
        
        for index in 0..<namesShuf.count {
            contactList.append(Contact(
                name: namesShuf[index],
                secondName: secondNamesShuf[index],
                phoneNumber: phoneNumbersShuf[index],
                email: emailShuf[index])
            )
        }
        return contactList
    }
}

