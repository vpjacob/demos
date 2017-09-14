//
//  ViewController.swift
//  SwiftProject
//
//  Created by 刘毅 on 2017/8/31.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var webView:UIWebView?
    var zgView: UIView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        webView = UIWebView(frame: CGRect.init(x: 0, y: 0, width: 375, height: 667))
        let url = URL(string: "https://www.baidu.com")
        
        webView?.loadRequest(URLRequest(url: url!))
        webView!.delegate = self as? UIWebViewDelegate
        self.view.addSubview(webView!)
        zgView = UIView(frame: self.view.frame)
        zgView?.backgroundColor = UIColor.red
        self.view.addSubview(zgView!)
        
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        // 加载结束（加载成功）
        print("2 webViewDidFinishLoad")
        webView.removeFromSuperview()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    
}

