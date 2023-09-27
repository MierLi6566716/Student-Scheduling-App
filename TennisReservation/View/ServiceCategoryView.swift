//
//  ServiceCategoryView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct ServiceCategoryView: View {
    @Binding var tabSelection: Int // Binding to the tabSelection variable
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            HStack(alignment: .center) {
                Spacer()
                Button(action: {
                    tabSelection = 1 // Set tabSelection to 1 to switch to the Tennis Reservation Form Page
                }) {
                    ServiceObjectView(serviceName: "Tennis", serviceImage: Image("Tennis"))
                        .frame(minWidth: 120, maxWidth: .infinity)
                }
                Spacer()
                Button(action: {
                    tabSelection = 2 // Set tabSelection to 2 to switch to the Golf Reservation Form Page
                }) {
                    ServiceObjectView(serviceName: "Golf", serviceImage: Image("Golf"))
                        .frame(minWidth: 120, maxWidth: .infinity)
                }
                Spacer()
                Button(action: {
                    tabSelection = 3 // Set tabSelection to 3 to switch to the SAT Page
                }) {
                    ServiceObjectView(serviceName: "SAT", serviceImage: Image("Math"))
                        .frame(minWidth: 120, maxWidth: .infinity)
                }
                Spacer()
            }
        }
    }
}

struct ServiceCategoryView_Previews: PreviewProvider {
    @State static var tabSelection = 0 // Create a State variable for tabSelection
    
    static var previews: some View {
        ServiceCategoryView(tabSelection: $tabSelection) // Pass tabSelection as a Binding
            .previewLayout(.sizeThatFits)
    }
}
