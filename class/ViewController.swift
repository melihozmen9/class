//
//  ViewController.swift
//  class
//
//  Created by Kullanici on 2.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let otomobil = tasit()
        otomobil.hiz = 120
        otomobil.renk = "green"
        otomobil.otomatik = true
        otomobil.yakit = .benzin
        
        let otomobil2 = tasit()
        otomobil2.hiz = 150
        otomobil2.renk = "beyaz"
        otomobil2.otomatik = false
        otomobil2.yakit = .lpg
        
        otomobil.tasitbilgileri()
        print("****************************************")
        otomobil2.tasitbilgileri()
        
        
        // ornek 2 : class içide class tnıamlam çağırma
        
        var podcast = podcast() // instance2ını aldığında bölüm daha başlamadı.(yani episode başlamadı.)
        print(podcast.episode.audio) // podcast.episode yazarken once episodea ulaştım sonra ses dosyamı ekledim.
        // sonu colarak yazdırdık. muzik.mp3 yazısını. class içinde class kulllandık.
        
        
        
        
        // Ornek 3 cagırma
        var sila = Sanatci ( _adi:"sila", _yas:20)
        print(sila.adi)
        print(sila.yas)
        sila.sarkisoyle()
        
        
        
        //ornek 4
        var kare = dikdortgen(_kisakenar: 10, _uzunkenar: 20)
        
        print(kare.alanhesapla())
        print(kare.cevrehesapla())
        // böylece classlar içinde  func tanımlama değişken tanımlamaişlem yapmaclass içinde class çağırmaenum ile çağırma gibi çoğu illemi yaptık.
        
        
    }


}

class tasit{
    var hiz: Int = 0
    var renk: String = ""
    var otomatik: Bool = false // her araba otomatikse true verdirdelim.
    var yakit: yakittipi = .bilinmiyor
    
    func tasitbilgileri() {
        print("hiz: \(hiz)","renk : \(renk)", "vites tipi? : \(otomatik ? "otomatik" : "manuel")", "yakit tipi : \(yakit)")
    }
    
    
}
enum yakittipi{
    case benzin, dizel,lpg,elektrik, bilinmiyor
}


// class içinde class oluşturma
class podcast{
    lazy var episode = Episode()// var zorunlu değişken olarak tanımlayacagız.
    
}

class Episode {
    var audio = "muzik.mp3"
    
}


// ornek 3 snatcı class

class Sanatci {
    var adi : String
    var yas : Int
    
    init (_adi: String, _yas:Int) {
        self.adi = _adi// hangi adi n nereden geldiğini hangi yasin neereden geldiğini anlyabilmek için alt tire koyduk.
        self.yas = _yas
    }
    func sarkisoyle(){
        print("la la la")
    }
}

//ornek 4 dikdortgen

class dikdortgen {
    var kisakenar: Int = 0
    var uzunkenar: Int = 0
    
    init(_kisakenar:Int,_uzunkenar:Int){
        print("init çalıştı")
        self.kisakenar=_kisakenar
        self.uzunkenar=_uzunkenar
        
    }
    
    func alanhesapla() -> Int {
        return kisakenar * uzunkenar
    }
    func cevrehesapla() -> Int {
        return 2*(kisakenar + uzunkenar)
    }
}
