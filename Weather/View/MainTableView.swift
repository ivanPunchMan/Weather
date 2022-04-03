//
//  MainTableView.swift
//  Weather
//
//  Created by Admin on 02.04.2022.
//

import UIKit

class MainTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        delegate = self
        dataSource = self
        
        backgroundColor = .brown
        translatesAutoresizingMaskIntoConstraints = false
        
        register(UINib(nibName: "CellWeatherInLocation", bundle: nil), forCellReuseIdentifier: CellWeatherInLocation.reuseId)
        register(PerHourTableViewCell.self, forCellReuseIdentifier: PerHourTableViewCell.reuseId)
        
//        rowHeight = 100

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
//    let cells = [TableViewCellPotocol]()
    
}



extension MainTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch indexPath.row {
        case 0:
            let cell = dequeueReusableCell(withIdentifier: CellWeatherInLocation.reuseId, for: indexPath) as! CellWeatherInLocation
//            let cell = dequeueReusableCell(withIdentifier: PerHourTableViewCell.reuseId, for: indexPath) as! PerHourTableViewCell

            return cell
        case 1:
            let cell = dequeueReusableCell(withIdentifier: PerHourTableViewCell.reuseId, for: indexPath) as! PerHourTableViewCell
            return cell
        default:
            break
        }
        let cell = dequeueReusableCell(withIdentifier: CellWeatherInLocation.reuseId, for: indexPath) as! CellWeatherInLocation
        return cell
        
    }
}


extension MainTableView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return UITableView.automaticDimension
        case 1:
            return 100
        default:
            break
        }
        return 100
    }
}
