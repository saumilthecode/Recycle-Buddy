import SwiftUI

struct InformationView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Spacer()
                ScrollView {
                    Text("Information on how to identify plastics")
                        .font(.title2)
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .padding(.bottom, 20)

                    LazyVStack(spacing: 20) {
                        ForEach(1...7, id: \.self) { index in
                            NavigationLink(destination: destinationView(for: index)) {
                                CardView(imageName: "recycle\(index)", text: plasticType(for: index))
                                    .visualEffect { content, geometryProxy in
                                        content
                                            .hueRotation(Angle(degrees: geometryProxy.frame(in: .global).origin.y / 10))
                                            .brightness(brightness(geometryProxy))
                                            .scaleEffect(scale(geometryProxy), anchor: .top)
                                            .blur(radius: 2 * progress(geometryProxy))
                                            .offset(y: minY(geometryProxy))
                                            .offset(y: excessTop(geometryProxy))
                                    }
                                    .frame(width: 300, height: 200)
                                    .padding(.horizontal)
                            }
                        }
                    }
                    .padding()
                }
            }
            .background(Color(red: 200/255, green: 255/255, blue: 200/255))
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    func destinationView(for index: Int) -> some View {
        switch index {
        case 1: return AnyView(rec1())
        case 2: return AnyView(rec2())
        case 3: return AnyView(rec3())
        case 4: return AnyView(rec4())
        case 5: return AnyView(rec5())
        case 6: return AnyView(rec6())
        case 7: return AnyView(rec7())
        default: return AnyView(Text("Unknown"))
        }
    }
    
    func plasticType(for index: Int) -> String {
        switch index {
        case 1: return "PETE"
        case 2: return "HDPE"
        case 3: return "V"
        case 4: return "LDPE"
        case 5: return "PP"
        case 6: return "PS"
        case 7: return "OTHER"
        default: return "Unknown"
        }
    }
    
    func minY(_ proxy: GeometryProxy) -> CGFloat {
        let minY = proxy.frame(in: .scrollView(axis: .vertical)).minY
        return minY < 0 ? -minY : 0
    }

    func scale(_ proxy: GeometryProxy, scale: CGFloat = 0.1) -> CGFloat {
        let val = 1.0 - (progress(proxy) * scale)
        return val
    }

    func excessTop(_ proxy: GeometryProxy, offset: CGFloat = 12) -> CGFloat {
        let p = progress(proxy)
        return -p * offset
    }

    func brightness(_ proxy: GeometryProxy) -> CGFloat {
        let progress = progress(proxy)
        let variation = 0.2
        let threshold = -0.2
        let value = -progress * variation
        return value < threshold ? threshold : value
    }

    func progress(_ proxy: GeometryProxy) -> CGFloat {
        if (minY(proxy) == 0) {
            return 0
        }
        let maxY = proxy.frame(in: .scrollView(axis: .vertical)).maxY
        let height = 200.0
        let progress = 1.0 - ((maxY / height))
        return progress
    }
}

struct CardView: View {
    var imageName: String
    var text: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(text)
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(red: 120/255, green: 200/255, blue: 120/255))
                .foregroundColor(.black)
                .cornerRadius(10)
        }
        .frame(width: 300, height: 200)
        .background(RoundedRectangle(cornerRadius: 15).fill(Color(red: 100/255, green: 180/255, blue: 100/255)))
        .shadow(radius: 5)
    }
}

#Preview {
    InformationView()
}
