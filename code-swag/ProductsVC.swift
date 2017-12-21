//
//  ProductsVC.swift
//  code-swag
//
//  Created by IBM-MOBILITY on 19/12/17.
//  Copyright © 2017 IBM-MOBILITY. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var productCollection:UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollection.delegate = self
        productCollection.dataSource = self
    }
    
    func initProducts(category: Category)
    {
        products = DataService.instance.getProducts(forCategory: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productsCell", for: indexPath) as? ProductCell
        {
            let product = products[indexPath.row]
            
            cell.updateViews(product: product)
            
         return cell
        }
        
        return ProductCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//     
//    }
}
