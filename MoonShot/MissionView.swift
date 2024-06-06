//
//  MissionView.swift
//  MoonShot
//
//  Created by Samuel Hernandez Vicera on 3/25/24.
//

import SwiftUI

struct MissionView: View {
    
//    struct CrewMember {
//        let role: String
//        let astronaut: Astronaut
//    }
    
    let mission: Mission
//    let crew: [CrewMember]
    let astronaut: [String: Astronaut]
    
    
    var body: some View {
        ScrollView{
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) {
                        width, axis in
                        width * 0.6
                    }
                Text(mission.formattedLaunchDate)
                
                VStack(alignment: .leading) {
                    SectionDivider()
                    
                    
                    Text("Mission Highlights")
                        .font(.title.bold())
                    .padding(.bottom, 5)
                    
                    Text(mission.description)
                    
                    SectionDivider()
                    
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                }
                .padding(.horizontal)
//                
                AstronautScrollView(mission: mission , astronauts: astronaut)
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack {
//                        ForEach(crew, id: \.role) {crewMember in
//                            NavigationLink {
//                                AstronautView(astronaut: crewMember.astronaut)                            } label: {
//                                HStack {
//                                    Image(crewMember.astronaut.id)
//                                        .resizable()
//                                        .frame(width: 104, height: 72)
//                                        .clipShape(.capsule)
//                                        .overlay(
//                                        Capsule()
//                                            .strokeBorder(.white, lineWidth: 1)
//                                        )
//                                    VStack(alignment: .leading) {
//                                        Text(crewMember.astronaut.name)
//                                            .foregroundStyle(.white)
//                                            .font(.headline)
//                                        Text(crewMember.role)
//                                            .foregroundStyle(.white.opacity(0.6))
//                                    }
//                                }
//                                .padding(.horizontal)
//                            }
//                        }
//                    }
//                }

            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
            }
    
//    init(mission: Mission, astronauts: [String: Astronaut]){
//        self.mission = mission
//        
//        self.crew = mission.crew.map { member in
//            if let astronaut = astronauts[member.name]{
//                return CrewMember(role: member.role, astronaut: astronaut)
//            }
//            else {
//                fatalError("Missing \(member.name)")
//            }
//        }
//    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MissionView(mission: missions[0], astronaut: astronauts)
        .preferredColorScheme(.dark)
}
