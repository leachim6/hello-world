%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
  %orig;
  NSLog(@"Hello World");
}
