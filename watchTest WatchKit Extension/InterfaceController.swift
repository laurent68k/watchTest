//
//  InterfaceController.swift
//  watchTest WatchKit Extension
//
//  Created by Laurent Favard on 02/03/2019.
//  Copyright © 2019 Laurent Favard. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var mainTable: WKInterfaceTable!
    private let data = ["One", "Two", "Three", "Four", "Five"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.loadTableData()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        
        print("didSelectRowAt at \(rowIndex)")
        self.pushController(withName: "DetailsInterfaceController", context: self.data[rowIndex])
    }
    
    private func loadTableData() {
        
        self.mainTable.setNumberOfRows( self.data.count, withRowType: "RowController")
        for (index,value) in self.data.enumerated() {
            
            if let rowController = self.mainTable.rowController(at: index) as? RowController {
                
                rowController.rowLabel.setText( value )
            }
        }
    }
}
