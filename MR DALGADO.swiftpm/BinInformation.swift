import SwiftUI

struct BinInformation: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Information on different recycling bins")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)

                    VStack(spacing: 20) {
                        HStack {
                            Image("recycle_bin") // replace with the name of your image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350, height: 350)
                            Text("These are special bins designated for recyclable items, and they should be disposed into this bin.")
                                .padding()
                                .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                                .cornerRadius(10)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        HStack {
                            Image("general_waste_bin") // replace with the name of your image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Text("These bins are for general waste products, so throw whatever that cannot be recycled here.")
                                .padding()
                                .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                                .cornerRadius(10)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                    }
                    .padding()
                    .background(Color(red: 177/255, green: 239/255, blue: 239/255))
                    .cornerRadius(10)
                }
                .padding()
            }
            .background(Color(red: 177/255, green: 239/255, blue: 239/255))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct BinInformation_Previews: PreviewProvider {
    static var previews: some View {
        BinInformation()
    }
}
