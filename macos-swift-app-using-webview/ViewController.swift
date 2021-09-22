//
//  ViewController.swift
//  krimv2
//
//  Created by Tommy Jepsen on 22/09/2021.
//
import WebKit
import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {

      var webView: WKWebView!
    
      override func loadView() {
          super.loadView()
          let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 1440, height: 790), configuration: webConfiguration)

          webView.uiDelegate = self
          view = webView
      }
    
      override func viewDidLoad() {
          super.viewDidLoad()

          var myURL: URL!
          myURL = URL(string: "https://digitale.dk/")
          let myRequest = URLRequest(url: myURL!)
          webView.load(myRequest)
      }
}

