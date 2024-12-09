//
//  ViewController.swift
//  Cinetopia
//
//  Created by Jao on 25/11/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        let logoImage = UIImageView(image: .logo)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
    }()
    
    private lazy var coupleImageView: UIImageView = {
        let imageView = UIImageView(image: .couple)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private lazy var buttomView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quero começar!", for: .normal)
        button.backgroundColor = .buttonBackground
        button.setTitleColor(.background, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 32
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .background
        addSubView()
        setupConstraints()
    }
    
    @objc private func buttonPressed() {
        navigationController?.pushViewController(MovieViewController(), animated: true)
    }

    private func addSubView () {
        view.addSubview(logoImageView)
        view.addSubview(coupleImageView)
        view.addSubview(welcomeLabel)
        view.addSubview(buttomView)
    }
    private func setupConstraints () {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            coupleImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            coupleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            welcomeLabel.topAnchor.constraint(equalTo: coupleImageView.bottomAnchor, constant: 32),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            buttomView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 32),
            buttomView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            buttomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            buttomView.heightAnchor.constraint(equalToConstant: 64)
            
            ])
                }
}

