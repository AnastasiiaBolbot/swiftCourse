//
//  main.swift
//  MusicianClass
//
//  Created by Анастасия Болбот on 01.03.2024.
//

import Foundation

let james = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar", typeInit: .Vocalist)
print(james.age)
print(james.type)
james.sign()

let kirk =  SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Guitar", typeInit: .LeadGuitar)

kirk.sign()
kirk.sing2()

