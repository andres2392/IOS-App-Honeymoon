//
//  InfoView.swift
//  Honeymoon
//
//  Created by PDWS on 10/10/22.
//

import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                CreditsView()
                
                Spacer()
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

// MARK: - APP VIEW
struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(itemOne: "Application", itemTwo: "Honeymoon")
            RowAppInfoView(itemOne: "Compatibility", itemTwo: "Iphone and Ipad")
            RowAppInfoView(itemOne: "Developer/Designer", itemTwo: "Andres Gonzalez")
            RowAppInfoView(itemOne: "Website", itemTwo: "aigonzalez.com")
            RowAppInfoView(itemOne: "Version", itemTwo: "1.0.0")
        }
    }
}

struct RowAppInfoView: View {
    // MARK: - PROPERTIES
    var itemOne: String
    var itemTwo: String
    
    var body: some View {
        HStack{
            Text(itemOne).foregroundColor(Color.gray)
            Spacer()
            Text(itemTwo)
        }
        Divider()
    }
}

// MARK: - CREDIT VIEW
struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack{
                Text("Photos").foregroundColor(Color.gray)
                Spacer()
                Text("Unsplash")
            }
            Divider()
            Text("Photographers").foregroundColor(Color.gray)
        }
    }
}
