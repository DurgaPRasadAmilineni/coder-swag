//
//  CategoriesVC.swift
//  code-swag
//
//  Created by IBM-MOBILITY on 19/12/17.
//  Copyright © 2017 IBM-MOBILITY. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var categoryTable:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoriesCell
       {
        
        //getting the row that corresponds to the particular image
        let category = DataService.instance.getCategories()[indexPath.row]
        
        //calling the update cell method in the categoriescell because the cell is of type CategoriesCell
        cell.updateCell(category: category)
        
        return cell
       }else{
        
        
        return CategoriesCell()
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC
        {
            //MARK-; this code is to make the back button in the next page if dont give this we get a default title
            let backBarButton = UIBarButtonItem()
            backBarButton.title = ""
            navigationItem.backBarButtonItem = backBarButton
                //for build time
            assert(sender as? Category != nil)
            
            productsVC.initProducts(category: sender as! Category)
        
        }
    }
    
    
    
    
    
    
    
    
    
}

