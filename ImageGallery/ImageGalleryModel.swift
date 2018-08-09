//
//  ImageGalleryModel.swift
//  ImageGallery
//
//  Created by Evgeniy Ziangirov on 31/07/2018.
//  Copyright © 2018 Evgeniy Ziangirov. All rights reserved.
//

import UIKit

struct ImageGallery {
    struct Image {
        var imagePath: URL?
        var aspectRatio: Double
        
        init(imagePath: URL?, aspectRatio: Double) {
            self.imagePath = imagePath
            self.aspectRatio = aspectRatio
        }
    }
    
    let identifier: String = UUID().uuidString
    
    var images = [Image]()
    var title = String()
    
}

extension ImageGallery: Equatable {
    static func == (lhs: ImageGallery, rhs: ImageGallery) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}

extension ImageGallery: Hashable {
    var hashValue: Int { return identifier.hashValue }
}

extension ImageGallery.Image: Equatable {
    static func ==(lhs: ImageGallery.Image, rhs: ImageGallery.Image) -> Bool {
        return lhs.imagePath == rhs.imagePath
    }
}

extension ImageGallery.Image: Hashable {
    var hashValue: Int { return imagePath?.hashValue ?? 0 }
}
