//
//  KingFisherGetImage.swift
//  GlobalLogicChallenge
//
//  Created by Matias on 01/07/2022.
//

import Foundation
import Kingfisher

extension UIImageView {
    func getImage(from imageURL: String?, with placeholder: UIImage? = nil) {
        guard let imageURL = imageURL else {
            image = placeholder
            return
        }

        kf.indicatorType = .activity

        let imageURL_ = URL(string: imageURL)
        kf.setImage(with: imageURL_, placeholder: placeholder)
    }
    
    func cancelDownloadImage() {
        kf.cancelDownloadTask()
    }
}
