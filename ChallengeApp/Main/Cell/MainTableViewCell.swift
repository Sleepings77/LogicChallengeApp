//
//  MainTableViewCell.swift
//  GlobalLogicChallenge
//
//  Created by Matias on 01/07/2022.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet weak private var _title       : UILabel!
    @IBOutlet weak private var _description : UILabel!
    @IBOutlet weak private var _image       : UIImageView!

    static let identifier = "MainTableViewCell"
    
    static func getNib() -> UINib {
        return UINib(nibName: "MainTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        _image.borderConfiguration(borderWidth: 1, borderColor: UIColor.white, cornerRadius: 10)
    }
    
    func configure(object: ObjectAPI) {
        _title.text = object.title
        _description.text = object.description
        _image.getImage(from: object.image, with: UIImage(named: "noImage"))
    }
    
}
