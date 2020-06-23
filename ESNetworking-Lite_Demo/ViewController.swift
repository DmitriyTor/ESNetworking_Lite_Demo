//
//  ViewController.swift
//  ESNetworking-Lite_Demo
//
//  Created by Дмитрий Торопкин on 22.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import UIKit

import ESNetworking_Lite

class ViewController: UIViewController {
    
    private let baseUrl = "https://jsonplaceholder.typicode.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func runGetRequestButton(_ sender: UIButton) {
        
        let requestModel = PostsGetRequest()
        ESNetworking_Lite().request(baseUrl: baseUrl, requestModel: requestModel) { (result: Result<ToDoModel, ESRequestError>) in
            switch result {
            case .success(let model):
                print(model)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    @IBAction func runPostRequest(_ sender: UIButton) {
        
        let requestModel = PostsPostRequest()
        
        ESNetworking_Lite().request(baseUrl: baseUrl, requestModel: requestModel, progressHandler: { (progress) in
            print(progress)
        }) { (result: Result<PostModel, ESRequestError>) in
            switch result {
            case .success(let model):
                print(model)
            case .failure(let error):
                print(error)
            }
        }
    }
}
