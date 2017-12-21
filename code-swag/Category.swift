//
//  Category.swift
//  code-swag
//
//  Created by IBM-MOBILITY on 19/12/17.
//  Copyright © 2017 IBM-MOBILITY. All rights reserved.
//

import Foundation
import UIKit

struct Category {
    
    //values of the struct can be get but cannot be set outside the struct
    private(set) public var title: String
    
    private(set) public var imageName: String
    
    
    //initialize the struct variables
    init(title: String, imageName: String) {
        
        self.imageName = imageName
        
        self.title = title
        
    }
}
