//
//  SecondCustomCollectionViewCell.swift
//  TestingXibView
//
//  Created by Darshil Agrawal on 28/05/21.
//

import UIKit

class SecondCustomCollectionViewCell: UICollectionViewCell {
    var text:Int?
    @IBOutlet weak var customCellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        if let unwrappedInt = text{
        self.customCellLabel.text = "\(String(describing: unwrappedInt))"
        }
        
    }

}
