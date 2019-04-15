//
//  TeamMembers.swift
//  BestGroupAboutMe
//
//  Created by shelby gold on 4/15/19.
//  Copyright © 2019 shelby gold. All rights reserved.
//

import Foundation


class TeamMembers {
    
    let name: String
    let hobbies: String
    let bio: String
    let coHort: String
    init(name: String, hobbies: String, bio: String, coHort: String) {
        self.name = name
        self.hobbies = hobbies
        self.bio = bio
        self.coHort = coHort
    }
}

extension TeamMembers: Equatable {
    static func == (lhs: TeamMembers, rhs: TeamMembers) -> Bool{
        return lhs.name == rhs.name
    }
}
