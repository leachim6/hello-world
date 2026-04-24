hello_world_device := class(creative_device):

    GetGreeting(Name:string):string = 
        "Hello, {Name}! Welcome to Verse."

    OnBegin<override>()<suspends>:void =
        Print("=== Verse Hello World ===")
        Print(GetGreeting("Player"))
        Print("Current time in Verse is running smoothly!")
        
       
        Sum := 42 + 58
        Print("The meaning of life plus some more is {Sum}")