class HelloWorld extends Mutator;

function PostBeginPlay()
{
  Super.PostBeginPlay();
  Log("Hello World");
}
