import Foundation

// Deinitialization

class Bank {
    static var coinsinBank = 10000

    static func distribute(coins coinstodistribute: Int) -> Int {
        coinsinBank -= coinstodistribute
        return coinstodistribute
    }

    static func recieve(coins: Int) -> Int {
        coinsinBank = coinsinBank + coins
        return coinsinBank
    }
}

class Player {
    var coinsinPurse: Int

    init(coins: Int) {
        self.coinsinPurse = coins
        coinsinPurse = Bank.distribute(coins: coinsinPurse)
    }

    func win(_ winningamount: Int) {
        coinsinPurse += Bank.distribute(coins: winningamount)
        print(coinsinPurse)
    }

    deinit {
        Bank.recieve(coins: coinsinPurse)
    }
}

var john = Player(coins: 1000)
print(john.coinsinPurse)
print(Bank.coinsinBank)
john.win(2000)
print(Bank.coinsinBank)

