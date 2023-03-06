//
//  DataStore.swift
//  ContactList
//
//  Created by Камаль Атавалиев on 02.03.2023.
//
// MARK: - Data Store

class DataStore {
    
    static let shared = DataStore()
    
    let namesData = [
        "Kamal",
        "Aleksey",
        "Dmitrii",
        "Vladimir",
        "Slava",
        "Anton",
        "Gevorg",
        "Sergey",
        "Victor",
        "Gleb"
    ]

    let secondNamesData = [
        "Smith",
        "Black",
        "Bruk",
        "Johnson",
        "Brown",
        "Davis",
        "Miller",
        "Wilson",
        "Jones",
        "Williams"
    ]

    let phoneNumbersData = [
        "9-302-345",
        "9-412-512",
        "9-634-367",
        "9-723-623",
        "9-124-734",
        "9-631-832",
        "9-823-282",
        "9-621-824",
        "9-724-912",
        "9-053-262"
    ]

    let emailData = [
    "www@asd.re",
    "awasv@asv.re",
    "wadf@gsdf.re",
    "edvsd@sdge.re",
    "ashuf@jsdf.re",
    "sdfr@jdfge.re",
    "sdfhre@jhdf.re",
    "sdgwe@ahce.re",
    "asdgefjd@rehd.re",
    "asdfasgh@esrewr.re"
    ]
    
    private init() {}

}
