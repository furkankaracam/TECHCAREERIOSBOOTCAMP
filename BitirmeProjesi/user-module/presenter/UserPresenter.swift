//
//  UserPagePresenter.swift
//  BitirmeProjesi
//
//  Created by FURKAN KARAÇAM on 4.04.2022.
//

import Foundation

class UserPagePresenter : ViewToPresenterUserPageProtocol {
    
    var userPageInteractor: PresenterToInteractorUserPageProtocol?
    var userPageView: PresenterToViewUserPageProtocol?
    
    func addUsers(kullanici_adi: String, mail: String, password: String) {
        userPageInteractor?.addUser(kullanici_adi: kullanici_adi, mail: mail, password: password)
    }
    
    func updateUsers(kisi_id: String, kullanici_adi: String, mail: String, password: String) {
        
    }
    
    func fetchUsers() {
        
    }
    
    
}
