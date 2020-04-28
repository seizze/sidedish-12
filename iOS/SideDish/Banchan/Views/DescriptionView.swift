//
//  DescriptionView.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/29.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class DescriptionView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var normalPriceLabel: UILabel!
    @IBOutlet weak var salePriceLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var deliveryFeeLabel: UILabel!
    @IBOutlet weak var deliveryInfoLabel: UILabel!
    
    var banchanDetail: BanchanDetail? {
        didSet { configureView() }
    }
    
    private func configureView() {
        titleLabel.text = banchanDetail?.title
        descriptionLabel.text = banchanDetail?.dataDescription
        normalPriceLabel.text = banchanDetail?.nPrice
        salePriceLabel.text = banchanDetail?.sPrice
        pointLabel.text = banchanDetail?.point
        deliveryFeeLabel.text = banchanDetail?.deliveryFee
        deliveryInfoLabel.text = banchanDetail?.deliveryInfo
    }
}
