//
//  String.swift
//  SSWL
//
//  Created by Ahmed on 9/9/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import Foundation

extension String {
    var trammid : String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines )
    }
    
}
