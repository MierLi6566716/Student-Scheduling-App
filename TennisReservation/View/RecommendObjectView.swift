//
//  RecommendObjectView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct RecommendObjectView: View {
    let text: String
    let buttonTitle: String
    let buttonAction: () -> Void
    let backgroundImage: Image
    
    var body: some View {
        ZStack(alignment: .center) {
            Color("TextColor2")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(8)
            
            
            VStack(alignment: .leading){
                Text(text)
                    .font(.caption)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Button{
                        buttonAction()
                    } label: {
                        Text(buttonTitle)
                            .font(.caption)
                            .fontWeight(.light)
                            .foregroundColor(Color ("TitleFontColor"))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 5)
                    }
                    .background(
                        Color("BackgroundColor")
                            .cornerRadius(5)
                    )
                    .padding(.horizontal, 5)
                }
                .padding(.vertical, 5)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 10)
        }
        .background(
            backgroundImage
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
                
        )
    }
}

struct RecommendObjectView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendObjectView(text: """
Top Tennis Training
""", buttonTitle: "Website", buttonAction: {},backgroundImage: Image("TopTennis"))
        .frame(width: 172, height: 90, alignment: .center)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
