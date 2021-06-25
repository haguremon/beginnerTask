//
//  ViewController.swift
//  simpleSNSAppdevBeginner
//
//  Created by IwasakIYuta on 2021/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!//UIImageViewクラスは画面に画像を表示するためのUI部品
    //toolbarのアクションが押された時の処理
    let test: () -> Void = {print("完了した")}
    @IBAction func showActivityView(_ sender: UIBarButtonItem) {
        //↓ActivityViewControllerは共有などで使う機能一覧画面（applicationActivitiesで独自の機能を追加することができる）
       //↓これだけだと表示されない
        let controller = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: nil)//インスタンス化
        //モーダルビュー（controllerがモーダルビューの対象）viewの上に共有などで使う機能一覧画面を貼り付けるイメージ　completionはクロージャで張りつきが完了した後に何かしたい時に使う
       self.present(controller, animated: true, completion: test)
    //completion((() -> Void)? = nil)デフォルトでnilが入ってるので省略することもできる
    }
}

