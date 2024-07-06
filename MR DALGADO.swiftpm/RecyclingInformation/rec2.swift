
import SwiftUI

struct rec2: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 177/255, green: 239/255, blue: 239/255, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Image("recycle2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 30)
                    Text("HDPE")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("HDPE is short for High Density Polyethylene, and it is made from petroleum. They are strong and durable. It is used in items like rigid bottles like milk bottles or shampoo bottles, as well as in bottle caps/lids, pipes and food containers.")
                        .font(.body)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    Text("Some common items its found in is detergent and shampoo bottles, milk jugs.")
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
    rec2()
}




