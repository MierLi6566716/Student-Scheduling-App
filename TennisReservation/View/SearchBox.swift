//
//  SearchBox.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct SearchBox: View {
    @State var searchText: String = ""
    var body: some View {
        NavigationView {
            NavigationLink("Locations", destination: ReservationView())
        }
        .foregroundColor(Color("Color"))
        
    }
}

struct SearchBox_Previews: PreviewProvider {
    static var previews: some View {
        SearchBox()
    }
}
