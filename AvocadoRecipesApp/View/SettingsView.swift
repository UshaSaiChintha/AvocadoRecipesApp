//
//  SettingsView.swift
//  AvocadoRecipesApp
//
//  Created by Usha Sai Chintha on 22/09/22.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = true
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
            }
            .padding()
            
            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifications")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack{
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado recipes")
                        }
                        
                        HStack{
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack{
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Usha Sai")
                        }
                        
                        HStack{
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Usha")
                        }
                        
                        HStack{
                            Text("Website")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        }
                        
                        HStack{
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack{
                            Text("Personal message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding❤️!!!")
                        }
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
