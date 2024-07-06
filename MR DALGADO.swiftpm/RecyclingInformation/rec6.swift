
import SwiftUI

struct rec6: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 177/255, green: 239/255, blue: 239/255, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Image("recycle6")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 30)
                    Text("PS")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("PS is short for polystyrene, which is lightweight and brittle. This is commonly used in items such as Disposable cutlery, cups, plates, takeaway containers, and other items. This can also be known as styrofoam. Unfortunately, this is not recylable, so you will have to dispose of it in the green bins.")
                        .font(.body)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    Text("Some common items its found in is disposable cups, measuring cups, dairy product bottles, takeout soup containers, pill packs, etc.")
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
    rec6()
}
