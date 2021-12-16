import SwiftUI

struct ContentView: View {
    
    var orderDate: Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        let someDateTime = formatter.date(from: "2021/10/20 10:31")
        return someDateTime!
    }
    
    var body: some View {
        VStack {
            Image("Order", bundle: nil)
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
                .frame(width: 300, height: 300)
            
            Text("\(Date().daysSinceDate(orderDate)) days since I ordered M1 Pro")
                .padding()
                .font(.title3)
        }
    }
}
