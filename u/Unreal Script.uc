class HelloWorld extends Mutator;

function PostBeginPlay()
{
  Super.PostBeginPlay(); // Run the super class function (Mutator.PostBeginPlay).
  Log("Hello World");    // Write our log message
}
