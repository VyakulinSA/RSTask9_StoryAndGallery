//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ContentViewController: UIViewController {
    let supClass = SupportClass.sharedInstance()
    var contentType: ContentType?
    //global views
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    //view in contentView
    private let detailView = UIImageView()
    private let titleLabel = CustomLabel()
    private let typeLabel = CustomLabel()
    private let lineView = UILabel()
    private let textView = CustomLabel()
    //gradient
    private let gradView = UIView()
    private let gradientLayer = CAGradientLayer()
    //array for gallery images
    private var imageViewArray = [UIView]()
    //for dynamic count height for galleryImages
    private let scrollHeight: CGFloat = 0
    //story
    private var story: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //setup padding in custom lavbel
        titleLabel.settParam(top: 1, left: 0, bottom: 0, right: 0)
        typeLabel.settParam(top: 8, left: 30, bottom: 3, right: 30)
        textView.settParam(top: 30, left: 30, bottom: 30, right: 40)
        
//        contentType = FillingData.data[0]
        
        setupScrollAndContentViews()
        
        //MARK: Choose storySettings or GallerySettings
        switch contentType {
        case .story(let story):
            scrollView.contentSize = CGSize(width: self.view.frame.width, height: 2000)
            //setup all elements for storyView
            self.setupStoryMode(story: story)
            //setup scrollView.contentSize - Height
            scrollView.contentSize = CGSize(width: self.view.frame.width, height: getScrollHeightStory())

        case .gallery(let gallery):
            //setup scrollView.contentSize - Height
            scrollView.contentSize = CGSize(width: self.view.frame.width, height: getScrollHeightGallery(gallery: gallery))
            //setup all elements for galleryView
            self.setupGalleryMode(gallery: gallery)
        case .none:
            print("none")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        switch contentType {
        case .story(_):
            scrollView.contentSize = CGSize(width: self.view.frame.width, height: getScrollHeightStory())
        case .gallery(_):
            print("gallery")
        case .none:
            print("none")
        }
    }

    //MARK: Setup scrollView and contentView + setupCloseButton + setupDetailView
    private func setupScrollAndContentViews(){
        //Setup scrollView
        scrollView.backgroundColor = .black
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        
        //Setup contentView
        contentView.backgroundColor = .black
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        ])
        
        //PreSett elements on contentView for gallery and story
        setupCloseButton()
        setupDetailView()
    }
    
    
    //MARK: setupCloseButton
    private func setupCloseButton(){
        let closeButton = UIButton()
        
        closeButton.layer.borderWidth = 1
        closeButton.layer.borderColor = UIColor.white.cgColor
        closeButton.layer.cornerRadius = 20
        closeButton.layer.masksToBounds = true
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            closeButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -25),
            closeButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
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
    }
    
    @objc private func closeButtonTapped(){
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setupDetailView(){
        let maskView = UIView()
        maskView.layer.cornerRadius = 8
        maskView.layer.masksToBounds = true
        maskView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(maskView)
        
        NSLayoutConstraint.activate([
            maskView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            maskView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 70),
            maskView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            maskView.heightAnchor.constraint(equalToConstant: 519)
        ])
        
        detailView.layer.borderWidth = 1
        detailView.layer.borderColor = UIColor.white.cgColor
        detailView.layer.cornerRadius = 8
        detailView.layer.masksToBounds = true
        detailView.translatesAutoresizingMaskIntoConstraints = false
        detailView.contentMode = .scaleAspectFill
        
        maskView.addSubview(detailView)
        
        NSLayoutConstraint.activate([
            detailView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            detailView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 70),
            detailView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            detailView.heightAnchor.constraint(equalToConstant: 500)
        ])
        
        gradView.translatesAutoresizingMaskIntoConstraints = false
        detailView.addSubview(gradView)
        
        NSLayoutConstraint.activate([
            gradView.leadingAnchor.constraint(equalTo: detailView.leadingAnchor),
            gradView.topAnchor.constraint(equalTo: detailView.topAnchor),
            gradView.bottomAnchor.constraint(equalTo: detailView.bottomAnchor),
            gradView.trailingAnchor.constraint(equalTo: detailView.trailingAnchor),
        ])
        
        self.setupGradient()
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Man's best friend"
        titleLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        titleLabel.font = UIFont(name: "Rockwell-Regular", size: 48)
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        
        detailView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -30),
            titleLabel.bottomAnchor.constraint(equalTo: detailView.bottomAnchor, constant: -55),
        ])
    
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        typeLabel.layer.borderWidth = 1
        typeLabel.layer.borderColor = UIColor.white.cgColor
        typeLabel.backgroundColor = .black
        typeLabel.layer.cornerRadius = 8
        typeLabel.layer.masksToBounds = true
        typeLabel.text = "Type"
        typeLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        typeLabel.font = UIFont(name: "Rockwell-Regular", size: 24)
        typeLabel.textAlignment = .center
        
        maskView.addSubview(typeLabel)
        
        NSLayoutConstraint.activate([
            typeLabel.leadingAnchor.constraint(equalTo: maskView.leadingAnchor, constant: 111),
            typeLabel.trailingAnchor.constraint(equalTo: maskView.trailingAnchor, constant: -111),
            typeLabel.bottomAnchor.constraint(equalTo: maskView.bottomAnchor, constant: 0),
            typeLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = .white
        lineView.layer.borderWidth = 1
        lineView.layer.borderColor = UIColor.white.cgColor
        
        contentView.addSubview(lineView)
        
        NSLayoutConstraint.activate([
            lineView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 100),
            lineView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100),
            lineView.topAnchor.constraint(equalTo: typeLabel.bottomAnchor, constant: 39),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])

    }
    
    private func setupGradient(){
        gradView.backgroundColor = nil //clear background
        gradView.layoutIfNeeded()
        
        gradientLayer.frame = gradView.bounds //setup frame
        gradientLayer.cornerRadius = 10
        gradientLayer.colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0 ).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 1 ).cgColor]
        gradientLayer.locations = [0.51, 1]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.8, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: 1, c: -1, d: 0, tx: 1, ty: 0))
        gradientLayer.bounds = gradView.bounds.insetBy(dx: -0.5*gradView.bounds.size.width, dy: -0.5*gradView.bounds.size.height)

        gradView.layer.insertSublayer(gradientLayer, at: 0)
    }

}

//MARK: Create Gallery
extension ContentViewController{
    
    //MARK: getScrollHeightGallery
    private func getScrollHeightGallery(gallery: Gallery)->CGFloat{
        let closeButton: CGFloat = 40
        let closeToDetail: CGFloat = 30
        let detailHeight: CGFloat  = 519
        let detailToLine: CGFloat  = 40
        let lineToImage: CGFloat  = 40
        let imagesHeigth: CGFloat  = CGFloat(531 * gallery.images.count)
        return (closeButton + closeToDetail + detailHeight + detailToLine + lineToImage + imagesHeigth)
    }
    
    //MARK: setupGalleryMode
    func setupGalleryMode(gallery: Gallery){
        detailView.image = gallery.coverImage
        typeLabel.text = gallery.type
        titleLabel.text = gallery.title

        for image in gallery.images {
            let lastView = imageViewArray.last ?? nil
            imageViewArray.append(setupDinamicImageView(lastView: lastView, image: image))
        }
    }
    
    //MARK: setupDinamicImageView
    private func setupDinamicImageView(lastView: UIView?, image:UIImage) -> UIView{
        let maskView = UIView()
        
        maskView.layer.borderWidth = 1
        maskView.layer.borderColor = UIColor.white.cgColor
        maskView.layer.cornerRadius = 8
        maskView.layer.masksToBounds = true
        maskView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(maskView)
        
        if let lastView = lastView{
            NSLayoutConstraint.activate([
                maskView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                maskView.topAnchor.constraint(equalTo: lastView.bottomAnchor, constant: 20),
                maskView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                maskView.heightAnchor.constraint(equalToConstant: 511)
            ])
        } else {
            NSLayoutConstraint.activate([
                maskView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                maskView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 40),
                maskView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                maskView.heightAnchor.constraint(equalToConstant: 511)
            ])
        }
        
        let imageView = UIImageView()
        
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        maskView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: maskView.leadingAnchor, constant: 10),
            imageView.topAnchor.constraint(equalTo: maskView.topAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: maskView.trailingAnchor, constant: -10),
            imageView.bottomAnchor.constraint(equalTo: maskView.bottomAnchor, constant: -10)
        ])
        
        imageView.image = image
        return maskView
    }
}


//MARK: Create Story
extension ContentViewController: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //MARK: getScrollHeightStory
    private func getScrollHeightStory()->CGFloat{
        let closeButton: CGFloat = 40
        let closeToDetail: CGFloat = 30
        let detailHeight: CGFloat  = 519
        let detailToLine: CGFloat  = 40
        let lineToCollection: CGFloat  = 40
        let collectionHeight: CGFloat = 140
        return (closeButton + closeToDetail + detailHeight + detailToLine + lineToCollection + collectionHeight + textView.frame.height + 20)
    }
    
    //MARK: setupGalleryMode
    private func setupStoryMode(story: Story){
        self.story = story
        detailView.image = story.coverImage
        typeLabel.text = story.type
        titleLabel.text = story.title
        textView.text = story.text
        
        setupCollectionAndTextView()
        
    }
    
    private func setupCollectionAndTextView() {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collView.backgroundColor = .black
        collView.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: "collCell")
        collView.translatesAutoresizingMaskIntoConstraints = false
        
        collView.delegate = self
        collView.dataSource = self
        
        contentView.addSubview(collView)
        
        NSLayoutConstraint.activate([
            collView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            collView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 40),
            collView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            collView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.layer.borderWidth  = 1
        textView.layer.borderColor = UIColor.white.cgColor
        textView.layer.cornerRadius = 8
        textView.layer.masksToBounds = true
        textView.numberOfLines = 0
        textView.lineBreakMode = .byWordWrapping
        textView.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textView.font = UIFont(name: "Rockwell-Regular", size: 24)

        contentView.addSubview(textView)
        
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            textView.topAnchor.constraint(equalTo: collView.bottomAnchor, constant: 40),
            textView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
        
    }
    
    
}

//MARK: setup CollectionView in Story
extension ContentViewController{
    //CollectionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (story?.paths.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collCell", for: indexPath) as! StoryCollectionViewCell
        let path = story?.paths[indexPath.item]
        let color = supClass.staticColorsArray.filter({ item in
            if item.check == true{
                return true
            }
            return false
        })[0]
        
        cell.settCell(storyPath: path!, storyColor: UIColor(named: color.title)!.cgColor)

        return cell
    }
    
    //ollectionView Delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 73, height: 60.43)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 12, left: 50, bottom: 13, right: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let customCell = cell as! StoryCollectionViewCell
        customCell.setNeedsDisplay()
        customCell.anim()
    }
    
}


////MARK: SwiftUI
////Импортируем SwiftUI библиотеку
//import SwiftUI
////создаем структуру
//struct PeopleVСProvider: PreviewProvider {
//    static var previews: some View {
//        ContainerView().edgesIgnoringSafeArea(.all)
//    }
//
//    struct ContainerView: UIViewControllerRepresentable {
//        //создадим объект класса, который хотим показывать в Canvas
//        let tabBarVC = ContentViewController()
//        //меняем input параметры в соответствии с образцом
//        func makeUIViewController(context: UIViewControllerRepresentableContext<PeopleVСProvider.ContainerView>) -> ContentViewController {
//            return tabBarVC
//        }
//        //не пишем никакого кода
//        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//        }
//    }
//}
