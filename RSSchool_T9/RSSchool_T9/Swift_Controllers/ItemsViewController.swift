//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemsViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        
        let collView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collView.backgroundColor = .white
        collView.register(ItemCollectionViewCell.self, forCellWithReuseIdentifier: "ItemCell")
        
        collView.delegate = self
        collView.dataSource = self
        
        self.view.addSubview(collView)
    }

}

extension ItemsViewController{
    //MARK: CollectionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FillingData.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        let item = FillingData.data[indexPath.item]
        switch item {
        case .story(let story):
            cell.set(coverImage: story.coverImage, title: story.title, type: story.type)
        case .gallery(let gallery):
            cell.set(coverImage: gallery.coverImage, title: gallery.title, type: gallery.type)
        }
        return cell
    }
    
    //MARK: CollectionView Delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 179, height: 220)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 40, left: 20, bottom: 50, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let presentVC = ContentViewController()
        let item = FillingData.data[indexPath.item]
        presentVC.contentType = item
        presentVC.modalPresentationStyle = .fullScreen
        present(presentVC, animated: true, completion: nil)
        
    }
}
