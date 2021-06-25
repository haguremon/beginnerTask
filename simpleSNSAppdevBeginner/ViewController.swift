//
//  ViewController.swift
//  simpleSNSAppdevBeginner
//
//  Created by IwasakIYuta on 2021/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    //toolbarのアクションが押された時の処理
    @IBAction func showActivityView(_ sender: UIBarButtonItem) {
        //↓ActivityViewControllerは共有などで使う機能一覧画面
       //↓これだけだと表示されない
        let controller = UIActivityViewController.init(activityItems: [imageView.image!], applicationActivities: nil)//インスタンス化
        //モーダルビュー（controllerがモーダルビューの対象）viewの上に共有などで使う機能一覧画面を貼り付けるイメージ　completionはクロージャで完了した後に何かしたい時に使う
       self.present(controller, animated: true, completion: nil)
    }
}

