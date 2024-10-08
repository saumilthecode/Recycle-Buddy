import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            VStack {
                Spacer()
                Text("Welcome!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text("to Recycle-Buddy!")
                    .font(.title)
                    .foregroundColor(.black)
                Spacer()
                VStack(spacing: 20) {
                    NavigationLink(destination:BinInformation()){
                        Text("Bin Info")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: QuizView()) {
                        Text("Quiz")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: InformationView()) {
                        Text("Information on plastics")
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

#Preview {
    ContentView()
}
