//
//  WeatherPerHourViewController.swift
//  Weather
//
//  Created by Admin on 01.04.2022.
//

import Foundation
import UIKit

protocol TableViewCellPotocol: AnyObject {
    init()
}

class WeatherPerHourCollectionView: UICollectionView {
    
//MARK: - init
    required init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = CGSize(width: 100, height: 100)
        
        super.init(frame: .zero, collectionViewLayout: layout)
        register(WeatherPerHourCell.self, forCellWithReuseIdentifier: WeatherPerHourCell.reuseId)
        backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        delegate = self
        dataSource = self
        
        
        
        translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - properties
    
    let cells = [WeatherPerHourModel]()
    
}

//MARK: - UICollectionViewDataSource
extension WeatherPerHourCollectionView: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: WeatherPerHourCell.reuseId, for: indexPath)
            
        return cell
    }
    
    
}

//MARK: - UICollectionViewDelegate
extension WeatherPerHourCollectionView: UICollectionViewDelegate {
    
}

extension WeatherPerHourCollectionView: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 50, height: 50)
//    }
}
