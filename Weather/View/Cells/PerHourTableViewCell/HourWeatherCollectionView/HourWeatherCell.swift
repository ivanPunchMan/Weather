//
//  HourWeatherCell.swift
//  Weather
//
//  Created by Admin on 05.04.2022.
//

import UIKit

class HourWeatherCell: UICollectionViewCell {
    
//MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Properties
    static let reuseId = "HourWeatherCell"
    
    private var time = UILabel(text: "00:00", fontSize: 20)
    private var weatherIcon = UIImageView(imageName: "c3_s2")
    private var temperature = UILabel(text: "-1º", fontSize: 15)
    
    private lazy var hourWeatherStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [time, weatherIcon, temperature])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 2
    
        return stackView
    }()
    
//MARK: - Methods, setup UI
    private func configureUI() {
        contentView.addSubview(hourWeatherStackView)
        
        setupConstraintsIconsAndLabels(constant: 30)
        setupConstraintsHourWeatherStackView()
        
//        temperature.textAlignment = .center
    }
    
    private func setupConstraintsIconsAndLabels(constant: CGFloat) {
        NSLayoutConstraint.activate([
            time.topAnchor.constraint(equalTo: hourWeatherStackView.topAnchor),
            temperature.bottomAnchor.constraint(equalTo: hourWeatherStackView.bottomAnchor),
            weatherIcon.widthAnchor.constraint(equalToConstant: 30)
        ])
        for icon in hourWeatherStackView.arrangedSubviews {
            icon.heightAnchor.constraint(equalToConstant: constant).isActive = true
            icon.leadingAnchor.constraint(equalTo: hourWeatherStackView.leadingAnchor).isActive = true
            icon.trailingAnchor.constraint(equalTo: hourWeatherStackView.trailingAnchor).isActive = true
        }
    }

    private func setupConstraintsHourWeatherStackView() {
        NSLayoutConstraint.activate([
            hourWeatherStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            hourWeatherStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            hourWeatherStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            hourWeatherStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}
