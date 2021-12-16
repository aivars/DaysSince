import SwiftUI

class ImageManager {
    
    static let shared = ImageManager()
    
    func saveImage(image: UIImage) {
        if let data = image.pngData() {
            let filename = getDocumentsDirectory().appendingPathComponent("image.png")
            try? data.write(to: filename)
        }
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    var documentsUrl: URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    func load() -> UIImage {
        let fileURL = documentsUrl.appendingPathComponent("image.png")
        do {
            let imageData = try Data(contentsOf: fileURL)
            return UIImage(data: imageData)!
        } catch {
            print("Error loading image : \(error)")
        }
        return UIImage(imageLiteralResourceName: "Order")
    }
}
