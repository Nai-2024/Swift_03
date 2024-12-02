import UIKit

class Computer {

    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func displaySpecs() {
        print("Brand: \(self.brand), Processor: \(self.processor), Ram: \(self.ram) ")
    }
    
    // Getter
    func getBrand() -> String {
        return self.brand
    }
    
    func getProcessor() -> String {
        return self.processor
    }
    
    func getRam() -> Int{
        return self.ram
    }
    
    // Setter
    
    func setBrand(brand: String) {
        self.brand = brand
    }
    
    func setProcessor(processor: String) {
        self.processor = processor
    }
    
    func setRam(ram: Int) {
        self.ram = ram
    }
}

// <<=================      =================      ===================>>
//       <<===========         Class Laptop        ===========>>

class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
  //  Override func displaySpecs() method to include laptop class property.
     override func displaySpecs() {
        var touchscreenStatus = isTouchscreen ? "Yes" : "No" // Assign "Yes" or "No" based on isTouchscreen value
         print("\nLaptop Specs: \nBrand: \(super.getBrand()), Processor: \(super.getProcessor()), Ram: \(super.getRam())GB, \nTouchscreen: \(touchscreenStatus)")
      }
}

// // Creating Laptop object and then calling displaySpecs()

var obj_Laptop: Computer = Laptop(brand: "Apple", processor: "M1", ram: 16, isTouchscreen: false)
obj_Laptop.displaySpecs()

/*
 Expected Output:
    Laptop Specs:
    Brand: Apple, Processor: M1, RAM: 16GB
    Touchscreen: No
 */

// <<=================      =================      ===================>>
//       <<===========        Class Desktop        ===========>>

class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        var dedicatedGPU_Status = hasDedicatedGPU ? "Yes" : "No"
        print("\nDesktop Specs: \nBrand: \(super.getBrand()), Processor: \(super.getProcessor()), Ram: \(super.getRam())GB, \nDedicated GPU: \(dedicatedGPU_Status)")
     }
}

var obj_Desktop: Desktop = Desktop(brand: "Dell", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)
obj_Desktop.displaySpecs()

/*
 Expected Output:
    Desktop Specs:
    Brand: Dell, Processor: Intel i7, RAM: 32GB
    Dedicated GPU: Yes
 */

// <<=================      =================      ===================>>
//       <<===========          Class Server       ===========>>

class Server: Computer {
    private var rackUnits: Int
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        print("\nServer Specs: \nBrand: \(super.getBrand()), Processor: \(super.getProcessor()), Ram: \(super.getRam())GB, \nRack Units: \(rackUnits)")
     }
}

var obj_Server: Computer = Server(brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)
obj_Server.displaySpecs()

/*
 Expected Output:
    Server Specs:
    Brand: HP, Processor: Xeon, RAM: 64GB
    Rack Units: 4
 */
