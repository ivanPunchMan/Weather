//
//  Assembly.swift
//  Weather
//
//  Created by Admin on 29.03.2022.
//

import Foundation
import UIKit

protocol AssemblyProtocol {
    static func createMainViewController() -> UIViewController
}

class Assembly: AssemblyProtocol {
    static func createMainViewController() -> UIViewController {
        
        let view = MainViewController()
        let networkManager = NetworkManager()
        let presenter = MainPresenter(view: view, networkManager: networkManager)
        
        view.presenter = presenter
        
        return view
    }
}
