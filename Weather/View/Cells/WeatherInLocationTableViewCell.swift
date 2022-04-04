//
//  WeatherInCityTableViewCell.swift
//  Weather
//
//  Created by Admin on 03.04.2022.
//

import UIKit

class WeatherInLocationCell: UITableViewCell {
    
    static var reuseId = "WeatherInLocationCell"

    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var condition: UILabel!
    @IBOutlet weak var feelsLike: UILabel!
    
//    override init(style:CellWeatherInLocation UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//        
//    }
    
    func configureUI() {
//        weatherIcon.image = UIImage(named: <#T##String#>)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
