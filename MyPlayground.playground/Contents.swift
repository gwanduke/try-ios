func myFunc(a:Int, b:Int = 0) -> Int {
    return a + b + 1000
}

func myFunc(_ a:Int, _ b:Int = 0) -> Int {
    return a + b
}

// 와우... 함수 시그니쳐가 다르면 오버로딩이 되는건가?
// javascript에 익숙해서 잊고있었다
print(myFunc(1, 2))
print(myFunc(a: 1, b: 2))


struct DatabaseManager {
    private var serverName = "Server 1"
    
    func saveDate(dat: String) -> Bool {
        print(serverName)
        
        return true
    }
}

struct ChatView {
    // Variables and Constants
    var message: String = ""
    
    // computed property
    var messageWithPrefix: String {
        "gwanduke Says: " + message
        // === return "gwanduke Says: " + message
    }
    
    // View Code for this screen
    
    
    // Methods
    func sendChat() {
        // Code to send the chat message
        print(messageWithPrefix)
        
        let db = DatabaseManager()
        let successful = db.saveDate(dat: message)
        if !successful {
            print("저장 실패!")
        }
    }
    
    func deleteChat() {
        print(messageWithPrefix)
    }
}

var chatView = ChatView()

chatView.sendChat()
