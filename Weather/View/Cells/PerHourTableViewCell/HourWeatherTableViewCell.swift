//
//  MainTableViewCell.swift
//  Weather
//
//  Created by Admin on 02.04.2022.
//

import UIKit


class HourWeatherTableViewCell: UITableViewCell {

    static let reuseId = "HourWeatherTableViewCell"
    
    let hourWeatherCollectionView = HourWeatherCollectionView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        setupConstraint()
    }
    
    func setupConstraint() {

        contentView.addSubview(hourWeatherCollectionView)
        
        NSLayoutConstraint.activate([
            hourWeatherCollectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            hourWeatherCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            hourWeatherCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            hourWeatherCollectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
