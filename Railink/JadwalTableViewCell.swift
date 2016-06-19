//
//  JadwalTableViewCell.swift
//  Railink
//
//  Created by Doddy on 6/19/16.
//  Copyright © 2016 Doddy. All rights reserved.
//

import UIKit

class JadwalTableViewCell: UITableViewCell {

    @IBOutlet weak var namaKeretaLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(jadwal: JadwalSementaraViewParam) {
        namaKeretaLabel.text = jadwal.namaKereta
        timeLabel.text = jadwal.time
        priceLabel.text = jadwal.price
    }

}
