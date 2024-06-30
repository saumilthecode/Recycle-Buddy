//
//  rec7.swift
//  
//
//  Created by Saumil Anand on 30/6/24.
//

import SwiftUI

struct rec7: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 177/255, green: 239/255, blue: 239/255, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Image("recycle7")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 30)
                    Text("Others")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("Other plastics are plastics such as Nylon, Melamine, Acrylic, etc. Items such as Cable ties, baby bottles, hard toys, yoga mats, running shoes, and LEGO contain other plastics. These cannot be recycled, so please dispose of them in the appropriate bins.")
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
    rec7()
}
