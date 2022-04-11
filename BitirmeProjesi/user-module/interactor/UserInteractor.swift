//
//  UserPageInteractor.swift
//  BitirmeProjesi
//
//  Created by FURKAN KARAÇAM on 4.04.2022.
//

import Foundation
import Firebase

class UserPageInteractor : PresenterToInteractorUserPageProtocol {
    
    var userPagePresenter: InteractorToPresenterUserPageProtocol?
    var refUsers = Database.database().reference().child("user")
    
    func addUser(kullanici_adi: String, mail: String, password: String) {
        let newUser = ["id":"","kullanici_adi":kullanici_adi,"mail":mail,"password":password]
        refUsers.childByAutoId().setValue(newUser)
    }
    
    func updateUser(kisi_id: String, kullanici_adi: String, mail: String, password: String) {
        
    }
    
    func fetchAllUsers() {
        
    }
    
    
}
