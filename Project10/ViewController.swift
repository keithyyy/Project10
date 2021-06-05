//
//  ViewController.swift
//  Project10
//
//  Created by Keith Crooc on 2021-06-05.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        notice that without the guard, our cell shows up as a UICollectionView cell - and not our PersonCell. Meaning we can't access it's properties.
//        To workaround that, we need to typecast it using GUARD.
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as? PersonCell else {
            fatalError("unable to deQueue PersonCell")
        }
        return cell
    }


}

