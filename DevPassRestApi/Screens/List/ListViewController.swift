//
//  ListViewController.swift
//  DevPassRestApi
//
//  Created by Matheus F S L Gomes on 21/04/22.
//

import UIKit


class ListViewController: UIViewController {
    private lazy var listView: ListView = {
        return ListView()
    }()
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    override func loadView() {
        self.view = listView
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

