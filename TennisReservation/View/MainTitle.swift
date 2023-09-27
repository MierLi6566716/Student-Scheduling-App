//
//  MainTitle.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct MainTitle: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("TitleFontColor"))
                .fontWeight(.regular)
                
            Text(description)
                .font(.title)
                .foregroundColor(Color("Color"))
                .fontWeight(.regular)
        }
    }
}

struct MainTitle_Previews: PreviewProvider {
    static var previews: some View {
        MainTitle(title: "Mohsen", description: "Summer time, let's book an appointment for a tennis lesson with Mier!")
    }
}
