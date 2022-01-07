//
//  HomeViewController.swift
//  Collection View & Scroll View
//
//  Created by Legenda_759 on 07/01/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var CollectionView: UICollectionView!
    let numberOfColumns: CGFloat = 2
    var items: Array<item> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.blue
        initViews()
        // Do any additional setup after loading the view.
    }

//    MARK: - Methods
    
    func initViews() {
        addNavigationBar()
    }
    
    func addNavigationBar() {
        let scroll = UIImage(named: "ic_scroll")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: scroll, style: .plain, target: self, action: #selector(rightTapped))
        title = "Collection View"
    }
    
    func callScrollViewController() {
        let vc = ScrollViewController(nibName: "ScrollViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
//    MARK: - Actions
    @objc func rightTapped() {
        callScrollViewController()
    }

}
