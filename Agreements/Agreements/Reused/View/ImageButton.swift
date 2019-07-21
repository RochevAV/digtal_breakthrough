//
//  ImageButton.swift
//  Agreements
//
//  Created by Aleksey Rochev on 20.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

@IBDesignable
class ImageButton: UIControl  {
    
    //MARK: - Public Properties
    
    @IBInspectable
    var image: UIImage? {
        didSet {
            imageView?.image = image
        }
    }
    
    @IBInspectable
    var text: String = "" {
        didSet {
            label?.text = text
        }
    }
    // MARK: - Private Properties
    
    private var imageView: UIImageView?
    private var label: UILabel?
    
    // MARK: - Lifrcycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    // MARK: - Private Methods
    
    private func configure() {
        layer.cornerRadius = 20
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = UIColor.Main.blueBackround
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
            label.heightAnchor.constraint(equalToConstant: bounds.width / 4.0)
            ])
        self.label = label
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            imageView.bottomAnchor.constraint(equalTo: label.topAnchor),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor)
            ])
        self.imageView = imageView
    }
}

extension ImageButton {
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                backgroundColor = .gray
                label?.textColor = .white
            }
            else {
                backgroundColor = .white
                label?.textColor = UIColor.Main.blueBackround
            }
        }
    }
    
}
