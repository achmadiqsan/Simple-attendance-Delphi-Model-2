program Absensi;

uses
  Forms,
  UAbsen in 'UAbsen.pas' {FAbsen},
  UListKaryawan in 'UListKaryawan.pas' {FListKaryawan},
  Unit1 in 'Unit1.pas' {Form1},
  UMenu in 'UMenu.pas' {FMenu},
  ULapAbsen1 in 'ULapAbsen1.pas' {FLapAbsen1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ABSENSI';
  Application.CreateForm(TFAbsen, FAbsen);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFListKaryawan, FListKaryawan);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFLapAbsen1, FLapAbsen1);
  Application.Run;
end.
