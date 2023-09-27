//
//  MainView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/25/23.
//

import SwiftUI

struct MainView: View {
    @State var tabSelection = 0
    
    var body: some View {
        TabView (selection: $tabSelection){
            VStack(alignment: .center, spacing: 5) {
                HStack(alignment: .center, spacing: 5) {
                    MainTitle(title: "Mier",
                              description: "Let's book an appointment!")
                    .padding(.top, 20)
                    Spacer()
                    CircleImageWithBlur(image:
                                            Image("Avatar"))
                }
                .padding(.bottom, 20)
                VStack(alignment: .center, spacing: -40) {
                    SearchBox()
                    
                        .frame(width: 360, height: 70)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(.black
                                .opacity(2))
                        )
                }
                
                
                ServiceCategoryView(tabSelection: $tabSelection)
                
                    .padding(.bottom, 10)
                
                RecommendGroupView()
                Spacer()
                Spacer()
                
            }
            .padding(.horizontal, 25)
            .tabItem {
                Image(systemName: "house")
                Text("Main")
            }
            .tag(0)
            
            ReservationFormViewTennis()
                .tabItem {
                    Image(systemName: "tennis.racket")
                    Text("Tennis")
                }
                .tag(1)
            
            ReservationFormViewGolf()
                .tabItem {
                    Image(systemName: "figure.golf")
                    Text("Golf")
                }
                .tag(2)
            
            ReservationFormViewSAT()
                .tabItem {
                    Image(systemName: "x.squareroot")
                    Text("SAT")
                }
                .tag(3)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
