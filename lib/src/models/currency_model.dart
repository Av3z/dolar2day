class CurrencyModel {
  String name = '';
  double dolar = 0.0;
  double real = 0.0;
  double euro = 0.0;
  double btc = 0.0;

  CurrencyModel({
  required this.name, 
  required this.real,
  required this.dolar, 
  required this.euro,
  required this.btc
  });
  
  static List<CurrencyModel> getCurrencies(){
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Real',
        real:1.0,
        dolar:0.18,
        euro:0.15,
        btc:0.000016
      ),
      CurrencyModel(
        name: 'Dolar',
        real:5.63,
        dolar:1.0,
        euro:0.85,
        btc:0.000088
      ),
      CurrencyModel(
        name: 'Euro',
        real:6.62,
        dolar:1.17,
        euro:1.0,
        btc:0.00010
      ),
      CurrencyModel(
        name: 'Bitcoin',
        real:64116.51,
        dolar:11351.30,
        euro:9689.34,
        btc:1.0
      ),
    ];
  }

  }