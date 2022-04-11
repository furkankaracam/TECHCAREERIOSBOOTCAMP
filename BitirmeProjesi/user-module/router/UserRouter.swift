//
//  UserPageRouter.swift
//  BitirmeProjesi
//
//  Created by FURKAN KARAÇAM on 4.04.2022.
//

import Foundation
import UIKit

class UserRouter : PresenterToRouterUserProtocol {
    
    static func createUserModul(ref: UserPageVC) {
        
        let presenter = UserPresenter()
//        View
        ref.UserPresenter = presenter
        
//        Presenter
        ref.UserPresenter?.userView = ref
        ref.UserPresenter?.userInteractor = UserInteractor()
        
//        Interactor
        ref.UserPresenter?.userInteractor?.userPresenter = presenter
        
    }
    
    static func createLoginModul(ref: LoginVC) {

    }
    
    static func createSignUpModul(ref: SignUpVC) {

    }
    
    
}
