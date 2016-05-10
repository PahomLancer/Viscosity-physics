program Prmain;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  Grafik in 'Grafik.pas' {Form2},
  Tablica in 'Tablica.pas' {Form3},
  Fdbtable in 'Fdbtable.pas' {Form4},
  MyFunct in 'MyFunct.pas',
  Fabout in 'Fabout.pas' {AboutBox},
  Teplota in 'Teplota.pas' {FrTeplota},
  ForOneComponent in 'ForOneComponent.pas' {FrOneComponent};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TFrTeplota, FrTeplota);
  Application.CreateForm(TFrOneComponent, FrOneComponent);
  Application.Run;
end.
