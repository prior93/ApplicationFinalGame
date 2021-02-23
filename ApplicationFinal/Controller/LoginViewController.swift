//
//  ViewController.swift
//  ApplicationFinal
//
//  Created by parashar.r.adhikary on 22/02/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let username = "prior"
    private let id = "123pP"
    private let identifier = "GameViewController"
    
    let notificationCenter = NotificationCenter.default
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Function to handel Log in
    
    func handelLogin()  {
        guard userNameTextField.text == username ,passwordTextField.text == id else{
            warningPopUp(withTitle: "WRONG LOGIN", withMessage: "PLEASE ENTER CORRECT DETAIL")
            return
        }
        
        userDefaults.setValue(username, forKey: "username")
        userDefaults.setValue(id, forKey: "id")
        goToGameVC()
        
        //        userNameTextField.text = ""
        //        passwordTextField.text = ""
        
    }
    
    
    // Function to take the screen to next screen
    
    func goToGameVC(){
        guard let initVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: identifier) as? GameViewController else {return}
        view.endEditing(true)
        present(initVC, animated: true)
    }
    
    
    // Different Function of Assigned Button
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        handelLogin()
    }
    
    
    @IBAction func closeLogIn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        warningPopUp(withTitle: "ALERT!!", withMessage: "Your User Name is \(username)")
    }
    
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        warningPopUp(withTitle: "ALERT!!", withMessage: "Your Password is \(id)")
    }
}



extension LoginViewController:UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField{passwordTextField.becomeFirstResponder()
        } else{
            handelLogin()
        }
        return true
        
    }
}





// MARK:- CREDITS AND SOURCES

// - Accenture BootCamp Lecture
// - arkadijs.makarenko   https://github.com/archeym
// -  https://codewithchris.com
// - https://stackoverflow.com
// - https://developer.apple.com



