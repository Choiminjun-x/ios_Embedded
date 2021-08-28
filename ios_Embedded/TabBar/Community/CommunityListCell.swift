//
//  CommunityListCell.swift
//  ios_Embedded
//
//  Created by 최민준 on 2021/08/28.
//

import UIKit
import SnapKit
import RxSwift

struct CommnuityListCellModel {
    var title: String
}
class CommunityListCell: UITableViewCell {
    
    //MARK: - Properties
    private let vstackView: UIStackView = .init()
    private let nameLabel: UILabel = .init()
    
    // Object LifeCycle
    required init?(coder: NSCoder) {
        fatalError()
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setAppearance()
    }
    
    //MARK: - View
    private func setAppearance() {
        
        self.vstackView.do {
            self.addSubview($0)
            $0.snp.makeConstraints {
                $0.width.height.equalToSuperview()
                $0.centerX.equalToSuperview()
            }
            $0.axis = .horizontal
            $0.alignment = .fill
            $0.distribution = .fill
        }
        
        self.nameLabel.do {
            vstackView.addArrangedSubview($0)
            $0.snp.makeConstraints {
                $0.width.height.equalToSuperview()
            }
            $0.textColor = .white
            $0.font = .systemFont(ofSize: 14)
        }
    }
    
    func displayCellModel(_ model: CommnuityListCellModel) {
        self.nameLabel.text = model.title
    }
}
