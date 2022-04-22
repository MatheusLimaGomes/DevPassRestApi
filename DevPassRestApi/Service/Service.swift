//
//  Service.swift
//  DevPassRestApi
//
//  Created by Matheus F S L Gomes on 21/04/22.
//

import Foundation
public protocol ServiceProtocol {
    func fetch(_ completion: (([String]) -> Void))
    func fetchUser(_ completion: (()-> Void))
}
struct Service: ServiceProtocol {
    func fetchUser(_ completion: (() -> Void)) {
        
    }
    func fetch(_ completion: (([String]) -> Void)) {
        completion(["item 1", "item 2", "item 3", "item 4"])
    }
}


