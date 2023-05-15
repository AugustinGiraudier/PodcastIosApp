//
//  PodcastHeader.swift
//  IOS-Podcast
//
//  Created by etudiant on 14/05/2023.
//

import SwiftUI

struct PodcastHeader: View {
    
    public init(podcast:Podcast, parent: PodcastView?=nil){
        self.podcast = podcast
        image = UIImage(named:podcast.imageName)
        self.parent = parent
        self.lastEpisode = podcast.episodes[podcast.episodes.count-1]
    }
    
    @State private var backGroundColor: Color = .gray // Ajout d'un State pour stocker la couleur moyenne
    private let podcast : Podcast
    private let image : UIImage?
    private let parent : PodcastView?
    private let lastEpisode : Episode?
    
    var body: some View {
        
        ZStack(alignment:.top){
            
            backGroundColor // Utilisation de la couleur moyenne comme fond de la vue
                .frame(height: 520)
            
            VStack {
                
                topBar()
                    .padding(.bottom,10)
                
                Image(uiImage: image ?? UIImage())
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .shadow(radius: 20)
                    .padding(.bottom, 10)
                
                Text(podcast.title)
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                Text(podcast.author)
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
                
                HStack{
                    Text(lastEpisode!.day + " : " + lastEpisode!.summary)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.top, 20)
                        .padding(.horizontal)
                        .multilineTextAlignment(.leading)
                        .lineLimit(5)
                        .truncationMode(.tail)
                    Spacer()
                }
                    
                
                PodcastMark(mainColor:.white,podcast: podcast)
                    .padding(.top, 1)
                
                Spacer()
            }
                .onAppear {
                    if let image = image {
                        backGroundColor = averageColor(from: image)
                        parent?.backGroundColor = backGroundColor
                    }
                }
                .background(backGroundColor.edgesIgnoringSafeArea(.top))
            
        }
    }
        
        
    private func averageColor(from image: UIImage) -> Color {
        guard let cgImage = image.cgImage else { return .gray }
        
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
        let averageRed = Double(totalRed) / Double(pixelCount) / 255.0
        let averageGreen = Double(totalGreen) / Double(pixelCount) / 255.0
        let averageBlue = Double(totalBlue) / Double(pixelCount) / 255.0
        
        return Color(red: averageRed, green: averageGreen, blue: averageBlue)
    }
        
}

struct PodcastHeader_Previews: PreviewProvider {
    static var previews: some View {
        PodcastHeader(podcast: Stub.getOnePodcast())
    }
}
