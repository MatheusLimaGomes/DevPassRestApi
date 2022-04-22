//
//  EmptyView.swift
//  DevPassRestApi
//
//  Created by Matheus F S L Gomes on 21/04/22.
//

import UIKit

final class EmptyView: ViewCodeComponent {
    private lazy var emptyMessageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Não ha nada aqui."
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 14.0)
        return label
    }()
    override init() {
        super.init()
        self.configureSubViews()
        self.configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureSubViews() {
        self.backgroundColor = .white
        self.addSubview(emptyMessageLabel)
    }
    func configureConstraints() {
        self.emptyMessageLabel.centerXAnchor
            .constraint(equalTo: self.centerXAnchor).isActive = true
        self.emptyMessageLabel.centerYAnchor
            .constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
