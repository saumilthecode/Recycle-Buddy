//
//  rec3.swift
//  
//
//  Created by Saumil Anand on 30/6/24.
//

import SwiftUI

struct rec3: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 177/255, green: 239/255, blue: 239/255, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Image("recycle3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 30)
                    Text("V")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("PVC, short for Polyvinyl Chloride, or ‘V’ on the plastic symbols, is commonly used in shampoo bottles, clear food packaging, cooking oil containers, and even some medical tubing. These are not recycable, so please dispose of them into the green bins, or general waste bins.")
                        .font(.body)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                }
                .foregroundColor(.black)
            }
            .navigationTitle("Recycling Information")
        }
    }
    
}

#Preview {
    rec3()
}
