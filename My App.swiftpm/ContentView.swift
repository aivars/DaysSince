import SwiftUI

struct ContentView: View {
    
    @AppStorage("orderDate") private var orderDate = Date()
    @AppStorage("textmessage") private var textmessage = "Please configure message and date in settings"
    @State var image = ImageManager.shared.load()
    
    var body: some View {
        NavigationView{
            VStack {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.accentColor)
                    .frame(width: 300, height: 300)
                
                Text("\(Date().daysSinceDate(orderDate)) \(textmessage)")
                    .padding()
                    .font(.title3)
                
                NavigationLink("Settings") { 
                    Settings(date: $orderDate, text: $textmessage, image: $image)
                }
            }
        }
    }
}
