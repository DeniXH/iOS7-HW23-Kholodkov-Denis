//
//  SearchCollectionViewCell.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 19.12.2022.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
    static let identifier = "SearchViewCell"

    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 10
        return image
    }()

    private lazy var trackTitle: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .white
        return title
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(imageView)
        imageView.addSubview(trackTitle)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with model: ArtistModelKind) {
        imageView.image = UIImage(named: model.imageSqr)
        trackTitle.text = model.title
    }

    private func setupLayout() {
        imageView.frame = contentView.bounds

        NSLayoutConstraint.activate([trackTitle.leadingAnchor.constraint(equalTo: imageView.leadingAnchor,
                                                                         constant: 10),
                                     trackTitle.bottomAnchor.constraint(equalTo: imageView.bottomAnchor,
                                                                        constant: -10)
        ])
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        setupLayout()
    }
}

