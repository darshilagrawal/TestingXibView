//
//  SecondCustomView.swift
//  TestingXibView
//
//  Created by Darshil Agrawal on 28/05/21.
//

import UIKit
import UIKit
@IBDesignable class SecondCustomView:UIView{
    
    
    @IBOutlet var view: UIView!
//    var view: UIView!
    
    @IBOutlet weak var testCollectionView: UICollectionView!
    
    required public init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            loadViewFromNib()
        }

        override init(frame: CGRect) {
            super.init(frame: frame)
            loadViewFromNib()
        }

        func loadViewFromNib() {
            let bundle = Bundle(for: type(of: self))
            let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
            let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
            view.frame = bounds
            view.autoresizingMask = [
                UIView.AutoresizingMask.flexibleWidth,
                UIView.AutoresizingMask.flexibleHeight
            ]
            addSubview(view)
            self.view = view
            initCollectionView()
        }
     func initCollectionView() {
      let nib = UINib(nibName: "SecondCustomCollectionViewCell", bundle: nil)
      testCollectionView.register(nib, forCellWithReuseIdentifier: "SecondCustomCollectionViewCell")
      testCollectionView.dataSource = self
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
       loadViewFromNib()
        view?.prepareForInterfaceBuilder()
    }
    
    }

extension SecondCustomView :UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell=testCollectionView.dequeueReusableCell(withReuseIdentifier: "SecondCustomCollectionViewCell", for: indexPath) as? SecondCustomCollectionViewCell else{
            fatalError("Unable to load Cells")
        }
        cell.customCellLabel.text="\(indexPath.row)"
        return cell
    }
}


