//
//  LibraryCollectionViewCell.swift
//  Library
//
//  Created by Carki on 2022/07/20.
//

import UIKit

class LibraryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    
    
    
    func configureCell(data: Book) {
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.text = data.title
        
        rateLabel.text = "\(data.rate)"
        
    }
}
