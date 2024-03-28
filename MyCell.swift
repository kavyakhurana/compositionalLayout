//
//  MyCell.swift
//  collectionViewCompositionalLayout
//
//  Created by Kavya Khurana on 28/03/24.
//

import Foundation
import UIKit

class MyCell: UICollectionViewCell {
    
    private let label: UILabel = {
        let lbl = UILabel()
        lbl.text = "Label"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        contentView.backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
