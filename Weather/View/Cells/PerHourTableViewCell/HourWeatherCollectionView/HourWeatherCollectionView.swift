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

class HourWeatherCollectionView: UICollectionView {
    
//MARK: - init
    required init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = CGSize(width: 100, height: 100)
        
        super.init(frame: .zero, collectionViewLayout: layout)
        register(IndicatorsCell.self, forCellWithReuseIdentifier: IndicatorsCell.reuseId)
        register(HourWeatherCell.self, forCellWithReuseIdentifier: HourWeatherCell.reuseId)
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
extension HourWeatherCollectionView: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = dequeueReusableCell(withReuseIdentifier: IndicatorsCell.reuseId, for: indexPath) as! IndicatorsCell
            return cell
        default:
            let cell = dequeueReusableCell(withReuseIdentifier: HourWeatherCell.reuseId, for: indexPath) as! HourWeatherCell
            return cell
        }
    }
    
    
}

//MARK: - UICollectionViewDelegate
extension HourWeatherCollectionView: UICollectionViewDelegate {
    
}
