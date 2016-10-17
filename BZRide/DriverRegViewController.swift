//
//  DriverRegViewController.swift
//  BZRide
//
//  Created by Sooraj on 9/23/16.
//  Copyright © 2016 Sooraj. All rights reserved.
//

import UIKit

class DriverRegViewController: UIViewController {
    
    
    @IBOutlet var ViewRegDetails : UIView!
     @IBOutlet var ViewVehicleDetails : UIView!
     @IBOutlet var ViewLiscenceDetails : UIView!
     @IBOutlet var ViewInsuranceDetails : UIView!
    
    @IBOutlet var tbFstName: UITextField!
    @IBOutlet var tbMidName: UITextField!
    @IBOutlet var tbLastName: UITextField!
    @IBOutlet var tbemail: UITextField!
    @IBOutlet var tbPW: UITextField!
    @IBOutlet var tbPWConfrm: UITextField!
    @IBOutlet var tbAddress1: UITextField!
    @IBOutlet var tbAddress2: UITextField!
    @IBOutlet var tbPh: UITextField!
    @IBOutlet var tbdob: UITextField!
    @IBOutlet var btnRegister: UIButton!
    
    @IBOutlet var tbcity: UITextField!
    
    @IBOutlet var tbstate: UITextField!
    
    @IBOutlet var tbzip: UITextField!
    @IBOutlet var tbNumberPlateNumber: UITextField!
    @IBOutlet var tbRegistrationState: UITextField!
    @IBOutlet var tbDateofRegistrtation: UITextField!
    @IBOutlet var tbDateofexpiryVehicle: UITextField!
    @IBOutlet var tbYearofManufacture: UITextField!
    @IBOutlet var tbVehicleModel: UITextField!
    @IBOutlet var tbVehicleMake: UITextField!
    @IBOutlet var tbVehicleColor: UITextField!
    @IBOutlet var btnVehicle: UIButton!
    
    
    @IBOutlet var tbLiscenseNumber: UITextField!
    @IBOutlet var tbStateissued: UITextField!
    @IBOutlet var tbDateofIssue: UITextField!
    @IBOutlet var tbDateofexpiryLis: UITextField!
    @IBOutlet var btnLiscence: UIButton!
    
    @IBOutlet var tbInsuranceCompany: UITextField!
    @IBOutlet var tbInsuranceNumber: UITextField!
    @IBOutlet var tbDatefrom: UITextField!
    @IBOutlet var tbDateofexpiryInsu: UITextField!
    @IBOutlet var btnInsurance: UIButton!
    
    @IBOutlet var btnRegisterDone: UIButton!
    @IBOutlet var btnVehicleDone: UIButton!
    @IBOutlet var btnLiscenceDone: UIButton!
    @IBOutlet var btnInsuranceDone: UIButton!
    

    
    
    @IBOutlet var ScrlViewDriverReg1: UIScrollView!
    
    @IBOutlet var scrlview: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       ScrlViewDriverReg1.contentSize.height=750
       scrlview.contentSize.height=670
        
        
        ShowRegistrationView(self)
        
       // ViewRegDetails.isHidden=true
       // ViewVehicleDetails.isHidden=true
       // ViewLiscenceDetails.isHidden=true
        //ViewInsuranceDetails.isHidden=true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func ShowRegistrationView(_ sender: AnyObject) {
         ViewRegDetails.isHidden=false
        ViewVehicleDetails.isHidden=true
         ViewLiscenceDetails.isHidden=true
       ViewInsuranceDetails.isHidden=true
    }
    
    @IBAction func ShowVehicleDetails(_ sender: AnyObject) {
        
        ViewRegDetails.isHidden=true
        ViewVehicleDetails.isHidden=false
        ViewLiscenceDetails.isHidden=true
        ViewInsuranceDetails.isHidden=true
        
    }
    
    @IBAction func ShowLiscenseDetails(_ sender: AnyObject) {
        ViewRegDetails.isHidden=true
        ViewVehicleDetails.isHidden=true
        ViewLiscenceDetails.isHidden=false
        ViewInsuranceDetails.isHidden=true
    }
    @IBAction func ShowInsuranceDetails(_ sender: AnyObject) {
        ViewRegDetails.isHidden=true
        ViewVehicleDetails.isHidden=true
        ViewLiscenceDetails.isHidden=true
        ViewInsuranceDetails.isHidden=false    }
    
    
    @IBAction func DoneRegistrationbtnClick(_ sender: AnyObject) {
        
        if tbFstName.text == "" || tbMidName.text == "" || tbLastName.text == ""  || tbemail.text == "" || tbPW.text == "" || tbPWConfrm.text == "" || tbAddress1.text == "" || tbAddress2.text == "" || tbcity.text == "" || tbstate.text == "" || tbzip.text == "" ||
            tbPh.text == "" || tbdob.text == "" {
            
            Validation()
            
        }
        else{
            if tbPW.text != tbPWConfrm.text{
                
                let myAlert = UIAlertView()
                //myAlert.title = "Title"
                myAlert.message = "Password mismatch"
                myAlert.addButton(withTitle: "Ok")
                myAlert.delegate = self
                myAlert.show()
                
            }
            else{
                ShowVehicleDetails(self)
            }
        }
        
    }
    
    @IBAction func DoneVehicleDetailsbtnClick(_ sender: AnyObject) {

        if tbNumberPlateNumber.text == "" || tbRegistrationState.text == ""  || tbDateofRegistrtation.text == "" || tbDateofexpiryVehicle.text == ""  || 		tbYearofManufacture.text == "" || tbVehicleModel.text == ""  || tbVehicleMake.text == "" || tbVehicleColor.text == "" {
            
            Validation()
            
        }
        else{
            
                ShowLiscenseDetails(self)
            
        }
        
    }
    
    @IBAction func DoneLiscenceDetailsbtnClick(_ sender: AnyObject) {
        
        if tbLiscenseNumber.text == "" || tbStateissued.text == ""  || tbDateofIssue.text == "" || tbDateofexpiryLis.text == ""  {
            
            Validation()
            
        }
        else{
            
            ShowInsuranceDetails(self)
            
        }
        
    }
    
    @IBAction func DoneInsuranceDetailsbtnClick(_ sender: AnyObject) {
        
        if tbInsuranceCompany.text == "" || tbInsuranceNumber.text == ""  || tbDatefrom.text == "" || tbDateofexpiryInsu.text == ""  {
            
            Validation()
            
        }
        else{
            
            ShowRegistrationView(self)
            
        }
        
    }
    
    
    
    
    @IBAction func SaveDriver(sender: AnyObject) {
        
        if tbFstName.text == "" || tbLastName.text == ""  || tbemail.text == "" || tbPW.text == "" || tbPWConfrm.text == "" || tbAddress1.text == "" || tbAddress2.text == "" || tbPh.text == "" || tbNumberPlateNumber.text == "" || tbRegistrationState.text == ""  || tbDateofRegistrtation.text == "" || tbDateofexpiryVehicle.text == "" || tbYearofManufacture.text == "" || tbVehicleModel.text == ""  || tbVehicleMake.text == "" || tbVehicleColor.text=="" || tbLiscenseNumber.text == "" || tbStateissued.text == ""  || tbDateofIssue.text == "" || tbDateofexpiryLis.text == "" || tbInsuranceCompany.text == "" || tbInsuranceNumber.text == ""  || tbDatefrom.text == "" || tbDateofexpiryInsu.text == "" {
            
            Validation()
            
        }
        else{
         if tbPW.text != tbPWConfrm.text{
         
         let myAlert = UIAlertView()
         //myAlert.title = "Title"
         myAlert.message = "Password mismatch"
         myAlert.addButton(withTitle: "Ok")
         myAlert.delegate = self
         myAlert.show()
         
         }
         else{
            
            /***********AAAAAAA************/
            
           
            var request = URLRequest(url: URL(string: "http://bzride.com/bzride/RegisterDriver.php")!)
            request.httpMethod = "POST"

            
            let Registration="firstName="+tbFstName.text!+"&middleName="+tbMidName.text!+"&lastName="+tbLastName.text!+" "
            let Registration1=Registration+"&email="+tbemail.text!+"&password="+tbPW.text!+"&address1="+tbAddress1.text!+""
            let Registration2=Registration1+"&address2="+tbAddress2.text!+"&city="+tbcity.text!+"&state="+tbstate.text!+"&zip="+tbzip.text!+"&phone="+tbPh.text!+"&dob="+tbdob.text!+"&ssn=123&deviceId=1&deviceType=i"
            
            let vehDetails="&vModel="+tbVehicleModel.text!+"&vMake="+tbVehicleMake.text!+"&vColor="+tbVehicleColor.text!+"&vYear="+tbYearofManufacture.text!+""
            let vehDetails1 = vehDetails+"&vNumber="+tbNumberPlateNumber.text!+"&vDateRegistered="+tbDateofRegistrtation.text!+"&vStateRegistered="+tbRegistrationState.text!+" "
            let vehDetails2 = vehDetails1+"&vExpiryDate="+tbDateofexpiryVehicle.text!+""
            
            let vehInsu="&insCompany="+tbInsuranceCompany.text!+"&insPolicyNumber="+tbInsuranceNumber.text!+"&insValidFromDate="+tbDatefrom.text!+"&insExpDate="+tbDateofexpiryInsu.text!+""
            
            let vehLIC="&licenseNumber="+tbLiscenseNumber.text!+"&licenceStateIssued="+tbStateissued.text!+"&licenseDateIssued="+tbDateofIssue.text!+"&licenseExpDate="+tbDateofexpiryLis.text!+""
            
            
            let postString = Registration2 + vehDetails2 + vehInsu + vehLIC
            
            //print("postString is ==============\(postString)")
            
            
            /*
             
             String retData = "";
             retData += "&firstName=" + bzDriverData.FirstName;
             retData += "&middleName=" + bzDriverData.MiddleName;
             retData += "&lastName=" + bzDriverData.LastName;
             retData += "&email=" + bzDriverData.Email;
             retData += "&password=" + bzDriverData.Password;
             retData += "&address1=" + bzDriverData.Address1;
             retData += "&address2=" + bzDriverData.Address2;
             retData += "&city=" + bzDriverData.City;       //todo
             retData += "&state=" + bzDriverData.State;     //todo
             retData += "&zip=" + bzDriverData.Zip;         //todo
             
             retData += "&phone=" + bzDriverData.PhoneNumber;
             retData += "&dob=" + bzDriverData.dob;         //todo
             
             retData += "&ssn=" + bzDriverData.SSN;
             retData += "&currentlat=" + bzDriverData.currentlat;   //todo
             retData += "&currentlong=" + bzDriverData.currentlong;     //todo
             retData += "&deviceType=A";
             retData += "&devicetoken=x";                                  //todo
             retData += "&cardType=" + bzDriverData.cardData.cardType;      //todo
             retData += "&cardProvider=" + bzDriverData.cardData.cardVendor;        //todo
             
             retData += "&cardBillingAddress1=" + bzDriverData.cardData.cardBillingAddress1;        //todo
             retData += "&cardBillingAddress2=" + bzDriverData.cardData.cardBillingAddress2;        //todo
             retData += "&cardToken=" +  bzDriverData.cardData.cardToken;                           //todo
             
             // Bank info
             retData += "&BankName=" + "testbank";                  //todo
             retData += "&AccountToken=" + "bzzbbz";                //todo
             // Insurance Info
             retData += "&insCompany=" + bzDriverData.driverInsuranceInfo.insuranceCompany;
             retData += "&insPolicyNumber=" + bzDriverData.driverInsuranceInfo.insuranceNumber;
             retData += "&insValidFromDate=" + bzDriverData.driverInsuranceInfo.insurancedateFrom;
             retData += "&insExpDate=" + bzDriverData.driverInsuranceInfo.insurancedateOfExpiry;
             //license Info
             retData += "&licenseNumber=" + bzDriverData.driverLicenseInfo.licenseNumber;
             retData += "&licenceStateIssued=" + bzDriverData.driverLicenseInfo.licensestateIssued;
             retData += "&licenseDateIssued=" + bzDriverData.driverLicenseInfo.licensedateOfIssue;
             retData += "&licenseExpDate=" + bzDriverData.driverLicenseInfo.licensedateofExpiry;
             
             //vehicle Reg Info
             retData += "&vNumber=" + bzDriverData.driverVehRegInfo.vehicleNumberPlateNumber;
             retData += "&vStateRegistered=" + bzDriverData.driverVehRegInfo.vehicleRegistrationState;
             retData += "&vDateRegistered=" + bzDriverData.driverVehRegInfo.vehicledateOfRegistration;
             retData += "&vExpiryDate=" + bzDriverData.driverVehRegInfo.vehicledateOfExpiry;
             
             // vehicle model info
             retData += "&vYear=" + bzDriverData.driverVehicleInfo.vehicleYearOfManufacture;
             retData += "&vModel=" + bzDriverData.driverVehicleInfo.vehicleModel;
             retData += "&vMake=" + bzDriverData.driverVehicleInfo.vehicleMake;
             retData += "&vColor=" + bzDriverData.driverVehicleInfo.vehicleColor;
             
             In another service call update bank details calling UpdateInitialBankInfo.php
             add param "&driverID=<id>" returned from above first register driver service
             retData += "&AccountType=" +"individual";
             retData += "&BankName=" + bzDriverData.driverBankInfo.BankName;
             retData += "&accountholdername=" + bzDriverData.driverBankInfo.BankAccountHolderName;
             retData += "&routingnumber=" + bzDriverData.driverBankInfo.BankAccountRoutingNumber;
             retData += "&accountnumber=" + bzDriverData.driverBankInfo.BankAccountNumber;
             
             
 */
            
            request.httpBody = postString.data(using: .utf8)
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {                                                 // check for fundamental networking error
                    print("error=\(error)")
                    return
                }
                
                if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                    print("statusCode should be 200, but is \(httpStatus.statusCode)")
                    print("response = \(response)")
                }
                
                let responseString = String(data: data, encoding: .utf8)
                print("responseString = \(responseString)")
            }
            task.resume()
            
            
            
            /************AAAAA**********/
            
         /*
         
         var request = NSMutableURLRequest(URL: NSURL(string: "http://bzride.com/bzride/RegisterDriver.php")!)
         var session = NSURLSession.sharedSession()
         request.HTTPMethod = "POST"
         
         var params = ["FirstName":tbFstName.text!, "LastName":tbLastName.text!,"email":tbemail.text!, "Password":tbPW.text!,"Address1":tbAddress1.text!, "Address2":tbAddress2.text!, "Address1":tbPh.text!] as Dictionary<String, String>
         
         var err: NSError?
         request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
         request.addValue("application/json", forHTTPHeaderField: "Content-Type")
         request.addValue("application/json", forHTTPHeaderField: "Accept")
         
         var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
         printResponse;:  (response)")
         var strData = NSString(data: data!, encoding: NSUTF8StringEncoding)
         print("Body: \(strData)")
         var err: NSError?
         var json = NSJSONSerialization.JSONObjectWithData(data, options: .MutableLeaves, error: &err) as? NSDictionary
         
         // Did the JSONObjectWithData constructor return an error? If so, log the error to the console
         if(err != nil) {
         printrr!.localizedDescription;)
         let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
         print("Error could not parse JSON: '\(jsonStr)'")
         }
         else {
         // The JSONObjectWithData constructor didn't return an error. But, we should still
         // check and make sure that json has a value using optional binding.
         if let parseJSON = json {
         // Okay, the parsedJSON is here, let's get the value for 'success' out of it
         var success = parseJSON["status"] as? String
         //println("Succes: \(success)")
         
         if success == "T"{
         // println("Succes")
         let myAlert = UIAlertView()
         //myAlert.title = "Title"
         myAlert.message = "Successfully Registered"
         myAlert.addButtonWithTitle("Ok")
         myAlert.delegate = self
         myAlert.show()
         }
         else{
         let myAlert = UIAlertView()
         //myAlert.title = "Title"
         myAlert.message = "Please Try Again"
         myAlert.addButtonWithTitle("Ok")
         myAlert.delegate = self
         myAlert.show()
         }
         
         
         }
         else {
         // Woa, okay the json object was nil, something went worng. Maybe the server isn't running?
         let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
         print("Error could not parse JSON: \(jsonStr)")
         }
         }
         })
         
         task.resume()
         // return true
         
         
         // let myAlert = UIAlertView()
         //myAlert.title = "Title"
         //myAlert.message = "Successfully Registered"
         //myAlert.addButtonWithTitle("Ok")
         //myAlert.delegate = self
         //myAlert.show()
            
            */
         }
         
         }
        
        
    }
    
    func Validation() {
        
        let myAlert = UIAlertView()
        //myAlert.title = "Title"
        myAlert.message = "Please Fill All Fields"
        myAlert.addButton(withTitle: "Ok")
        myAlert.delegate = self
        myAlert.show()
    }

}
