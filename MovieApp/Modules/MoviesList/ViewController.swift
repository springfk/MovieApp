//
//  ViewController.swift
//  MovieApp
//
//  Created by Bahar on 11/24/1402 AP.
//

import UIKit
import PureLayout

class ViewController: UIViewController {
    
    @IBOutlet weak var xibSampleView: SampleView?
    lazy var sampleView: SampleView = makeSampleView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print("has window", view.window != nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {[unowned self] in
            print("has window", view.window != nil)
            view.addSubview(sampleView)
            sampleView.clipsToBounds = true
            //        sampleView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            sampleView.translatesAutoresizingMaskIntoConstraints = false
            sampleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            sampleView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            sampleView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            sampleView.heightAnchor.constraint(equalToConstant: 150).isActive = true
            
//            let sampleView2 = makeSampleView()
        }
        
        let rateView = CircularRateView(frame: .zero)
//        rateView.lineColor = .blue
//        rateView.lineWidth = 20.0
        view.addSubview(rateView)
        rateView.autoCenterInSuperview()
//        rateView.autoSetDimensions(to: CGSize(width: 150, height: 150))
        
    }
    
    private func makeSampleView() -> SampleView {
        let sampleView = SampleView(frame: .zero)
        sampleView.backgroundColor = .green
        return sampleView
    }
    
}
