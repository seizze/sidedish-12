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
    
    var viewModel = BanchanDetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    private func configureViewModel() {
        viewModel.updateNotify { detail in
            DispatchQueue.main.async { self.descriptionView.banchanDetail = detail }
        }
    }
}
