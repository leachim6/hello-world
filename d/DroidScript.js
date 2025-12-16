function OnStart() {
    lay = app.CreateLayout( "linear", "VCenter,FillXY" );
    btn = app.CreateButton( "Hola Mundo", 0.5, 0.1 );
  
    btn.SetTextColor( "#FFFFFF" );
    btn.SetBackColor( "#2196F3" );

    lay.AddChild( btn );
    app.AddLayout( lay );
}