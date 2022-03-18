object FMenu: TFMenu
  Left = 327
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Report By Employe'
  ClientHeight = 223
  ClientWidth = 572
  Color = 65408
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 16
    Top = 16
    Width = 537
    Height = 193
    Brush.Color = clAqua
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 57
    Top = 27
    Width = 72
    Height = 19
    Caption = 'ID Employe'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 57
    Top = 56
    Width = 91
    Height = 19
    Caption = 'Employe Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 54
    Top = 86
    Width = 41
    Height = 19
    Caption = 'Status'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblStatus: TLabel
    Left = 169
    Top = 91
    Width = 5
    Height = 13
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 57
    Top = 123
    Width = 29
    Height = 19
    Caption = 'Date'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape3: TShape
    Left = 40
    Top = 113
    Width = 480
    Height = 1
    Pen.Color = clGray
  end
  object Shape1: TShape
    Left = 39
    Top = 152
    Width = 480
    Height = 1
    Pen.Color = clGray
  end
  object Label3: TLabel
    Left = 270
    Top = 119
    Width = 10
    Height = 23
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object EdID: TEdit
    Left = 169
    Top = 27
    Width = 161
    Height = 25
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'EdID'
    OnKeyPress = EdIDKeyPress
  end
  object EdNama: TEdit
    Left = 169
    Top = 59
    Width = 337
    Height = 21
    Color = clSilver
    ReadOnly = True
    TabOrder = 1
    Text = 'EdNama'
  end
  object DTTanggalAwal: TDateTimePicker
    Left = 113
    Top = 123
    Width = 152
    Height = 21
    CalColors.TitleBackColor = clLime
    Date = 41205.410351018520000000
    Format = 'dd MMMM yyyy'
    Time = 41205.410351018520000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DTTanggalAkhir: TDateTimePicker
    Left = 288
    Top = 122
    Width = 186
    Height = 21
    Date = 41206.664803032410000000
    Format = 'dd MMMM yyyy'
    Time = 41206.664803032410000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BitProses: TBitBtn
    Left = 319
    Top = 169
    Width = 98
    Height = 28
    Caption = 'Preview'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitProsesClick
  end
  object BitKeluar: TBitBtn
    Left = 423
    Top = 168
    Width = 98
    Height = 28
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitKeluarClick
  end
  object BitCari: TBitBtn
    Left = 336
    Top = 28
    Width = 49
    Height = 25
    Caption = '---'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitCariClick
  end
  object ADOKaryawan: TADOQuery
    Connection = FAbsen.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from tbl_Karyawan')
    Left = 21
    Top = 19
    object ADOKaryawanNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOKaryawanNama: TWideStringField
      FieldName = 'Nama'
      Size = 30
    end
    object ADOKaryawanJenisKelamin: TWideStringField
      FieldName = 'JenisKelamin'
      Size = 10
    end
    object ADOKaryawanTempat_Lahir: TWideStringField
      FieldName = 'Tempat_Lahir'
      Size = 30
    end
    object ADOKaryawanTanggal_Lahir: TDateTimeField
      FieldName = 'Tanggal_Lahir'
    end
    object ADOKaryawanAlamat: TWideStringField
      FieldName = 'Alamat'
      Size = 50
    end
    object ADOKaryawanNoTelepon: TWideStringField
      FieldName = 'NoTelepon'
    end
    object ADOKaryawanStatus: TBooleanField
      FieldName = 'Status'
    end
  end
  object ADOProses: TADOQuery
    Connection = FAbsen.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from TBL_ABSEN')
    Left = 50
    Top = 21
    object ADOProsesNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOProsesTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
      DisplayFormat = 'dd MM yyyy'
    end
    object ADOProsesMasuk: TDateTimeField
      FieldName = 'Masuk'
      DisplayFormat = 'HH:mm'
    end
    object ADOProsesKeluar: TDateTimeField
      FieldName = 'Keluar'
      DisplayFormat = 'HH:mm'
    end
    object ADOProsesK_Masuk: TWideStringField
      FieldName = 'K_Masuk'
      Size = 5
    end
    object ADOProsesK_Izin: TWideStringField
      FieldName = 'K_Izin'
      Size = 15
    end
    object ADOProsesK_Sakit: TWideStringField
      FieldName = 'K_Sakit'
      Size = 5
    end
    object ADOProsesKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADOProsesNamakaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'Namakaryawan'
      LookupDataSet = ADOKaryawan
      LookupKeyFields = 'NIK'
      LookupResultField = 'Nama'
      KeyFields = 'NIK'
      Size = 30
      Lookup = True
    end
  end
  object ADOIzin: TADOQuery
    Connection = FAbsen.ADOConnection1
    Parameters = <>
    Left = 56
    Top = 176
  end
end
