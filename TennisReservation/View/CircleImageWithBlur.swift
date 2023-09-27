//
//  CircleImageWithBlur.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct CircleImageWithBlur: View {
    let image: Image
    var body: some View {
        ZStack {
            image
                .resizable()
                .frame(width: 110, height: 110, alignment: .center)
                .clipShape(Circle())
                .offset(x: 0, y: 15)
                .opacity(52)
                .blur(radius: 14)
            image
                .resizable()
                .frame(width: 110, height: 110, alignment: .center)
                .scaledToFit()
                .clipShape(Circle())
        }
    }
}

struct CircleImageWithBlur_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageWithBlur(image: Image("Avatar"))
    }
}
