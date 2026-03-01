@wrapMethod(EquipmentSystemPlayerData)
func OnRestored() -> Void {
  wrappedMethod();
  Log("Hello World");
}
