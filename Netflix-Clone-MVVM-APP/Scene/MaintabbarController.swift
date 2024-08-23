//
//  MaintabbarController.swift
//  Netflix-Clone-MVVM-APP
//
//  Created by Musa Adıtepe on 23.08.2024.
//

import UIKit

class MainTabbarController: UITabBarController {
    var viewModel: MovieListViewModelProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        createTabbar()

        
    }
    
    func createTabbar() {
        let vcFirst = UINavigationController(rootViewController: MovieListBuilder.make())
        let vcSecond = UINavigationController(rootViewController: UpcomingViewController())
        let vcThird = UINavigationController(rootViewController: SearchViewController())
        let vcFourth = UINavigationController(rootViewController: DownloadViewController())
        
        vcFirst.tabBarItem.image = UIImage(systemName: "house")
        vcSecond.tabBarItem.image = UIImage(systemName: "play.circle")
        vcThird.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vcFourth.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        vcFirst.title = "Home"
        vcSecond.title = "Coming Soon"
        vcThird.title = "Top Search"
        vcFourth.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vcFirst,vcSecond,vcThird,vcFourth], animated: true)
    }


}
