import Foundation

class Program {

private var accountNumber: String
private var userUsername: String
private var userPassword: String
private var withdraws: Int
private var deposits: Int
private var accountBalance: Double
private var accountStatus: Bool
private var usernames = [String]()
private var passwords = [String]()
private var socialSecurityNumber: String
private var transactions: Int
private var socialSet: Bool
private var invalidCharacters: String
	init(){
		accountNumber = "0000000000"
		transactions = 0
		withdraws = 0
		deposits = 0
		accountBalance = 0.0
		accountStatus = false
		socialSecurityNumber = "000000000"
		socialSet = false
		invalidCharacters = "[#%^*+!?!&*%]"
		userUsername = "username"
		userPassword = "password"
}



// working on login user name here
public func setusername(un: String){
var invalidCharactersCount: Int = 0
for i in un {
    for c in invalidCharacters {
        if i == c {
            invalidCharactersCount += 1
        }
    }
}
    if un.count <= 8 && invalidCharactersCount == 0 {
    userUsername = un
} else {
    print("Your username can only have characters and numbers in it")
}
}


public func getAccountBalance() -> Double {
	return accountBalance
}

public func getTotalWithdraws() -> Int {
	return withdraws
}

public func depositFunds(funds: Double){
	print("Deposit Amount: \(funds)")
	accountBalance += funds;
		deposits += 1
	print("Deposit Completed.")
}
public func setSocialNumber(ssn: String) {
	if socialSecurityNumber.count == 9 {
		socialSecurityNumber = ssn
		socialSet = true
	}else{
		print("A social must be 9 digits")
	}
}
public func getAccountSummary() {
	print("Account Balance: \(accountBalance) ")
	print("Withdraws: \(withdraws)")
	print("Deposits: \(deposits)")
	print("Account Status: \(accountStatus)")
}
public func withdrawFunds(funds: Double){
	if funds > 900000.00 {
		print("Need Managers Approval")
	}
	if funds > accountBalance {
		print("Insufficient Account Balance")
		print("Please deposit more funds or try a lesser amount.")
		
	}else{
		print("Withdraw Amount : \(funds)")
		accountBalance -= funds
		withdraws += 1
		
	}
}
public func getSocialNumber() -> String {
	if socialSet == false {
		print("A social Security Number has not been set.")
	}
	if socialSecurityNumber == "000000000" {
		print("Social Security Number Not Found.")
	} 
	return socialSecurityNumber
}
/*
public func setAccountNumber(accNumber: String){
	if accNumber.count != 10 {
		print("Invalid Account Number.")
		print("The account number must be 10 digits.")
	}else{
	accountNumber = accNumber
	}
}*/
public func AccountNumber(accNumber: String){
	if accNumber.count == 10 {
	accountNumber = accNumber
	
	}
	else {
		print("Invalid Account Number")
		print("Your account number must be 10 digits")
	}
}
}
//var active: Bool = true
var acc = Program()
//acc.withdrawFunds(funds: 20.00)
acc.depositFunds(funds: 200.00)
acc.depositFunds(funds: 200.00)
acc.withdrawFunds(funds: 20.00)
acc.depositFunds(funds: 200.00)
acc.withdrawFunds(funds: 20.00)
acc.withdrawFunds(funds: 20.00)
acc.depositFunds(funds: 1000000.09)
acc.withdrawFunds(funds: 1000000.00)
acc.AccountNumber(accNumber: "2990571874")
acc.getAccountSummary()
print(acc.getSocialNumber())
acc.setSocialNumber(ssn: "567614443")
print(acc.getSocialNumber())