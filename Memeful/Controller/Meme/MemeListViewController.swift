//
//  MemeListViewController.swift
//  Memeful
//
//  Created by Raveendra on 15/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import UIKit
import Kingfisher

class MemeListViewController: UIViewController {
    
    @IBOutlet weak var listCollectionView: UICollectionView!
    fileprivate var viralPostModel: MostViral?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.fetchAPIData()
    }
    
    private func setup() {
        self.title = "Most Viral"
        if let layout = listCollectionView?.collectionViewLayout as? CustomCollectionViewLayout {
            layout.delegate = self
        }
    }
    
    func fetchAPIData() {
        NetworkService.shared.startService(request: NetworkRouter.getPopularPost([:], page: "0"), decode: { json -> MostViral? in
            return json as? MostViral
        }) { (result) in
            switch result {
            case .success(let model):
                self.viralPostModel = model
                self.listCollectionView.reloadData()
            case .failure(let error):
                self.showPopupFor(error)
            }
        }
    }
    
    func showPopupFor(_ error: APIError) {
        let alertVC = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            
        }
        alertVC.addAction(okAction)
        self.present(alertVC, animated: true, completion: nil)
    }
    
}
    
extension MemeListViewController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viralPostModel?.data?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        
        if let data = self.viralPostModel?.data?[indexPath.row] {
            cell.set(data)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = (collectionView.frame.width - (collectionView.contentInset.left + collectionView.contentInset.right + 10)) / 2
        var itemHeight = itemWidth
        if let data = self.viralPostModel?.data?[indexPath.row], let width = data.width, let height = data.height {
            itemHeight = CGFloat(Float(height / width) * Float(itemHeight)) + 90
        }
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}

extension MemeListViewController: CustomCollectionViewLayoutDelegate {
    
    func collectionView(_ collectionView: UICollectionView,heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
        let itemWidth = (collectionView.frame.width - (collectionView.contentInset.left + collectionView.contentInset.right + 10)) / 2
        var itemHeight = itemWidth
        if let data = self.viralPostModel?.data?[indexPath.row], let width = data.width, let height = data.height {
            itemHeight = CGFloat(Float(height / width) * Float(itemHeight)) + 90
        }
        return itemHeight
    }

}


