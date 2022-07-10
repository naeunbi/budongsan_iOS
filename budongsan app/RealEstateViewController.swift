//
//  RealEstateViewController.swift
//  budongsan app
//
//  Created by 나은비 on 2022/07/10.
//

import UIKit

class RealEstateViewController: UIViewController {

    @IBOutlet weak var earnedIncomeTaxInfo: UILabel!
    @IBOutlet weak var earnedIncomeTax: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureRadius()
        self.configureShadow()
    }
}

extension RealEstateViewController {
    private func configureRadius() {
        self.earnedIncomeTaxInfo.clipsToBounds = true // 끝을 짜르겠다
        self.earnedIncomeTaxInfo.layer.cornerRadius = 12.5
        self.earnedIncomeTax.layer.cornerRadius = 21 // 네 모서리 radius 값을 21로 설정
    }
    
    private func configureShadow() {
        self.earnedIncomeTax.layer.shadowColor = UIColor.lightGray.cgColor
        self.earnedIncomeTax.layer.shadowOpacity = 0.6
        self.earnedIncomeTax.layer.shadowOffset = .zero
        self.earnedIncomeTax.layer.shadowRadius = 8
    }
}
