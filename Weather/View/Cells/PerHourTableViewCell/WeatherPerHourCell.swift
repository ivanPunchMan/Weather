//
//  WeatherPerHourCell.swift
//  Weather
//
//  Created by Admin on 01.04.2022.
//

import UIKit

class WeatherPerHourCell: UICollectionViewCell {
    
    static let reuseId = "WeatherPerHourCell"
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var stackView: UIStackView = {
        
        let windIcon = UIImageView(imageName: "wind")
        let pressureIcon = UIImageView(imageName: "pressure")
        let humidityIcon = UIImageView(imageName: "humidity")
        let waterTemperatureIcon = UIImageView(imageName: "water")

        
        let stackView = UIStackView(arrangedSubviews: [windIcon, pressureIcon, humidityIcon, waterTemperatureIcon])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            windIcon.topAnchor.constraint(equalTo: stackView.topAnchor),
            windIcon.bottomAnchor.constraint(equalTo: pressureIcon.topAnchor),
            pressureIcon.bottomAnchor.constraint(equalTo: humidityIcon.topAnchor),
            humidityIcon.bottomAnchor.constraint(equalTo: waterTemperatureIcon.topAnchor),
            waterTemperatureIcon.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
            
        ])
        
        for icon in stackView.arrangedSubviews {
            icon.widthAnchor.constraint(equalToConstant: 20).isActive = true
            icon.heightAnchor.constraint(equalToConstant: 20).isActive = true
            icon.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
            icon.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        }
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    
    private func configureUI() {
    
        contentView.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
