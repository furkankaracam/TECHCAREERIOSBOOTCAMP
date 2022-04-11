//
//  UserPageProtocols.swift
//  BitirmeProjesi
//
//  Created by FURKAN KARAÇAM on 4.04.2022.
//

import Foundation
import UIKit

protocol ViewToPresenterUserProtocol {
    
    var userInteractor:PresenterToInteractorUserProtocol? {get set}
    var userView:PresenterToViewUserProtocol? {get set}
    
    func fetchUsers()
    func addUsers(kullanici_adi:String,mail:String,password:String)
    func updateUsers(kisi_id:String,kullanici_adi:String,mail:String,password:String)
}

protocol PresenterToInteractorUserProtocol {
    
    var userPresenter: InteractorToPresenterUserProtocol? {get set}
    
    func fetchAllUsers()
    func addUser(kullanici_adi:String,mail:String,password:String)
    func updateUser(kisi_id:String,kullanici_adi:String,mail:String,password:String)
}

protocol InteractorToPresenterUserProtocol {
    func sendDataToPresenter(userList:Array<Users>)
}

protocol PresenterToViewUserProtocol {
    func sendDataToView(userList:Array<Users>)
}

protocol PresenterToRouterUserProtocol {
    static func createUserModul(ref:UserPageVC)
    static func createLoginModul(ref:LoginVC)
    static func createSignUpModul(ref:SignUpVC)
}
