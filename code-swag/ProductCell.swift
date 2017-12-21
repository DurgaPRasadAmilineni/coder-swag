//
//  ProductCell.swift
//  code-swag
//
//  Created by IBM-MOBILITY on 19/12/17.
//  Copyright © 2017 IBM-MOBILITY. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    
    func updateViews(product:Product)
    {
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.title
        productPrice.text = product.price
        
        
    }
}
