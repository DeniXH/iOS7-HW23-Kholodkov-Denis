//
//  SectionHeaderReusableView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 19.12.2022.
//

import UIKit

class SectionHeaderReusableView: UICollectionReusableView {
    static var identifier: String {
        return String(describing: SectionHeaderReusableView.self)
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .title1).pointSize,
                                       weight: .bold)
        label.adjustsFontForContentSizeCategory = true
        label.textColor = .label
        label.textAlignment = .left
        label.numberOfLines = Metric.labelNumberOfLines
        label.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        addSubview(titleLabel)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: readableContentGuide.leadingAnchor),
            titleLabel.trailingAnchor.constraint(lessThanOrEqualTo: readableContentGuide.trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor,
                                            constant: Metric.titleTopAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor,
                                               constant: Metric.titleBottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SectionHeaderReusableView {
    enum Metric {
        static let titleTopAnchor: CGFloat = 10
        static let titleBottomAnchor: CGFloat = -10
        static let labelNumberOfLines = 1
    }
}
