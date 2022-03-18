object FAbsen: TFAbsen
  Left = 209
  Top = 341
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 595
  ClientWidth = 1001
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 8
    Top = 50
    Width = 985
    Height = 537
    BevelInner = bvLowered
    Caption = 'Panel1'
    Color = 65408
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 49
      Top = 19
      Width = 72
      Height = 19
      Caption = 'ID Employe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 49
      Top = 48
      Width = 91
      Height = 19
      Caption = 'Employe Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 649
      Top = 12
      Width = 289
      Height = 65
      Brush.Color = clSilver
      Pen.Color = clGray
      Shape = stRoundRect
    end
    object Label5: TLabel
      Left = 49
      Top = 91
      Width = 39
      Height = 13
      Caption = 'Tanggal'
    end
    object Label6: TLabel
      Left = 329
      Top = 94
      Width = 55
      Height = 13
      Caption = 'Keterangan'
    end
    object Label7: TLabel
      Left = 660
      Top = 11
      Width = 273
      Height = 65
      Alignment = taCenter
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -48
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 334
      Top = 22
      Width = 41
      Height = 19
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblStatus: TLabel
      Left = 385
      Top = 27
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 41
      Top = 82
      Width = 905
      Height = 1
      Pen.Color = clGray
    end
    object Shape3: TShape
      Left = 40
      Top = 117
      Width = 905
      Height = 1
      Pen.Color = clGray
    end
    object Shape4: TShape
      Left = 41
      Top = 150
      Width = 905
      Height = 1
      Pen.Color = clGray
    end
    object EdID: TEdit
      Left = 161
      Top = 19
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
      Left = 161
      Top = 51
      Width = 337
      Height = 21
      Color = clSilver
      ReadOnly = True
      TabOrder = 1
      Text = 'EdNama'
    end
    object DTTanggal: TDateTimePicker
      Left = 105
      Top = 91
      Width = 217
      Height = 21
      CalColors.TitleBackColor = clLime
      Date = 41205.410351018520000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 41205.410351018520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnCloseUp = DTTanggalCloseUp
      OnChange = DTTanggalChange
    end
    object EdKeterangan: TEdit
      Left = 401
      Top = 91
      Width = 536
      Height = 21
      TabOrder = 3
      Text = 'EdKeterangan'
    end
    object RBMasuk: TRadioButton
      Left = 305
      Top = 123
      Width = 113
      Height = 17
      Caption = 'Masuk'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object RBPulang: TRadioButton
      Left = 417
      Top = 123
      Width = 113
      Height = 17
      Caption = 'Pulang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object RBSakit: TRadioButton
      Left = 609
      Top = 125
      Width = 113
      Height = 17
      Caption = 'Sakit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object RBIzin: TRadioButton
      Left = 517
      Top = 124
      Width = 87
      Height = 17
      Caption = 'Izin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object BitAbsen: TBitBtn
      Left = 103
      Top = 121
      Width = 131
      Height = 27
      Caption = 'ABSEN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitAbsenClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        080000000000000100000000000000000000000100000000000045AAFF004EB4
        FF00FFCCCC0054BAFF003398FC00FFFBF7003FA4FF003BA0F600388FCE002C8F
        E7003384BA003D95D5003A92D90065323200298AE000BBD4E2002781BF009865
        650000000000CC989800656565000098320000000000D8030000C51300000000
        0000A07EE4000100000000000000000000000000000000000000000000000000
        00003800000027000000BC1C9800DC078F000000000000000000000000000000
        0000120000000000000064ACED0064ACED007C030000C513000000000000040B
        6E00010000000000000000000000000000000000000000000000000000003800
        000027000000BC1C9800DC078F00000000000000000000000000000000001200
        000000000000C0ACED00C0ACED0020030000C5130000000000008C8CE8000100
        0000000000000000000000000000000000000000000000000000380000002700
        0000BC1C9800DC078F0000000000000000000000000000000000120000000000
        00001CADED001CADED00C4020000C5130000000000006884E400010000000000
        0000000000000000000000000000000000000000000054C1340054ADED0054AD
        ED0038000000C513000000000000AC9C6C000100000000000000000000000000
        00000000000000000000000000007000000027000000BC1C9800DC078F000000
        00000000000000000000000000001200000000000000B0ADED00B0ADED003002
        0000000000000000000000000000000000001200000000000000D4ADED00D4AD
        ED000C020000C51300000000000018B7E6000100000000000000000000000000
        00000000000000000000000000003800000027000000BC1C9800DC078F000000
        0000000000000000000000000000120000000000000030AEED0030AEED00B001
        0000C513000000000000D4D2E400010000000000000000000000000000000000
        000000000000000000003800000027000000BC1C9800DC078F00000000000000
        0000000000000000000012000000000000008CAEED008CAEED0054010000C513
        000000000000AC69880001000000000000000000000000000000000000000000
        00000000000054C134003C00000027000000BC1C9800DC078F00000000000000
        000000000000000000008000000001000000188FED00188FED00F4000000C513
        000000000000F43BE80001000000000000000000000000000000000000000000
        0000000000003800000027000000BC1C9800DC078F0000000000000000000000
        000000000000120000000000000048AFED0048AFED0098000000C51300000000
        0000DC80E5000100000000000000000000000000000000000000000000000000
        000054C13400ADCD340084AFED0084AFED0038000000C513000000000000544F
        E400010000000000000000000000000000000000000000000000161616161616
        1514161616161616161616161616161515151416161616161616161616161515
        1515141616161616161616161615151514151514161616161616161615151514
        16161515141616161616161116151416110D1615141616161616161313161613
        13111616151416161616161313020513131116161615141616161602130A1013
        11161616161615141616160F0904040E16161616161616151416161406000007
        161616161616161615141612010303011616161616161616161516120C0B0812
        1616161616161616161616141212121416161616161616161616161614121416
        1616161616161616161616161616161616161616161616161616}
    end
    object DBGrid1: TDBGrid
      Left = 49
      Top = 155
      Width = 889
      Height = 345
      DataSource = DataSource1
      FixedColor = clSkyBlue
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NamaKaryawan'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Karyawan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 225
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Masuk'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Keluar'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'K_Sakit'
          Title.Alignment = taCenter
          Title.Caption = 'Sakit'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'K_Izin'
          Title.Alignment = taCenter
          Title.Caption = 'Izin'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Keterangan'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 350
          Visible = True
        end>
    end
    object BitKeluar: TBitBtn
      Left = 840
      Top = 503
      Width = 98
      Height = 28
      Caption = 'Keluar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitKeluarClick
    end
    object BitLookUp: TBitBtn
      Left = 632
      Top = 503
      Width = 98
      Height = 28
      Caption = 'Employe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BitLookUpClick
    end
    object BitCetak: TBitBtn
      Left = 733
      Top = 503
      Width = 98
      Height = 28
      Caption = 'Cetak'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = BitCetakClick
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 985
    Height = 40
    Caption = 'Data Absensi Karyawan'
    Color = 65408
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 576
    Top = 32
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Absensi.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 664
    Top = 120
  end
  object ADOTampil: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from Tbl_Absen')
    Left = 696
    Top = 120
    object ADOTampilNIK: TWideStringField
      FieldName = 'NIK'
      Size = 25
    end
    object ADOTampilMasuk: TDateTimeField
      FieldName = 'Masuk'
      DisplayFormat = 'HH:mm'
    end
    object ADOTampilKeluar: TDateTimeField
      FieldName = 'Keluar'
      DisplayFormat = 'HH:mm'
    end
    object ADOTampilK_Masuk: TWideStringField
      FieldName = 'K_Masuk'
      Size = 5
    end
    object ADOTampilK_Izin: TWideStringField
      FieldName = 'K_Izin'
      Size = 5
    end
    object ADOTampilK_Sakit: TWideStringField
      FieldName = 'K_Sakit'
      Size = 5
    end
    object ADOTampilKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object ADOTampilNamaKaryawan: TStringField
      FieldKind = fkLookup
      FieldName = 'NamaKaryawan'
      LookupDataSet = ADOKaryawan
      LookupKeyFields = 'NIK'
      LookupResultField = 'Nama'
      KeyFields = 'NIK'
      Size = 30
      Lookup = True
    end
    object ADOTampilTanggalAbsen: TDateTimeField
      FieldName = 'TanggalAbsen'
    end
  end
  object ADOKaryawan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from tbl_Karyawan')
    Left = 728
    Top = 120
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
  object DataSource1: TDataSource
    DataSet = ADOTampil
    Left = 760
    Top = 120
  end
  object ADOSimpan: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select*from tbl_absen')
    Left = 800
    Top = 120
  end
  object ADOCari: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 832
    Top = 120
  end
end
