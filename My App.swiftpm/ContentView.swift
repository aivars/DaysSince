import SwiftUI

struct ContentView: View {
    
    @AppStorage("orderDate") private var orderDate = Date()
    @AppStorage("textmessage") private var textmessage = "Days since selected date"
    @State var image = ImageManager.shared.load()
    
    var body: some View {
        NavigationView{
            VStack {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.accentColor)
                    
                Text("\(Date().daysSinceDate(orderDate))")
                    .padding()
                    .font(.system(size: 60))
                
                Text(textmessage)
                    .padding()
                    .font(.headline)
                    .multilineTextAlignment(.center)
                
                NavigationLink("Change Data") { 
                    Settings(date: $orderDate, text: $textmessage, image: $image)
                }
            }
        }
    }
}
