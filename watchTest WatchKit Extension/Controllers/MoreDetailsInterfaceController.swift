//
//  MoreDetailsInterfaceController.swift
//  watchTest WatchKit Extension
//
//  Created by Laurent Favard on 02/03/2019.
//  Copyright © 2019 Laurent Favard. All rights reserved.
//

import Foundation
import WatchKit

class MoreDetailsInterfaceController : WKInterfaceController {
    
    @IBOutlet weak var moreDetailsLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        
        if let value = context as? String {
            
            self.moreDetailsLabel.setText("About: \(value)")
        }
    }
    
    override func willActivate() {
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        
        super.didDeactivate()
    }
}
