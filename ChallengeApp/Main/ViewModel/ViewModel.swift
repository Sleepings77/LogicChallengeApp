//
//  ViewModel.swift
//  GlobalLogicChallenge
//
//  Created by Matias on 01/07/2022.
//

import Foundation
import UIKit

final class ViewModel {
    
    private var view: MainViewController
    
    init(view: MainViewController) {
        self.view = view
    }
        
    func getResponse() {
        NetworkingManager.getResponse(completion: { (result: Result<[ObjectAPI], Error > ) in
            switch result {
            case .success(let response):
                self.view.fetchData(with: response)
                break
            case .failure(_):
                break
            }
        })
    }
    
}
