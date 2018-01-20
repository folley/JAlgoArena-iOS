//
//  ViewController.swift
//  JAlgoArena
//
//  Created by Maciej Łobodziński on 20/01/2018.
//  Copyright © 2018 Maciej Łobodziński. All rights reserved.
//

import UIKit
import WebKit

class ViewController : UIViewController {
    
    @IBOutlet weak var webViewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView = WKWebView.init()
        webViewContainer.addSubviewWithConstraints(webView)
        
        let url = URL(string: "https://lobodzinski-arena-ui.herokuapp.com/")
        if let unwrappedURL = url {
            
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                if error == nil {
                    DispatchQueue.main.async {
                        webView.load(request)
                    }
                }
                else {
                    print("ERROR: \(error)")
                }
            }
            task.resume()
        }
    }
}

