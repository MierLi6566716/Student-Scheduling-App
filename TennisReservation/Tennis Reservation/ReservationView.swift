//
//  ReservationView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct ReservationView: View {
    var body: some View {
        ScrollView {
            Text("Tennis: Dakota Ridge High School")
            Text("Golf: Foothills Golf Course")
            Text("SAT: Zoom")
        }
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}
