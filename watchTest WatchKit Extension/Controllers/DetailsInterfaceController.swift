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
    
    private var contextData : String?
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        
        self.contextData = context as? String
        
        if let value = self.contextData {
            
            self.detailsLabel.setText(value)
        }
    }
    
    override func willActivate() {
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        
        super.didDeactivate()
    }
    
    /**
        Override the the segue transition to give the date to transmit. The segue has been added in the storyboard
     */
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        
        return self.contextData
    }
}
