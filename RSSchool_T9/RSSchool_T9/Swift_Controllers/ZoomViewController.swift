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
    var scrollView = UIScrollView()
    var portrait = true

    override func viewDidLoad() {
        super.viewDidLoad()
        let safeGuide = self.view.safeAreaLayoutGuide
        NotificationCenter.default.addObserver(self, selector: #selector(deviceRotated), name: UIDevice.orientationDidChangeNotification, object: nil)
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 3.0
        
        scrollView.delegate = self
        
        scrollView.backgroundColor = .black
        scrollView.alwaysBounceVertical = false
        scrollView.alwaysBounceHorizontal = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.flashScrollIndicators()
        scrollView.contentInsetAdjustmentBehavior = .scrollableAxes
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: safeGuide.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: safeGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: safeGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeGuide.bottomAnchor)
        ])
        
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
        
        if portrait{
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 172),
                imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -172),
                imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            ])
        } else {
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
                imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
                imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 172),
                imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -172)
            ])
        }


            closeButton.layer.borderWidth = 1
            closeButton.layer.borderColor = UIColor.white.cgColor
            closeButton.layer.cornerRadius = 20
            closeButton.layer.masksToBounds = true
            closeButton.translatesAutoresizingMaskIntoConstraints = false
    
        self.view.addSubview(closeButton)
    
        if self.portrait{
            NSLayoutConstraint.activate([
                closeButton.trailingAnchor.constraint(equalTo: safeGuide.trailingAnchor,constant: -25),
                closeButton.topAnchor.constraint(equalTo: safeGuide.topAnchor, constant: 0),
                closeButton.heightAnchor.constraint(equalToConstant: 40),
                closeButton.widthAnchor.constraint(equalToConstant: 40),
            ])
        }else{
            NSLayoutConstraint.activate([
                closeButton.trailingAnchor.constraint(equalTo: safeGuide.trailingAnchor,constant: -40),
                closeButton.topAnchor.constraint(equalTo: safeGuide.topAnchor, constant: 10),
                closeButton.heightAnchor.constraint(equalToConstant: 40),
                closeButton.widthAnchor.constraint(equalToConstant: 40),
            ])
        }
    
        let xmarkLabel = UIImageView()
        xmarkLabel.translatesAutoresizingMaskIntoConstraints = false
        xmarkLabel.image = UIImage(systemName: "xmark")
        xmarkLabel.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    
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
    
    @objc func deviceRotated() {
        if UIDevice.current.orientation.isPortrait{
            self.portrait = true
            scrollView.zoomScale = 1
            self.view.subviews.forEach({ $0.removeFromSuperview() })
            viewDidLoad()
        } else {
            self.portrait = false
            scrollView.zoomScale = 1
            self.view.subviews.forEach({ $0.removeFromSuperview() })
            viewDidLoad()
        }
    }
//
}

extension ZoomViewController: UIScrollViewDelegate{

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
}
