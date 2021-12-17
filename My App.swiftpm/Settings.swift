import SwiftUI

struct Settings: View {
    @Binding var date: Date
    @Binding var text: String
    
    @State private var isShowPhotoLibrary = false
    @Binding var image: UIImage
    
    
    
    var body: some View {
        VStack {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 300)
            
            Button(action: {
                isShowPhotoLibrary = true
            }) {
                HStack {
                    Image(systemName: "photo")
                        .font(.system(size: 20))
                    
                    Text("Select picture")
                        .font(.headline)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
            }
            
            DatePicker("Select Date", selection: $date, displayedComponents: [.date])
            HStack {
                Text("Description: ")
                TextField("Text", text: $text)
            }
        }
        .sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(selectedImage: $image)
        }
        
        
        .padding(.horizontal, 24)
        }
        
}
