import SwiftUI

struct rec1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 177/255, green: 239/255, blue: 239/255, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Image("recycle1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 30)
                    Text("PET 1")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("PETE is short for Polyethylene Terephthalate, and is a kind of plastic found in everyday items, such as drinking bottles, food packaging containers, etc. These are able to be recycled, and can be turned into new items. These items can be thrown into the blue recycling bins.")
                        .font(.body)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    Text("Some common items its found in is PET water bottles and soft drink bottles")
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
    rec1()
}
