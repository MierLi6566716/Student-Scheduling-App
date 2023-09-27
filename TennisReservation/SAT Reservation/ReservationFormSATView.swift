//
//  ReservationFormSATView.swift
//  TennisReservation
//
//  Created by Mier Li on 9/26/23.
//

import SwiftUI

import SwiftUI

struct ReservationFormViewSAT: View {
    @State var reservationDate = Date()
    @State var party:String = ""
    @State var specialRequests:String = ""
    @State var customerName = ""
    @State var customerPhoneNumber = ""
    @State var customerEmail = ""
    
    
    var body: some View {
        VStack {
            HStack(){
                Text("SAT")
                    .padding(.top, 50)
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                    .padding(.leading, 20)
                    .foregroundColor(Color("Color"))
                CircleImageWithBlur(image:
                    Image("Math"))
                
            }
            Text("Zoom link: https://unc.zoom.us/j/7738258831")
            Form {
                HStack {
                    VStack (alignment: .leading) {
                        Text("NUMBER OF PEOPLE:")
                            .font(.subheadline)
                        TextField("1,2,3...", text:
                                    $party)
                    }
                }
                
                VStack {
                    DatePicker(selection:
                                $reservationDate, in:
                                Date()...,
                               displayedComponents: [.date, .hourAndMinute]) {
                        Text("Select a date")
                    }
                }
                
                .padding([.top, .bottom], 20)
                
                Group{
                    Group{
                        HStack{
                            Text("NAME: ")
                                .font(.subheadline)
                            TextField("Your name...", text: $customerName)
                                .disableAutocorrection(true)
                        }
                        HStack{
                            Text("PHONE: ")
                                .font(.subheadline)
                            TextField("Your phone number...", text: $customerPhoneNumber)
                                .textContentType(.telephoneNumber)
                                .keyboardType(.phonePad)
                        }
                        
                        HStack{
                            Text("E-MAIL: ")
                                .font(.subheadline)
                            TextField("Your e-mail...", text: $customerEmail)
                                .keyboardType(.emailAddress)
                                .textContentType(.emailAddress)
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                        }
                        
                        TextField("Add any special requests (optional)", text: $specialRequests, axis: .vertical)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 20).stroke(.gray
                                    .opacity(0.2))
                            )
                            .lineLimit(6)
                            .padding([.top, .bottom], 20)
                    }
                
                }
            }
            Button("CONFIRM RESERVATION") {
                EXIT_SUCCESS
            }
            .foregroundColor(Color("Color"))
            
            .padding(.top, -90)
            
        }
        
    }
}
            
    



