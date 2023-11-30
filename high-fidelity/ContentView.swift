//
//  ContentView.swift
//  high-fidelity
//
//  Created by Sam Chen on 11/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showLoginView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("SOLOGUARD")
                    .font(.system(size: 40))
                    .font(.headline)
                    .fontWeight(.heavy)
                    .padding()
                
                Image(systemName: "airplane.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 100))
                    .rotationEffect(.degrees(-45))
                    .padding(.bottom, 80)
        
                    Button("Log in") {
                        if (showLoginView == false) {
                            showLoginView = true
                        }
                    }
                    .foregroundColor(.black)
                    .frame(width: 200, height: 50)
                    .background(Color.yellow2)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                
                    NavigationLink(destination: LoginView(), isActive: $showLoginView){
                        EmptyView()
                    }
                
                Text("")
                
                Button("Create an account") {
                }
                .foregroundColor(.black)
                .frame(width: 200, height: 50)
                .background(Color.yellow2)
                .cornerRadius(5)
                .shadow(radius: 5)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.perry)
        }
    }
}

#Preview {
    ContentView()
}
