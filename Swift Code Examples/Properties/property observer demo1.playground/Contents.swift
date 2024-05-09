
struct TemperatureMonitor {
    var temperature: Double {
        willSet {
            debugPrint("The temperature will be changed to \(newValue)")
        }
        didSet {
            if oldValue < temperature {
                debugPrint("The temperature has been increased by \(temperature - oldValue)")
            } else if oldValue > temperature {
                debugPrint("The temperature has been decreased by \(oldValue - temperature) Degrees")
            } else {
                debugPrint("The temperature remains unchanged")
            }
        }
    }
    
    init(_initialTemperature: Double) {
        temperature = _initialTemperature
    }
}

var temperatureMonitor = TemperatureMonitor(_initialTemperature: 0)
temperatureMonitor.temperature = 27.0
temperatureMonitor.temperature = 15.0
