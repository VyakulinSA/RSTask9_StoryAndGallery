//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 02.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ZoomViewController: UIViewController {
    var galleryImage = UIImage()
    private let contentView = UIView()
    private let imageView = UIImageView()
    private let closeButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 3.0
        
        scrollView.delegate = self
        
        scrollView.backgroundColor = .black
        scrollView.alwaysBounceVertical = false
        scrollView.alwaysBounceHorizontal = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.flashScrollIndicators()
        
        self.view.addSubview(scrollView)
        
        //Setup contentView
        contentView.backgroundColor = .black
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)

        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor)
        ])
        
        
        imageView.image = galleryImage
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        contentView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 172),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -172),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])

            closeButton.layer.borderWidth = 1
            closeButton.layer.borderColor = UIColor.white.cgColor
            closeButton.layer.cornerRadius = 20
            closeButton.layer.masksToBounds = true
            closeButton.translatesAutoresizingMaskIntoConstraints = false
    
        self.view.addSubview(closeButton)
    
            NSLayoutConstraint.activate([
                closeButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -25),
                closeButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 45),
                closeButton.heightAnchor.constraint(equalToConstant: 40),
                closeButton.widthAnchor.constraint(equalToConstant: 40),
            ])
    
            let xmarkLabel = UILabel()
            xmarkLabel.translatesAutoresizingMaskIntoConstraints = false
            xmarkLabel.text = "X"
            xmarkLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            xmarkLabel.font = UIFont(name: "SFProDisplay-Regular", size: 18)
    
            closeButton.addSubview(xmarkLabel)
    
            NSLayoutConstraint.activate([
                xmarkLabel.centerXAnchor.constraint(equalTo: closeButton.centerXAnchor),
                xmarkLabel.centerYAnchor.constraint(equalTo: closeButton.centerYAnchor)
            ])
        
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        
        let gestureTap = UITapGestureRecognizer(target: self, action: #selector(tapToScroll))
        scrollView.isUserInteractionEnabled = true
        scrollView.addGestureRecognizer(gestureTap)

        // Do any additional setup after loading the view.
    }
    
    @objc private func tapToScroll() {
        closeButton.isHidden = !closeButton.isHidden
    }
    

//
    @objc private func closeButtonTapped(){
        self.dismiss(animated: true, completion: nil)
    }
//
}

extension ZoomViewController: UIScrollViewDelegate{

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
}
