//
//  MainTableViewCell.swift
//  Weather
//
//  Created by Admin on 02.04.2022.
//

import UIKit


class PerHourTableViewCell: UITableViewCell {

    static let reuseId = "PerHourTableViewCell"
    
    let weatherPerHourCollectionView = WeatherPerHourCollectionView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        setupConstraint()

    }
    
    func setupConstraint() {

        contentView.addSubview(weatherPerHourCollectionView)
        
        NSLayoutConstraint.activate([
            weatherPerHourCollectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            weatherPerHourCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            weatherPerHourCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            weatherPerHourCollectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
