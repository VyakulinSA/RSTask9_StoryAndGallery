//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class MainTabBarController: UITabBarController {
    
    let supClass = SupportClass.sharedInstance()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preSettingsTabBar()
        
    }
    
    private func preSettingsTabBar(){
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: 100, height: 100)
        flowLayout.scrollDirection = .vertical
        
        let itemsVC = ItemsViewController()
        let settingsVC = SettingsNavigationController()

        let itemImage = UIImage(systemName: "rectangle.grid.2x2")!
        let settingImage = UIImage(systemName: "gear")!
        

        itemsVC.tabBarItem.title = "Items"
        itemsVC.tabBarItem.image = itemImage
        settingsVC.tabBarItem.title = "Settings"
        settingsVC.tabBarItem.image = settingImage
        
        self.viewControllers = [itemsVC, settingsVC]
        self.selectedIndex = 0
        
        self.tabBar.tintColor = .red
    }

}

