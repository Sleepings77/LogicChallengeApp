//
//  DetailViewController.swift
//  ChallengeApp
//
//  Created by viciecal on 01/07/2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet private weak var titleLabel       : UILabel!
    @IBOutlet private weak var descriptionLabel : UILabel!
    @IBOutlet private weak var cornerImageView  : UIView!
    @IBOutlet private weak var _image           : UIImageView!
    
    override var preferredStatusBarStyle : UIStatusBarStyle { return .lightContent }
    
    var detail : ObjectAPI?
    
    init(with detail: ObjectAPI) {
        self.detail = detail
        super.init(nibName: "DetailViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        setupDetails()
    }
    
    private func setupDetails() {
        titleLabel.text = detail?.title
        descriptionLabel.text = detail?.description
        _image.getImage(from: detail?.image, with: UIImage(named: "noImage"))
    }
    
    private func configureView() {
        navigationController?.navigationBar.tintColor = .white
        _image.borderConfiguration(borderWidth: 1, borderColor: UIColor.white, cornerRadius: 10)
    }

}
