//
//  TabBarController.swift
//  DevPassRestApi
//
//  Created by Matheus F S L Gomes on 22/04/22.
//

import UIKit

class TabBarController: UITabBarController {
    private var tabBarBuilder: TabBarBuilderProtocol? = TabBarBuilder()
    init(tabBarBuilder: TabBarBuilderProtocol? = TabBarBuilder()) {
        self.tabBarBuilder = tabBarBuilder
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarBuilder?.makeTabItems {
            self.viewControllers = $0
        }
    }
}

protocol TabBarBuilderProtocol: AnyObject {
    func makeTabItems(_ completion: (([UIViewController]) -> Void))
}
class TabBarBuilder: TabBarBuilderProtocol {
    func makeTabItems(_ completion: (([UIViewController]) -> Void)) {
        let listViewController = ListViewController()
        let listNavigationController = UINavigationController(rootViewController: listViewController)
        let listTabBarItem = UITabBarItem(title: "Listagem", image: UIImage(named: "house.fill"), tag: 0)
        listNavigationController.tabBarItem = listTabBarItem
        completion([listNavigationController])
    }
}
