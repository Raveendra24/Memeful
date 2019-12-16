//
//  MemeCollectionViewCell.swift
//  Memeful
//
//  Created by Raveendra on 16/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import UIKit
import Kingfisher

class MemeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var meme: UIImageView!
    @IBOutlet weak var memeTitle: UILabel!
    @IBOutlet weak var memePoint: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 6
        containerView.layer.masksToBounds = true
    }
    
    func set(_ data: Data) {
        self.memeTitle.text = data.title
        if let points = data.points {
            self.memePoint.text = String(describing: points) + " points"
        }
       
        self.meme.kf.setImage(with: URL(string: data.link ?? ""), placeholder: nil, options: [], progressBlock: nil) { (result) in
            switch result {
            case .success:
                break
            case .failure(_):
                break
            }
        }
    }
}
