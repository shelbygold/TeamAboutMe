//
//  TeamController.swift
//  BestGroupAboutMe
//
//  Created by shelby gold on 4/15/19.
//  Copyright © 2019 shelby gold. All rights reserved.
//

import Foundation

class TeamController{
    static let shared = TeamController()
    private init () {
        team = self.createTeam()
    }
    
    
    var team: [TeamMembers] = []
    
    func createTeam() -> [TeamMembers]{
        
        var ourteam: [TeamMembers] = []
        
        for member in TeamController.teamNames{
            guard let index = TeamController.teamNames.index(of: member) else {return []}
            let hobbies = TeamController.hobbies[index]
            let bio = TeamController.bio[index]
            let cohort = TeamController.coHort[index]
            let team = TeamMembers(name: member, hobbies: hobbies, bio: bio, coHort: cohort)
            ourteam.append(team)
        }
        return ourteam
    }
    static let teamNames = ["Tanner", "Bonnie", "Shelby", "Kyle"]
    static let hobbies = [""]
    static let bio = [""]
    static let coHort = [""]
}


