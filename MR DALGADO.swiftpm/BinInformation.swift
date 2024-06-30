//
//  BinInformation.swift
//  MRDALGADO
//
//  Created by Saumil Anand on 30/6/24.
//

import SwiftUI

struct BinInformation: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Information on different recycling bins")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                    
                    HStack(alignment: .top) {
                        Image("recycling_bin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(.leading)
                        
                        Text("These are special bins designated for recyclable items, and they should be disposed into this bin.")
                            .font(.headline)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    
                    HStack(alignment: .top) {
                        Image("general_waste_bin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(.leading)
                        
                        Text("These bins are for general waste products, so throw whatever that cannot be recycled here.")
                            .font(.headline)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }
                .padding()
                .background(Color(red: 0.74, green: 0.89, blue: 0.96))
                .cornerRadius(10)
                .navigationTitle("")
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    BinInformation()
}
