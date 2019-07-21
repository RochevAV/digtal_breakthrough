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
        let labelHeight = bounds.height/4.0
        let labelFrame = CGRect(x: 0, y: bounds.height - labelHeight, width: bounds.width, height: labelHeight)
        let label = UILabel(frame: labelFrame)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor.Main.blueBackround
        self.label = label
        addSubview(label)
        let imageFrame = CGRect(x: labelHeight / 2.0, y: 0, width: bounds.width - labelHeight, height: bounds.height - labelHeight)
        let imageView = UIImageView(frame: imageFrame)
        addSubview(imageView)
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
