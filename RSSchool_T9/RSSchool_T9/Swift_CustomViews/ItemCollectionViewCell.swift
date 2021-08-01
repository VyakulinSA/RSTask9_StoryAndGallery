//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    private let imageView = UIImageView()
    private let title = UILabel()
    private let type = UILabel()
    private let gradView = UIView()
    
    private let gradientLayer = CAGradientLayer()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 18
        self.layer.masksToBounds = true
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        self.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
        ])
        
        gradView.translatesAutoresizingMaskIntoConstraints = false
        imageView.addSubview(gradView)
        
        NSLayoutConstraint.activate([
            gradView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            gradView.topAnchor.constraint(equalTo: imageView.topAnchor),
            gradView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
            gradView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
        ])
        
        self.setupGradient()
        
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        title.font = UIFont(name: "Rockwell-Regular", size: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        
        gradView.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10),
            title.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -30),
            title.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -15),
            title.heightAnchor.constraint(equalToConstant: 19)
        ])
        
        type.textColor = UIColor(red: 0.712, green: 0.712, blue: 0.712, alpha: 1)
        type.font = UIFont(name: "Rockwell-Regular", size: 12)
        type.translatesAutoresizingMaskIntoConstraints = false
        
        gradView.addSubview(type)
        
        NSLayoutConstraint.activate([
            type.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10),
            type.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -13),
            type.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -15),
            type.heightAnchor.constraint(equalToConstant: 14)
        ])
        
    }
    
    func set(coverImage: UIImage, title: String, type: String) {
        imageView.image = coverImage
        self.title.text = title
        self.type.text = type
    }
    
    private func setupGradient(){
        gradView.backgroundColor = nil //clear background
        gradView.layoutIfNeeded()
        
        gradientLayer.frame = gradView.bounds //setup frame
        gradientLayer.cornerRadius = 10
        gradientLayer.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0 ).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 1 ).cgColor]
        gradientLayer.locations = [0.74, 1]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.8, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: 1, c: -1, d: 0, tx: 1, ty: 0))
        gradientLayer.bounds = gradView.bounds.insetBy(dx: -0.5*gradView.bounds.size.width, dy: -0.5*gradView.bounds.size.height)

        gradView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
