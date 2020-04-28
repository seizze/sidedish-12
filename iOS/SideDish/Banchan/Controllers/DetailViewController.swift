//
//  DetailViewController.swift
//  Banchan
//
//  Created by Chaewan Park on 2020/04/28.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var pagingView: ImageCollectionView!
    @IBOutlet weak var descriptionView: DescriptionView!
    @IBOutlet weak var detailView: ImageCollectionView!
    
    private var pagingViewModel = ImageCollectionViewModel()
    private var detailViewModel = ImageCollectionViewModel()
    
    var descriptionViewModel = BanchanDetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewModels()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    private func configureViewModels() {
        descriptionViewModel.updateNotify { detail in
            DispatchQueue.main.async {
                self.descriptionView.banchanDetail = detail
                self.pagingView.configure(imageCount: detail?.thumbImages.count ?? 0,
                                          width: self.view.frame.width)
            }
        }
    }
}
