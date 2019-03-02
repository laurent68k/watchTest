//
//  DetailsViewController.swift
//  watchTest WatchKit Extension
//
//  Created by Laurent Favard on 02/03/2019.
//  Copyright © 2019 Laurent Favard. All rights reserved.
//

import Foundation
import WatchKit

class DetailsInterfaceController : WKInterfaceController {
    
    @IBOutlet weak var detailsLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        
        if let value = context as? String {
            
            self.detailsLabel.setText(value)
        }
    }
    
    override func willActivate() {
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        
        super.didDeactivate()
    }
}
