//
//  AppDelegate.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let storyboardName = "Main"

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let rootNC = storyboard.instantiateInitialViewController() as! UINavigationController
        
        let programmersListVC = rootNC.topViewController as! ProgrammersTableViewController
        
        let entityGateway = ProgrammersRepository()
        let useCase = ShowProgrammersListUseCase(entityGateway: entityGateway)
        let presenter = ProgrammersListPresenter(useCase: useCase)
        useCase.presenter = presenter
        programmersListVC.presenter = presenter
        
        window = UIWindow()
        window?.rootViewController = rootNC
        window?.makeKeyAndVisible()
        
        return true
    }

}

