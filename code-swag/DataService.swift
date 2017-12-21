//
//  DataService.swift
//  code-swag
//
//  Created by IBM-MOBILITY on 19/12/17.
//  Copyright © 2017 IBM-MOBILITY. All rights reserved.
//

import Foundation


class DataService{
    
    //creating a singleton pattern here.
    static let instance = DataService()
    
    private let categories = [
        
        
        
        Category(title: "HOODIES", imageName: "hoodies.png"),
        
        Category(title: "HATS", imageName: "hats.png"),
        
        Category(title: "SHIRTS", imageName: "shirts.png"),
        
        Category(title: "DIGITAL", imageName: "digital.png")
        
        
    ]
    
    private let hats = [
        
        Product(title: "Devslopes Logo Graphic Hat", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo graphic Black Hat", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo graphic White Hat", price: "$25", imageName: "hat03.png"),
        Product(title: "Devslopes Logo graphic SnapBack", price: "$20", imageName: "hat04.png")
        
    ]
    
    private let hoodies = [
        
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslops Hoodie Black", price: "$32", imageName: "hoodie04.png")
        
    ]
    
    
    private let shirts = [
        
        Product(title: "Devslopes logo Black Shirts", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes logo light grey shirt", price: "$20", imageName: "shirt02.png"),
        Product(title: "Devslopes logo Red shirt", price: "$21", imageName: "shirt03.png"),
        Product(title: "Devslopes Hustle shirt", price: "$19", imageName: "shirt04.png"),
        Product(title: "Devslopes Kickoff Studios shirt", price: "$20", imageName: "shirt05.png")
        
    ]
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]
    {
        
        return categories
    }
    
    
    func getProducts(forCategory title:String) ->[Product]
    {
        func getShirts() -> [Product]
        {
            return shirts
        }
        
        func getHoodies() -> [Product]
        {
            return hoodies
        }
        func getHats() -> [Product]
        {
            return hats
        }
        func getDigitalGoods() ->[Product]
        {
            return digitalGoods
            
        }
        
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
        
    }
}











































