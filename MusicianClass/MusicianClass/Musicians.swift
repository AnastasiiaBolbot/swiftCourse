//
//  Musicians.swift
//  MusicianClass
//
//  Created by Анастасия Болбот on 01.03.2024.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}


class Musicians {
    
    //Property
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
 
    //Initializer (Constractor)
    init(nameInit:String,ageInit: Int,instrumentInit:String,typeInit:MusicianType) {
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    
}
