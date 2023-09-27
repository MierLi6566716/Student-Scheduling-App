//
//  TitleWithMoreView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct TitleWithMoreView: View {
    let title: String
    let viewMoreClicked: () -> Void
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(Color("TextColor2"))
                .font(.title)
                .fontWeight(.light)
            
            Spacer()
            
            Button{
                viewMoreClicked()
            } label: {
                Text("View More")
                    .foregroundColor(Color("Color"))
                    .font(.body)
            }
        }
    }
}

struct TitleWithMoreView_Previews: PreviewProvider {
    static var previews: some View {
        TitleWithMoreView(title: "Recommend", viewMoreClicked: {})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
