//
//  SceneDelegate.swift
//  DevPassRestApi
//
//  Created by Matheus F S L Gomes on 21/04/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowsScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: TabBarController())
        self.window?.windowScene = windowsScene
        self.window?.makeKeyAndVisible()
    }
}

