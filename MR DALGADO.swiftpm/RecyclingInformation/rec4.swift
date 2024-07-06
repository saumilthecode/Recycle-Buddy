

import SwiftUI

struct rec4: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 177/255, green: 239/255, blue: 239/255, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Image("recycle4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 30)
                    Text("LDPE")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("LDPE is short for Low Density Polyethylene, which is known for being clear, flexible, and stretchy. Due to this, it is commonly used in items like grocery bags, bread bags, bottle caps, food wrapping, etc. This is recycable, hence, you should throw these in the blue recycling bins.")
                        .font(.body)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    Text("Some common items its found in is Bread bags, cell phone, screen protectors, food container lids")
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
    rec4()
}
