//
//  VideoCell.swift
//  tableview-programmatic
//
//  Created by miguel tomairo on 1/5/20.
//  Copyright © 2020 rapser. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    var videoImageView = UIImageView()
    var videoTitleLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(videoImageView)
        addSubview(videoTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        
        setImageConstraint()
        setTitleLabelConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(video: Video){
        videoTitleLabel.text = video.title
        videoImageView.image = video.image
    }
    
    func configureImageView(){
        
        videoImageView.layer.cornerRadius = 10
        videoImageView.clipsToBounds = true
    }
    
    func configureTitleLabel(){
        
        videoTitleLabel.numberOfLines = 0
        videoTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraint(){
        
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        videoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setTitleLabelConstraint(){
        
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        videoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoTitleLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive = true
        videoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        videoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true

    }
    
}
