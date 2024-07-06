
import SwiftUI

struct rec5: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 177/255, green: 239/255, blue: 239/255, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Image("recycle5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 30)
                    Text("PP")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("PP is short for Polypropylene, which is lightweight and has good heat resistance. It is commonly used in items such as takeaway food packaging and food containers, tofu tubs, plastic bags, etc. This can be recycled as well, so dispose of them in the blue bins.")
                        .font(.body)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    Text("Some common items its found in is sealed containers, masks, medical equipment, kitchenware, automobile interior, toothbrushes, etc.")
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
    rec5()
}
