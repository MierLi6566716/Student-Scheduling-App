//
//  RecommendGroupView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct RecommendGroupView: View {
    var body: some View {
        VStack {
            TitleWithMoreView(title: "Recommend", viewMoreClicked: {})
                
            
            HStack(alignment: .center, spacing: 10) {
                RecommendObjectView(text: """
            Top Tennis Training
            """, buttonTitle: "WEBSITE", buttonAction: {}, backgroundImage: Image("TopTennis"))
                        .aspectRatio(0.73, contentMode: .fill)
                        .fixedSize(horizontal: true, vertical: false)
                VStack(spacing: 10) {
                    RecommendObjectView(text: """
                GolfTec
                """, buttonTitle: "WEBSITE", buttonAction: {}, backgroundImage: Image("GolfTech"))
                    .aspectRatio(1.90, contentMode: .fill)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    RecommendObjectView(text: """
                Khan Academy
                """, buttonTitle: "WEBSITE", buttonAction: {}, backgroundImage: Image("KhanAcademy"))
                    .aspectRatio(1.90, contentMode: .fill)
                    .fixedSize(horizontal: false, vertical: true)
                }
            }
        }
        .aspectRatio(1.38, contentMode: .fit)
    }
}

struct RecommendGroupView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendGroupView()
    }
}
