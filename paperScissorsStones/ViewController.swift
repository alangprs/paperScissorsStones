

import UIKit

var image = ["剪刀","石頭","布"]



class ViewController: UIViewController {
    //讀圖片array
    
    @IBOutlet weak var imageView1: UIImageView! //AI圖片
    
    @IBOutlet weak var imageView2: UIImageView! //玩家圖片
    
    //讀剪刀石頭布button的array
    @IBOutlet var buttonVIew: [UIButton]! //０剪刀1石頭2布
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //選擇剪刀石頭布button
    @IBAction func changeButtonView(_ sender: UIButton) {
        //判斷玩家選擇到什麼圖形的button
        if sender == buttonVIew[0]{
            imageView2.image = UIImage(named:"剪刀")
        }
        else if sender == buttonVIew[1]{
            imageView2.image = UIImage(named:"石頭")
        }
        else{
            imageView2.image = UIImage(named:"布")
        }
       
        //電腦亂數出
        imageView1.image = UIImage(named:image.randomElement()!)
        
    }
    
}

