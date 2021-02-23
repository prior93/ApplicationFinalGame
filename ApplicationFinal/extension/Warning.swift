//
//  Warning.swift
//  ApplicationFinal
//
//  Created by parashar.r.adhikary on 22/02/2021.
//

import Foundation
import UIKit

extension UIViewController {
//    func warningPopUP(withTitle title: String?, withMessage message: String?) {
//        DispatchQueue.main.async {
//            let popUP = UIAlertController(title: title, message: message, preferredStyle: .alert)
//            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//            popUP.addAction(okButton)
//            self.present(popUP, animated: true)
//        }
//    }
    
    func warningPopUp(withTitle title: String?, withMessage message: String?){
        
        DispatchQueue.main.async {
            let popUp = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OKAY", style: .cancel, handler: nil)
            
            popUp.addAction(okButton)
            self.present(popUp, animated: true, completion: .none)
        }
        
        
        
    }
    
    
    
    
    
    
    
}
