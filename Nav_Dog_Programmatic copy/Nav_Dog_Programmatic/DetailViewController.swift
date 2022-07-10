//
//  DetailViewController.swift
//  Nav_Dog_Programmatic
//
//  Created by Consultant on 7/9/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var indexP = 0
    
    lazy var progImageView2: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named:"Mean_\(indexP)")
        return imageView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        
        self.setUpUI()
        

        // Do any additional setup after loading the view.
    }
    
    
    private func setUpUI() {
        
        
        self.view.addSubview(self.progImageView2)
        
        
        
        self.progImageView2.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.progImageView2.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        
        self.progImageView2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 44).isActive = true
        
        self.progImageView2.heightAnchor.constraint(equalToConstant: 300).isActive = true
        self.progImageView2.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
