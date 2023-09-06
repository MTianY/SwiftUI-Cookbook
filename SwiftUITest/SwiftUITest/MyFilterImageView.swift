//
//  MyFilterImageView.swift
//  SwiftUITest
//
//  Created by TY on 9/5/23.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct MyFilterImageView: View {
    
    let image: Image
    
    init() {
        let uiImage = UIImage(named: "original") ?? UIImage()
        let filteredUIImage = MyFilterImageView.applySepiaFilter(to: uiImage)
        image = Image(uiImage: filteredUIImage)
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
    }
    
    static func applySepiaFilter(to inputImage: UIImage) -> UIImage {
        guard let ciImage = CIImage(image: inputImage) else {
            return inputImage
        }
        
        let filter = CIFilter.sepiaTone()
        filter.inputImage = ciImage
        filter.intensity = 1.0
        
        let context = CIContext()
        
        guard let outputCIImage = filter.outputImage,
              let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else {
            return inputImage
        }
        
        let outputUIImage = UIImage(cgImage: cgImage)
        
        return outputUIImage
        
    }
}

struct MyFilterImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyFilterImageView()
    }
}
