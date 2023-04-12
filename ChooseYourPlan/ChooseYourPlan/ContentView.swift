import SwiftUI

struct BoxView: View {
    let title: String
    let price: String
    let description: String
    let overlayText: String
    let backgroundColor: Color
    let overlayColor: Color
    let titleColor: Color
    let priceColor: Color
    let descriptionColor: Color
    let logoColor: Color
    let showOverlay: Bool
    let showLogoImage: Bool
    let logoName: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(backgroundColor)
                .cornerRadius(10)
                .frame(height: 180)
            VStack {
                if showLogoImage {
                    Image(systemName: logoName)
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(logoColor)
                }
                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(titleColor)
                Text(price)
                    .font(.system(size: 40, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(priceColor)
                Text(description)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(descriptionColor)
            }
            if showOverlay {
                Text(overlayText)
                    .font(.system(size: 15, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .background(overlayColor)
                    .offset(y: 90)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Choose\nYour Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.heavy)
                Spacer()
            }
            
            HStack {
                BoxView(
                    title: "Basic",
                    price: "$9",
                    description: "per month",
                    overlayText: "",
                    backgroundColor: .purple,
                    overlayColor: Color(red: 1.0, green: 0.6, blue: 0.0),
                    titleColor: .white,
                    priceColor: .white,
                    descriptionColor: .white,
                    logoColor: .white,
                    showOverlay: false,
                    showLogoImage: false,
                    logoName: ""
                )
                .frame(maxWidth: .infinity)
                .padding(.trailing, 10)
                
                BoxView(
                    title: "Pro",
                    price: "$19",
                    description: "per month",
                    overlayText: " Best for designer ",
                    backgroundColor: Color(red: 0.9, green: 0.9, blue: 0.9),
                    overlayColor: Color(red: 1.0, green: 0.6, blue: 0.0),
                    titleColor: .black,
                    priceColor: .black,
                    descriptionColor: Color(red: 0.6, green: 0.6, blue: 0.6),
                    logoColor: .white,
                    showOverlay: true,
                    showLogoImage: false,
                    logoName: ""
                )
                .frame(maxWidth: .infinity)
            }
            .padding(.bottom, 10)
            
            BoxView(
                title: "Team",
                price: "$299",
                description: "per month",
                overlayText: " Perfect for teams with 20 members ",
                backgroundColor: Color(red: 0.2, green: 0.2, blue: 0.2),
                overlayColor: Color(red: 1.0, green: 0.6, blue: 0.0),
                titleColor: .white,
                priceColor: .white,
                descriptionColor: .white,
                logoColor: .white,
                showOverlay: true,
                showLogoImage: true,
                logoName: "wand.and.rays"
            )
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
