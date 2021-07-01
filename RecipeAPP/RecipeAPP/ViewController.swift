//
//  ViewController.swift
//  RecipeAPP
//
//  Created by Krishna Bhatt on 30/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let myLabel1:UILabel = {
        let Label = UILabel()
        Label.text = "Fit As A Fiddle"
        Label.font = UIFont(name: "ArialRoundedMTBold", size: 50.0)
        Label.textAlignment = .center
        return Label
        
    }()
    
    private let myLabel2:UILabel = {
        let Label = UILabel()
        Label.text = "Recipe Handler"
        Label.font = UIFont.italicSystemFont(ofSize: 30.0)
        Label.textAlignment = .center
        return Label
        
    }()
    
    private let mytextFieldUserName : UITextField = {
        let txtUsername = UITextField()
        txtUsername.attributedPlaceholder = NSAttributedString(string: "placeholder text", attributes: [NSAttributedString.Key.foregroundColor: UIColor .white])
        txtUsername.placeholder = "Enter UserName"
        txtUsername.textAlignment = .center
        txtUsername.borderStyle = .roundedRect
        txtUsername.backgroundColor = .systemPink
        return txtUsername
    }()
    
    private let mytextFieldPass : UITextField = {
        let txtPassword = UITextField()
        txtPassword.attributedPlaceholder = NSAttributedString(string: "placeholder text", attributes: [NSAttributedString.Key.foregroundColor: UIColor .white])
        txtPassword.placeholder = "Enter Password"
        txtPassword.textAlignment = .center
        txtPassword.borderStyle = .roundedRect
        txtPassword.backgroundColor = .systemPink
        return txtPassword
    }()
    
    private let myButton : UIButton = {
       let Button = UIButton()
        Button.setTitle("LOGIN", for: .normal)
        Button.addTarget(self, action: #selector(handleButtonCLick), for: .touchUpInside)
        Button.backgroundColor = .black
        Button.layer.cornerRadius = 6
        return Button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myLabel1)
        view.addSubview(myLabel2)
        view.addSubview(mytextFieldUserName)
        view.addSubview(mytextFieldPass)
        view.addSubview(myButton)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image3.jpg")!)
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel1.frame = CGRect(x: 30, y: 140, width: view.width - 40, height: 220)
        myLabel2.frame = CGRect(x: 35, y: 165, width: view.width - 40, height: 230)
        mytextFieldUserName.frame = CGRect(x: 20, y: myLabel2.bottom + 90, width: view.frame.width - 40, height: 60)
        mytextFieldPass.frame = CGRect(x: 20, y: mytextFieldUserName.bottom + 30, width: view.width - 40, height: 60)
        myButton.frame = CGRect(x: 20, y: mytextFieldPass.bottom + 30, width: view.width - 40, height: 60)
    }
    
    @objc func handleButtonCLick() {
        print("Clicked!")
        
        let vc = RecipeHandle()
        
        navigationController?.pushViewController(vc, animated: true)
        
    }

}
