//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by 황은지 on 2023/02/15.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
