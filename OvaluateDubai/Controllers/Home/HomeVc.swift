//
//  HomeVc.swift
//  OvaluateDubai
//
//  Created by Faiza's Macbook Pro on 14/06/2022.
//

import UIKit

class HomeVc: UIViewController {

    @IBOutlet weak var blogsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
        blogsCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}
extension HomeVc: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeBlogCell", for: indexPath) as? HomeBlogCell else { return UICollectionViewCell() }
        
        
        return cell
    }
    
    
}

