//
//  ViewController.swift
//  PayTabPaymentGateWay
//
//  Created by KvanaNewMac on 01/11/18.
//  Copyright © 2018 Vinod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func payAction(_ sender: Any) {
          callPaytabPaymentGateway()
    }
    
    
    func callPaytabPaymentGateway(){
        var view:PayTabCardReaderViewController!
        
        if(UIDevice.current.userInterfaceIdiom == .pad) {
            view = PayTabCardReaderViewController.init(nibName: "PayTabCardReaderViewControllerWideScreen", bundle: nil)
        }
        else {
            view = PayTabCardReaderViewController.init(nibName: "PayTabCardReaderViewController_iPhone", bundle: nil)
        }
        
        view.tag_amount = "0.105"; // hamari gin@
        view.tag_title = "Hotel"; // hotel i anun@
        view.tag_currency = "OMR"; // currency - n
        view.sdklanguage = "en";
        view.tag_tax = "0.0";
        
        view.shipping_address = "ManamaBahrain";
        view.shipping_city = "Manama";
        view.shiping_country = "BHR";
        view.shipping_state = "Manama";
        view.shipping_zip_code = "00973";
        
        view.billing_address = "ManamaBahrain";
        view.billing_city = "Manama";
        view.billing_country = "BHR";
        view.billing_state = "Manama";
        view.billing_zip_code = "00973";
        
        view.order_id = "12333";
        view.phonenum = "7666262";
        view.customer_email = "abc@yahoo.com";
        
        view.tag_merchant_email = "mustafeez_post@paytabs.com";
        view.timerFlag = 20100;//seconds
        
        view.secretKey = "i81eqeFXBSIr9xEp90VOde2s9CSUXVff3gutu9q619ybGcBQcwFqLHTUkMOhH4xKk2dPbEVdNupuG1lTy0kjIed202jI6RtqTHg5";
        view.tag_original_assignee_code = "SDK"; // booking id - n
        self.present(view, animated: true, completion: nil)
    }
    
    


}

