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
        homeNav.tabBarItem = UIHelper.tabBarItemWithTitle("TAB.BAR.HOME".localized(), image: UIImageMake("icon_tabbar_uikit"), selectedImage: UIImageMake("icon_tabbar_uikit_selected"), tag: 0)
        
        let discovery = appDIContainer.makeDiscoverySceneDIContainer().makeDiscoveryViewController()
        discovery.hidesBottomBarWhenPushed = false
        let discoveryNav = NavigationController(rootViewController: discovery)
        discoveryNav.tabBarItem = UIHelper.tabBarItemWithTitle("TAB.BAR.DISCOVERY".localized(), image: UIImageMake("icon_tabbar_lab"), selectedImage: UIImageMake("icon_tabbar_lab_selected"), tag: 1)
        
        let study = appDIContainer.makeStudySceneDIContainer().makeStudyViewController()
        study.hidesBottomBarWhenPushed = false
        let studyNav = NavigationController(rootViewController: study)
        studyNav.tabBarItem = UIHelper.tabBarItemWithTitle("TAB.BAR.STUDY".localized(), image: UIImageMake("icon_tabbar_uikit"), selectedImage: UIImageMake("icon_tabbar_uikit_selected"), tag: 2)
        
        let mine = appDIContainer.makeMineSceneDIContainer().makeMineViewController()
        mine.hidesBottomBarWhenPushed = false
        let mineNav = NavigationController(rootViewController: mine)
        mineNav.tabBarItem = UIHelper.tabBarItemWithTitle("TAB.BAR.MINE".localized(), image: UIImageMake("icon_tabbar_lab"), selectedImage: UIImageMake("icon_tabbar_lab_selected"), tag: 3)
        
        viewControllers = [homeNav, discoveryNav, studyNav, mineNav]
    }
    

}
