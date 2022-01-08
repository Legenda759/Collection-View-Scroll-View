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
    var items: Array<Item> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.blue
        initViews()
        // Do any additional setup after loading the view.
    }

//    MARK: - Methods
    
    func initViews() {
        addNavigationBar()
        CollectionView.dataSource = self
        CollectionView.delegate = self
        
        self.CollectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        if let flowLayout = CollectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellwidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellwidth, height: cellwidth)
        }
        
        items.append(Item(title: "The Best Laptop", image: "codingMBP14"))
        items.append(Item(title: "The Best Phone", image: "iPhone12"))
        items.append(Item(title: "The Best Laptop", image: "codingMBP14"))
        items.append(Item(title: "The Best Phone", image: "iPhone12"))
        items.append(Item(title: "The Best Laptop", image: "codingMBP14"))
        items.append(Item(title: "The Best Phone", image: "iPhone12"))
        items.append(Item(title: "The Best Laptop", image: "codingMBP14"))
        items.append(Item(title: "The Best Phone", image: "iPhone12"))
        items.append(Item(title: "The Best Laptop", image: "codingMBP14"))
        items.append(Item(title: "The Best Phone", image: "iPhone12"))
        items.append(Item(title: "The Best Laptop", image: "codingMBP14"))
        items.append(Item(title: "The Best Phone", image: "iPhone12"))
        
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
    
//    MARK: - Collection View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Item = items[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemCollectionViewCell
        cell.nameLabel.text = Item.title
        cell.ImageView.image = UIImage(named: Item.image!)
        return cell
    }
    
//    MARK: - Actions
    @objc func rightTapped() {
        callScrollViewController()
    }

}
