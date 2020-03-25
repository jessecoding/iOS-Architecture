//
//  TabBarController.swift
//  App
//
//  Created by jesse.xu on 2020/3/20.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import QMUIKit

class TabBarController: QMUITabBarViewController {

    private var appDIContainer: AppDIContainer
    
    init(_ appDIContainer: AppDIContainer) {
        self.appDIContainer = appDIContainer
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didInitialize() {
        let home = appDIContainer.makeHomeSceneDIContainer().makeHomeViewController()
        home.hidesBottomBarWhenPushed = false
        let homeNav = NavigationController(rootViewController: home)
        homeNav.tabBarItem = UIHelper.tabBarItemWithTitle("Home", image: UIImageMake("icon_tabbar_uikit"), selectedImage: UIImageMake("icon_tabbar_uikit_selected"), tag: 0)
        
        let mine = MineViewController()
        mine.hidesBottomBarWhenPushed = false
        let mineNav = NavigationController(rootViewController: mine)
        mineNav.tabBarItem = UIHelper.tabBarItemWithTitle("Mine", image: UIImageMake("icon_tabbar_lab"), selectedImage: UIImageMake("icon_tabbar_lab_selected"), tag: 1)
        
        viewControllers = [homeNav, mineNav]
    }
    

}
