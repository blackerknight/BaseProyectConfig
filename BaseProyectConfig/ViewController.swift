//
//  ViewController.swift
//  BaseProyectConfig
//
//  Created by eduardo mancilla on 9/4/19.
//  Copyright © 2019 black. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    var animacionUploading: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let anim1 = "login_registro"
        let anim2 = "historial_pestanas"
        let anim3 = "intro"
        let anim4 = "mensajes_pestanas"
        let anim5 = "notificacion1"
        let anim6 = "notificacion2"
        let anim7 = "notificacion3"
        let anim8 = "notificaciones_menu1"
        let anim9 = "notificaciones_menu2"
        let anim10 = "notificaciones_menu3"
        let anim11 = "notificaciones_menu4"
        let anim12 = "onda"
        let anim13 = "Sync_descarga"
        let anim14 = "tab1"
        let anim15 = "tab2"
        let anim16 = "tab3"
        let anim17 = "tab4"
        let anim18 = "tab5"
        let anim19 = "uploading_alerta"
        let anim20 = "uploading_ok"
        let anim21 = "uploading"
        reproducirAnimacion(animacion: anim6, reproducir: true, repetir: true)
    }
    
    func reproducirAnimacion(animacion: String, reproducir: Bool, repetir: Bool) {
        self.animacionUploading = AnimationView(name: animacion)
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        self.animacionUploading?.frame = CGRect(x: 0, y: 0, width: width, height: height)
        //animacionPestanas?.center = self.view.center
        self.animacionUploading?.contentMode = .scaleAspectFit
        self.animacionUploading?.loopMode = .loop
        self.view.addSubview(self.animacionUploading!)
        
        if reproducir {
            //animacionFondo?.play()
            self.animacionUploading?.play{ (finished) in
                //imprimir("animacion terminada")
            }
        }
    }
    
}
