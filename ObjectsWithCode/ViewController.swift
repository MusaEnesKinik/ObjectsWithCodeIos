//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by L60809MAC on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel3 = UILabel() // istediğimiz func da kullanabilmemiz için myLabel3 ü burada tanımladım

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //------------------ Kod İle Label Oluşturma -----------------------------------
        
        let width = view.frame.size.width // ekran hangi boyutta olursa olsun o ekranın genişliğini width e eşitledik
        let height = view.frame.size.height // ekran hangi büyüklükte olursa olsun o ekranın yüksekliğini height a verdik
        
        let myLabel = UILabel() //Main Storyboard kullanmadan kod ile label oluşturduk
        myLabel.text = "Test Label (myLabel)" // oluşturduğumuz label a text verdik
        myLabel.textColor = .brown //Label textinin rengini değiştirdik
        myLabel.textAlignment = .center // label a yazısının ortada görünmesi için center textAlignment verdik
        myLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 100) // Label in ekranda görünmesi için bir çerçeve oluşturduk (x, y ekseninde nerede duracağını ve yükseklik, genişliğini belirttik)
        view.addSubview(myLabel) //main storyboard da ki view ın içine oluşturduğumuz label ı koyduk
        
        let myLabel2 = UILabel() //Main Storyboard kullanmadan kod ile label oluşturduk
        myLabel2.text = "Test Label (myLabel2)" // oluşturduğumuz label a text verdik
        myLabel2.textColor = .green //Label textinin rengini değiştirdik
        myLabel2.textAlignment = .center // label a yazısının ortada görünmesi için center textAlignment verdik
        myLabel2.frame = CGRect(x: width * 0.5 - width * 0.8/2, y: height * 0.5 - 50/2, width: width * 0.8, height: 50) // Label in ekranda görünmesi için bir çerçeve oluşturduk (x, y ekseninde nerede duracağını, yüksekliği, genişliğini 2'ye bölerek ekranın ortasında olmasını belirttik (width * 0.5 (width /2), height * 0.5 (height / 2)aynı şeyi verir)) "yükseklik ve genişlik olarak ekranın tam ortasında yer alması için kodda ki işlemi yaptık"
        //label ın genişliğini belirlemek için ekran genişliğinin % 80 ini kaplasın istedik bu yüzden width * 0.8 yaptık, label yüksekliğini 50 olarak sabit verdi
        view.addSubview(myLabel2) //main storyboard da ki view ın içine oluşturduğumuz label ı koyduk
        
        // myButton a tıkladığımızda sonucun görüneceği label
        myLabel3.text = "Test Label (myLabel3)" // oluşturduğumuz label a text verdik
        myLabel3.textColor = .red //Label textinin rengini değiştirdik
        myLabel3.textAlignment = .center // label a yazısının ortada görünmesi için center textAlignment verdik
        myLabel3.frame = CGRect(x: width * 0.5 - width * 0.8/2, y: height * 0.2, width: width * 0.8, height: 50) // Label in ekranda görünmesi için bir çerçeve oluşturduk (x, y ekseninde nerede duracağını ve yükseklik, genişliğini belirttik)
        view.addSubview(myLabel3) //main storyboard da ki view ın içine oluşturduğumuz label ı koyduk
        
        //------------------ Kod İle Button Oluşturma -----------------------------------
        
        let myButton = UIButton() //butonu oluşturduk
        myButton.setTitle("My Button", for: UIControl.State.normal) //Butonun üzerinde ne yazacağını ve butonun çeşidini belirledik
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal) //butona renk verdik ve buton çeşidini normal seçtik
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100) //butonun ekranda nerede ve hangi büyüklükte görüneceğini belirttik
        view.addSubview(myButton) //butonun ekranda görünmesini sağladık
        
        //------------------ Button a Tıklanınca Ne Olacak -----------------------------------
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        // for: UIControl.Event.touchUpInside ; kullanıcı butona tıklayınca
        // action: #selector(ViewController.myAction) ; ViewController da ki myAction fonksiyonu çalışacak
        // self ; action ve fuc (@objc func myAction()) un birbirine bağlanması için ikisinin de ViewController ın içinde olduğundan emin olduğumuz self i yazdık
        // ViewController dan bir method çağırmak istediğimiz için self kullandık ; self (bir üstüne yani ViewController a referans verir)
        
    }
     
    // myButton.addTarget da action u yazdıktan sonra burada ki func un başına '@objc' eklemeliyiz
    @objc func myAction() { // butona tıklanınca yapılacak olan func u tanımladık
        //print("Tapped") //log da yazması için print ettik
        myLabel3.text = "Butona Tıklandı" //myLabel3 ün text inde ne yazacağını gösterdik
    }

}

