//
//  ServiceObjectView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct ServiceObjectView: View {
    let serviceName: String
    let serviceImage: Image
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            ZStack {
                serviceImage
                    .resizable()
                    .foregroundColor(.white)
                    .aspectRatio(1, contentMode: .fit)
                    .cornerRadius(20)
                    .padding(10)
            }
            
            .shadow(color:
                    Color("TitleFontColor").opacity(0.4), radius: 4, x: 0, y: 10)
            .padding(10)
            
            Text(serviceName)
                .foregroundColor(Color("Color"))
                .lineLimit(1)
                .fixedSize()
        }
    }
}

struct ServiceObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceObjectView(serviceName: "Tennis",
                          serviceImage: Image("Tennis"))
        .padding()
        
    }
}
