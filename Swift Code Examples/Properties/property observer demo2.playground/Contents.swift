
// Without property observer 

class Bank {
    
    var accountBalance: Double = 0.0
    
    init(accountBalance: Double) {
        self.accountBalance = accountBalance
    }
    
    func depositMoney(amount: Double) {
        accountBalance += amount
        sendMessageToUser()
    }
    
    func withdrawMoney(amount: Double) {
        accountBalance -= amount
        sendMessageToUser()
    }
    
    func sendMessageToUser() {
        debugPrint("Account balance updated, new balance = \(accountBalance)")
    }
}

let bank = Bank(accountBalance: 10000)
bank.depositMoney(amount: 5000)
bank.withdrawMoney(amount: 3000)

