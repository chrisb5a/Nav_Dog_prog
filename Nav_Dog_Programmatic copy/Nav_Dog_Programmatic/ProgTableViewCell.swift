//
//  ProgTableViewCell.swift
//  Nav_Dog_Programmatic
//
//  Created by Consultant on 7/9/22.
//

import UIKit

class ProgTableViewCell: UITableViewCell {
    
    static let reuseID = "\(ProgTableViewCell.self)"
    
    
    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
        
    }()
    
    lazy var progTopLabel: UILabel = {
        let Label = UILabel(frame: .zero)
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.numberOfLines = 0
        Label.textAlignment = .center
        Label.font = Label.font.withSize(20)
        
        return Label
        
    }()
    
    
    lazy var progMidLabel: UILabel = {
        let Label = UILabel(frame: .zero)
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.numberOfLines = 0
        Label.textAlignment = .center
        Label.font = Label.font.withSize(15)
        
        return Label
        
    }()
    
    
    
    lazy var progSlider: UISlider = {
        let Slider = UISlider(frame: .zero)
        Slider.translatesAutoresizingMaskIntoConstraints = false
        //Slider.center = self.center
        Slider.setValue(0.5, animated: true)
        
        
        self.progMidLabel.text = "\(Slider.value)"
        Slider.addTarget(self, action: #selector(self.SliderValueChanged(sender:)), for: .valueChanged)
        
        return Slider
    }()
    
    lazy var progButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Reset", for: .normal)
        
        button.setTitleColor(.white, for: .normal)
        button.tintColor = .systemBlue
        button.backgroundColor = .systemCyan
        button.addTarget(self, action: #selector(self.progButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpUI(){
        self.backgroundColor = .clear
        let vStackView = UIStackView(frame: .zero)
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        vStackView.spacing = 8
        vStackView.axis = .vertical
        vStackView.distribution = .fillEqually
        
        vStackView.addArrangedSubview(self.progTopLabel)
        vStackView.addArrangedSubview(self.progMidLabel)
        vStackView.addArrangedSubview(self.progSlider)
        
        vStackView.addArrangedSubview(self.progButton)
        
        
        let hStackView = UIStackView(frame: .zero)
        hStackView.translatesAutoresizingMaskIntoConstraints = false
        hStackView.spacing = 8
        hStackView.axis = .horizontal
        
        hStackView.addArrangedSubview(self.progImageView)
        hStackView.addArrangedSubview(vStackView)
        
        self.progImageView.heightAnchor.constraint(equalToConstant: 135).isActive = true
        self.progImageView.widthAnchor.constraint(equalToConstant: 140).isActive = true
        
        self.contentView.addSubview(hStackView)
        hStackView.bindToSuperView()
    }
    @objc func SliderValueChanged(sender: UISlider){
         
        progSlider.value = sender.value
         
        progMidLabel.text = "\(sender.value)"
        NSLog("You slide toward value: \(Double(sender.value))!")    }
    
    @objc
    func progButtonPressed() {
        print("Button Was Tapped!!!!")
        progSlider.value = 0.5
        progMidLabel.text = "0.5"
        
    }

}
