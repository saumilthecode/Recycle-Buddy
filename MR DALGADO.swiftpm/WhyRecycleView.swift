//
//  WhyRecycleView.swift
//  MRDALGADO
//
//  Created by Saumil Anand on 4/7/24.
//

import SwiftUI

struct WhyRecycleView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    
                    // Header
                    Text("Why you should recycle")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    // Body Text
                    Text("""
                    Recycling offers numerous benefits for society and the environment. By recycling, old products are transformed into new items that we can use in our daily lives. Instead of discarding materials or burning them, we can repurpose them, which helps protect the environment.
                    """)
                    .font(.body)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                }
                .padding(.top, 200) // Add top padding to create space at the top
            }
            .navigationTitle("Why Recycle?")
            .background(Color(red: 177/255, green: 239/255, blue: 239/255))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct WhyRecycleView_Previews: PreviewProvider {
    static var previews: some View {
        WhyRecycleView()
    }
}
