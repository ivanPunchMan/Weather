//
//  WeatherPerHourCell.swift
//  Weather
//
//  Created by Admin on 01.04.2022.
//

import UIKit

class IndicatorsCell: UICollectionViewCell {
    
//MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)

        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Properties
    static let reuseId = "IndicatorsCell"
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var windIcon = UIImageView(imageName: "wind")
    private var pressureIcon = UIImageView(imageName: "pressure")
    private var humidityIcon = UIImageView(imageName: "humidity")
    private var waterTemperatureIcon = UIImageView(imageName: "water")
    
    private var windSpeed = UILabel(text: "6м/с, Ю", fontSize: 10)
    private var pressure = UILabel(text: "730мм рт.ст.", fontSize: 10)
    private var humidity = UILabel(text: "77%", fontSize: 10)
    private var waterTemperature = UILabel(text: "0º", fontSize: 10)
    
    private lazy var iconStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [windIcon, pressureIcon, humidityIcon, waterTemperatureIcon])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 2
     
        return stackView
    }()
    
    private lazy var indicatorsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [windSpeed, pressure, humidity, waterTemperature])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 2
    
        return stackView
    }()
    
//MARK: - Methods, setup UI
    private func configureUI() {
        contentView.addSubview(iconStackView)
        contentView.addSubview(indicatorsStackView)
        
        setupConstraintsIconsAndLabels(constant: 20)
        setupConstraintsIconsStackView()
        setupConstraintsIndicatorsStackView()
    }
    
    private func setupConstraintsIconsAndLabels(constant: CGFloat) {
        NSLayoutConstraint.activate([
            windIcon.topAnchor.constraint(equalTo: iconStackView.topAnchor),
            waterTemperatureIcon.bottomAnchor.constraint(equalTo: iconStackView.bottomAnchor)
        ])
        for icon in iconStackView.arrangedSubviews {
            icon.widthAnchor.constraint(equalToConstant: constant).isActive = true
            icon.heightAnchor.constraint(equalToConstant: constant).isActive = true
            icon.leadingAnchor.constraint(equalTo: iconStackView.leadingAnchor).isActive = true
            icon.trailingAnchor.constraint(equalTo: iconStackView.trailingAnchor).isActive = true
        }
        
        NSLayoutConstraint.activate([
            windSpeed.topAnchor.constraint(equalTo: indicatorsStackView.topAnchor),
            waterTemperature.bottomAnchor.constraint(equalTo: indicatorsStackView.bottomAnchor)
        ])
        for label in indicatorsStackView.arrangedSubviews {
            label.heightAnchor.constraint(equalToConstant: constant).isActive = true
            label.leadingAnchor.constraint(equalTo: indicatorsStackView.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: indicatorsStackView.trailingAnchor).isActive = true
        }
    }

    private func setupConstraintsIconsStackView() {
        NSLayoutConstraint.activate([
            iconStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            iconStackView.trailingAnchor.constraint(equalTo: indicatorsStackView.leadingAnchor, constant: -5),
            iconStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            iconStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }

    private func setupConstraintsIndicatorsStackView() {
        NSLayoutConstraint.activate([
            indicatorsStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            indicatorsStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            indicatorsStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
