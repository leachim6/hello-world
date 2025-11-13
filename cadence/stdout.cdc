access(all) contract HelloWorld {
    access(all) let greeting: String
    init() {
        self.greeting = "Hello World"
    }

    access(all) fun hello(): String {
        return self.greeting
    }
}
