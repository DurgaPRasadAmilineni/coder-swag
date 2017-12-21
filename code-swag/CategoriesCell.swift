//
//  CategoriesCell.swift
//  code-swag
//
//  Created by IBM-MOBILITY on 19/12/17.
//  Copyright © 2017 IBM-MOBILITY. All rights reserved.
//

import UIKit

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var categoryImage:UIImageView!
    @IBOutlet weak var categoryTitle:UILabel!
    
    
    func updateCell(category:Category)
    {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }

}
