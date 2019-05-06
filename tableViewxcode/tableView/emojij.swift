//
//  emojij.swift
//  tableView
//
//  Created by 2019-2 on 5/6/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

class emoji{
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description:String, usage: String){
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}

struct colores{
    var colorPrimario: String
    var colorSecundario: String
}
