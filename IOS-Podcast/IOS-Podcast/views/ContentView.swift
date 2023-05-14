//
//  ContentView.swift
//  IOS-Podcast
//
//  Created by etudiant on 10/05/2023.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    
    @State private var averageColor: Color = .white // Ajout d'un State pour stocker la couleur moyenne
    private let image = UIImage(named:"podcast1")
        
        var body: some View {
            VStack{
                ZStack{
                    averageColor // Utilisation de la couleur moyenne comme fond de la vue
                        .ignoresSafeArea()
                    
                    VStack {
                        Image(uiImage: image ?? UIImage())
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(10)
                            .shadow(radius: 20)
                            .padding(.bottom, 10)
                        
                        Text("L'Hippocampe")
                            .bold()
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        
                        Text("Fabien Olicard")
                            .foregroundColor(.white)
                        
                        Button(action: {
                            // Action à effectuer lors du clic sur le bouton
                        }) {
                            HStack {
                                Image(systemName: "play.fill")
                                Text("Derniers episodes")
                                    .bold()
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal,50)
                            .padding(.vertical,17)
                            .background(.white)
                            .cornerRadius(12)
                            .font(.system(size: 17))
                        }
                        .shadow(radius: 20)
                        
                        Spacer()
                    }
                    .padding()
                }
            }
            .onAppear {
                if let image = UIImage(named: "podcast1") {
                    averageColor = averageColor(from: image)
                }
            }
        }
        
        private func averageColor(from image: UIImage) -> Color {
            guard let cgImage = image.cgImage else { return .white }
            
            let width = cgImage.width
            let height = cgImage.height
            let colorSpace = CGColorSpaceCreateDeviceRGB()
            let bytesPerPixel = 4
            let bytesPerRow = width * bytesPerPixel
            let bitsPerComponent = 8
            let totalBytes = bytesPerRow * height
            
            var bitmapData = [UInt8](repeating: 0, count: totalBytes)
            let context = CGContext(data: &bitmapData,
                                    width: width,
                                    height: height,
                                    bitsPerComponent: bitsPerComponent,
                                    bytesPerRow: bytesPerRow,
                                    space: colorSpace,
                                    bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
            
            context?.draw(cgImage, in: CGRect(x: 0, y: 0, width: width, height: height))
            
            var totalRed: UInt32 = 0
            var totalGreen: UInt32 = 0
            var totalBlue: UInt32 = 0
            
            for row in 0..<height {
                let rowOffset = row * bytesPerRow
                for column in 0..<width {
                    let offset = rowOffset + column * bytesPerPixel
                    totalRed += UInt32(bitmapData[offset])
                    totalGreen += UInt32(bitmapData[offset + 1])
                    totalBlue += UInt32(bitmapData[offset + 2])
                }
            }
            
            let pixelCount = width * height
            let averageRed = Double(totalRed) / Double(pixelCount)
            let averageGreen = Double(totalGreen) / Double(pixelCount)
            let averageBlue = Double(totalBlue) / Double(pixelCount)
            
            return Color(red: averageRed / 255.0, green: averageGreen / 255.0, blue: averageBlue / 255.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
