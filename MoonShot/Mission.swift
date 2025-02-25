//
//  Mission.swift
//  MoonShot
//
//  Created by Samuel Hernandez Vicera on 3/25/24.
//

import Foundation
struct CrewRole: Codable {
    let name: String
    let role: String
}


struct Mission: Codable, Identifiable {

    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
