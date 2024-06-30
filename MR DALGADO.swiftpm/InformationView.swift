//
//  InformationView.swift
//  My App
//
//  Created by Saumil Anand on 30/6/24.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Information on how to identify plastics")
                    .font(.title2)
                    .padding()
                    .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .padding(.bottom, 20)
                VStack(spacing: 20) {
                    HStack {
                        Image("recycle1") // Replace with actual image names
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("PETE")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    HStack {
                        Image("recycle2") // Replace with actual image names
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("HDPE")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    HStack {
                        Image("recycle3") // Replace with actual image names
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("V")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    HStack {
                        Image("recycle4") // Replace with actual image names
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("LDPE")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    HStack {
                        Image("recycle5") // Replace with actual image names
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("PP")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    HStack {
                        Image("recycle6") // Replace with actual image names
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("PS")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    HStack {
                        Image("recycle7") // Replace with actual image names
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("OTHER")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                }
                .padding()
                Spacer()
            }
            .background(Color(red: 177/255, green: 239/255, blue: 239/255))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
