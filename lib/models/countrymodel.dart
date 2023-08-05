import 'dart:convert';

List<CountryModel> countryModelFromJson(String str) => List<CountryModel>.from(json.decode(str).map((x) => CountryModel.fromJson(x)));
class CountryModel {
  Name? name;
 // List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  //List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<int>? latlng;
  bool? landlocked;
  //List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  Car? car;
 // List<String>? timezones;
 // List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  CountryModel(
      {this.name,  this.cca2, this.ccn3, this.cca3, this.cioc, this.independent, this.status, this.unMember, this.currencies, this.idd, this.capital,  this.region, this.subregion, this.languages, this.translations, this.latlng, this.landlocked,  this.area, this.demonyms, this.flag, this.maps, this.population, this.gini, this.fifa, this.car,   this.flags, this.coatOfArms, this.startOfWeek, this.capitalInfo, this.postalCode});
factory CountryModel.fromJson(Map<String,dynamic> json){
  return CountryModel(
      name : json['name'] =  new Name.fromJson(json['name']),
    //tld :json['tld'].cast<String>(),
    cca2: json['cca2'],
    ccn3: json['ccn3'],
    cca3: json['cca3'],
    cioc: json['cioc'],
    independent : json['independent'],
    status : json['status'],
    unMember : json['unMember'],
    currencies : json['currencies'] != null
        ? new Currencies.fromJson(json['currencies'])
        : null,
    idd : json['idd'] != null ? new Idd.fromJson(json['idd']) : null,
    capital : json['capital'].cast<String>(),
    //altSpellings : json['altSpellings'].cast<String>(),
    region : json['region'],
    subregion : json['subregion'],
    languages : json['languages'] != null
        ? new Languages.fromJson(json['languages'])
        : null,
    translations : json['translations'] != null
        ? new Translations.fromJson(json['translations'])
        : null,
    //latlng : json['latlng'].cast<int>(),
    landlocked : json['landlocked'],
    //borders : json['borders'].cast<String>(),
    area : json['area'],
    demonyms : json['demonyms'] != null
        ? new Demonyms.fromJson(json['demonyms'])
        : null,
    flag : json['flag'],
    maps : json['maps'] != null ? new Maps.fromJson(json['maps']) : null,
    population : json['population'],
    gini : json['gini'] != null ? new Gini.fromJson(json['gini']) : null,
    fifa : json['fifa'],
    car : json['car'] != null ? new Car.fromJson(json['car']) : null,
    //timezones : json['timezones'].cast<String>(),
   // continents : json['continents'].cast<String>(),
    flags : json['flags'] != null ? new Flags.fromJson(json['flags']) : null,
    coatOfArms : json['coatOfArms'] != null
        ? new CoatOfArms.fromJson(json['coatOfArms'])
        : null,
    startOfWeek : json['startOfWeek'],
    capitalInfo : json['capitalInfo'] != null
        ? new CapitalInfo.fromJson(json['capitalInfo'])
        : null,
    postalCode : json['postalCode'] != null
        ? new PostalCode.fromJson(json['postalCode'])
        : null,
  );
}
  // CountryModel.fromJson(Map<String, dynamic> json) {
  //   // name = json['name'] != null ? new Name.fromJson(json['name']) : null;
  //   name = json['name'] =  new Name.fromJson(json['name']) ;
  //   tld = json['tld'].cast<String>();
  //   cca2 = json['cca2'];
  //   ccn3 = json['ccn3'];
  //   cca3 = json['cca3'];
  //   cioc = json['cioc'];
  //   independent = json['independent'];
  //   status = json['status'];
  //   unMember = json['unMember'];
  //   currencies = json['currencies'] != null
  //       ? new Currencies.fromJson(json['currencies'])
  //       : null;
  //   idd = json['idd'] != null ? new Idd.fromJson(json['idd']) : null;
  //   capital = json['capital'].cast<String>();
  //   altSpellings = json['altSpellings'].cast<String>();
  //   region = json['region'];
  //   subregion = json['subregion'];
  //   languages = json['languages'] != null
  //       ? new Languages.fromJson(json['languages'])
  //       : null;
  //   translations = json['translations'] != null
  //       ? new Translations.fromJson(json['translations'])
  //       : null;
  //   latlng = json['latlng'].cast<int>();
  //   landlocked = json['landlocked'];
  //   borders = json['borders'].cast<String>();
  //   area = json['area'];
  //   demonyms = json['demonyms'] != null
  //       ? new Demonyms.fromJson(json['demonyms'])
  //       : null;
  //   flag = json['flag'];
  //   maps = json['maps'] != null ? new Maps.fromJson(json['maps']) : null;
  //   population = json['population'];
  //   gini = json['gini'] != null ? new Gini.fromJson(json['gini']) : null;
  //   fifa = json['fifa'];
  //   car = json['car'] != null ? new Car.fromJson(json['car']) : null;
  //   timezones = json['timezones'].cast<String>();
  //   continents = json['continents'].cast<String>();
  //   flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
  //   coatOfArms = json['coatOfArms'] != null
  //       ? new CoatOfArms.fromJson(json['coatOfArms'])
  //       : null;
  //   startOfWeek = json['startOfWeek'];
  //   capitalInfo = json['capitalInfo'] != null
  //       ? new CapitalInfo.fromJson(json['capitalInfo'])
  //       : null;
  //   postalCode = json['postalCode'] != null
  //       ? new PostalCode.fromJson(json['postalCode'])
  //       : null;
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.name != null) {
  //     data['name'] = this.name!.toJson();
  //   }
  //   data['tld'] = this.tld;
  //   data['cca2'] = this.cca2;
  //   data['ccn3'] = this.ccn3;
  //   data['cca3'] = this.cca3;
  //   data['cioc'] = this.cioc;
  //   data['independent'] = this.independent;
  //   data['status'] = this.status;
  //   data['unMember'] = this.unMember;
  //   if (this.currencies != null) {
  //     data['currencies'] = this.currencies!.toJson();
  //   }
  //   if (this.idd != null) {
  //     data['idd'] = this.idd!.toJson();
  //   }
  //   data['capital'] = this.capital;
  //   data['altSpellings'] = this.altSpellings;
  //   data['region'] = this.region;
  //   data['subregion'] = this.subregion;
  //   if (this.languages != null) {
  //     data['languages'] = this.languages!.toJson();
  //   }
  //   if (this.translations != null) {
  //     data['translations'] = this.translations!.toJson();
  //   }
  //   data['latlng'] = this.latlng;
  //   data['landlocked'] = this.landlocked;
  //   data['borders'] = this.borders;
  //   data['area'] = this.area;
  //   if (this.demonyms != null) {
  //     data['demonyms'] = this.demonyms!.toJson();
  //   }
  //   data['flag'] = this.flag;
  //   if (this.maps != null) {
  //     data['maps'] = this.maps!.toJson();
  //   }
  //   data['population'] = this.population;
  //   if (this.gini != null) {
  //     data['gini'] = this.gini!.toJson();
  //   }
  //   data['fifa'] = this.fifa;
  //   if (this.car != null) {
  //     data['car'] = this.car!.toJson();
  //   }
  //   data['timezones'] = this.timezones;
  //   data['continents'] = this.continents;
  //   if (this.flags != null) {
  //     data['flags'] = this.flags!.toJson();
  //   }
  //   if (this.coatOfArms != null) {
  //     data['coatOfArms'] = this.coatOfArms!.toJson();
  //   }
  //   data['startOfWeek'] = this.startOfWeek;
  //   if (this.capitalInfo != null) {
  //     data['capitalInfo'] = this.capitalInfo!.toJson();
  //   }
  //   if (this.postalCode != null) {
  //     data['postalCode'] = this.postalCode!.toJson();
  //   }
  //   return data;
  // }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({required this.common, required this.official, required this.nativeName});
  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      common : json['common'],
      official : json['official'],
     // nativeName : (json['nativeName'] != null
         // ?  NativeName.fromJson(json['nativeName'])
          //: null)
      nativeName: json['nativeName'] = NativeName.fromJson(json['nativeName'])
    );
    }

  // Name.fromJson(Map<String, dynamic> json) {
  //   common = json['common'];
  //   official = json['official'];
  //   nativeName = (json['nativeName'] != null
  //       ? new NativeName.fromJson(json['nativeName'])
  //       : null)!;
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['common'] = this.common;
    data['official'] = this.official;
    if (this.nativeName != null) {
      data['nativeName'] = this.nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Spa? spa;

  NativeName({ this.spa});

  factory NativeName.fromJson(Map<String, dynamic> json) {
    return NativeName(
        spa : json['spa'] != null ?  Spa.fromJson(json['spa']) : null

    );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.spa != null) {
      data['spa'] = spa!.toJson();
    }
    return data;
  }
}

class Spa {
  String? official;
  String? common;

  Spa({required this.official, required this.common});

  factory Spa.fromJson(Map<String, dynamic> json) {
    return Spa(
        official : json['official'],
        common : json['common'],
    );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['official'] = this.official;
    data['common'] = this.common;
    return data;
  }
}

class Currencies {
  EUR? eUR;

  Currencies({required this.eUR});

  Currencies.fromJson(Map<String, dynamic> json) {
    eUR = json['EUR'] != null ? new EUR.fromJson(json['EUR']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eUR != null) {
      data['EUR'] = this.eUR!.toJson();
    }
    return data;
  }
}

class EUR {
  String? name;
  String? symbol;

  EUR({required this.name, required this.symbol});

  EUR.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({required this.root, required this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['root'] = this.root;
    data['suffixes'] = this.suffixes;
    return data;
  }
}

class Languages {
  String? spa;

  Languages({required this.spa});

  Languages.fromJson(Map<String, dynamic> json) {
    spa = json['spa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['spa'] = this.spa;
    return data;
  }
}

class Translations {
  Spa? ara;
  Spa? bre;
  Spa? ces;
  Spa? cym;
  Spa? deu;
  Spa? est;
  Spa? fin;
  Eng? fra;
  Spa? hrv;
  Spa? hun;
  Spa? ita;
  Spa? jpn;
  Spa? kor;
  Spa? nld;
  Spa? per;
  Spa? pol;
  Spa? por;
  Spa? rus;
  Spa? slk;
  Spa? spa;
  Spa? srp;
  Spa? swe;
  Spa? tur;
  Spa? urd;
  Spa? zho;

  Translations(
      {required this.ara,
        required this.bre,
        required this.ces,
        required this.cym,
        required this.deu,
        required this.est,
        required this.fin,
        required this.fra,
        required this.hrv,
        required this.hun,
        required this.ita,
        required this.jpn,
        required this.kor,
        required this.nld,
        required this.per,
        required this.pol,
        required this.por,
        required this.rus,
        required this.slk,
        required this.spa,
        required this.srp,
        required this.swe,
        required this.tur,
        required this.urd,
        required this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? new Spa.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? new Spa.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? new Spa.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? new Spa.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? new Spa.fromJson(json['deu']) : null;
    est = json['est'] != null ? new Spa.fromJson(json['est']) : null;
    fin = json['fin'] != null ? new Spa.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? new Spa.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? new Spa.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? new Spa.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? new Spa.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? new Spa.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? new Spa.fromJson(json['nld']) : null;
    per = json['per'] != null ? new Spa.fromJson(json['per']) : null;
    pol = json['pol'] != null ? new Spa.fromJson(json['pol']) : null;
    por = json['por'] != null ? new Spa.fromJson(json['por']) : null;
    rus = json['rus'] != null ? new Spa.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? new Spa.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? new Spa.fromJson(json['spa']) : null;
    srp = json['srp'] != null ? new Spa.fromJson(json['srp']) : null;
    swe = json['swe'] != null ? new Spa.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? new Spa.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? new Spa.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? new Spa.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ara != null) {
      data['ara'] = this.ara!.toJson();
    }
    if (this.bre != null) {
      data['bre'] = this.bre!.toJson();
    }
    if (this.ces != null) {
      data['ces'] = this.ces!.toJson();
    }
    if (this.cym != null) {
      data['cym'] = this.cym!.toJson();
    }
    if (this.deu != null) {
      data['deu'] = this.deu!.toJson();
    }
    if (this.est != null) {
      data['est'] = this.est!.toJson();
    }
    if (this.fin != null) {
      data['fin'] = this.fin!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    if (this.hrv != null) {
      data['hrv'] = this.hrv!.toJson();
    }
    if (this.hun != null) {
      data['hun'] = this.hun!.toJson();
    }
    if (this.ita != null) {
      data['ita'] = this.ita!.toJson();
    }
    if (this.jpn != null) {
      data['jpn'] = this.jpn!.toJson();
    }
    if (this.kor != null) {
      data['kor'] = this.kor!.toJson();
    }
    if (this.nld != null) {
      data['nld'] = this.nld!.toJson();
    }
    if (this.per != null) {
      data['per'] = this.per!.toJson();
    }
    if (this.pol != null) {
      data['pol'] = this.pol!.toJson();
    }
    if (this.por != null) {
      data['por'] = this.por!.toJson();
    }
    if (this.rus != null) {
      data['rus'] = this.rus!.toJson();
    }
    if (this.slk != null) {
      data['slk'] = this.slk!.toJson();
    }
    if (this.spa != null) {
      data['spa'] = this.spa!.toJson();
    }
    if (this.srp != null) {
      data['srp'] = this.srp!.toJson();
    }
    if (this.swe != null) {
      data['swe'] = this.swe!.toJson();
    }
    if (this.tur != null) {
      data['tur'] = this.tur!.toJson();
    }
    if (this.urd != null) {
      data['urd'] = this.urd!.toJson();
    }
    if (this.zho != null) {
      data['zho'] = this.zho!.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({required this.eng, required this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? new Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eng != null) {
      data['eng'] = this.eng!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    return data;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({required this.f, required this.m});

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f'] = this.f;
    data['m'] = this.m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({required this.googleMaps, required this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['googleMaps'] = this.googleMaps;
    data['openStreetMaps'] = this.openStreetMaps;
    return data;
  }
}

class Gini {
  double? d2018;

  Gini({required this.d2018});

  Gini.fromJson(Map<String, dynamic> json) {
    d2018 = json['2018'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2018'] = this.d2018;
    return data;
  }
}

class Car {
  List<String>? signs;
  String? side;

  Car({required this.signs, required this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs'].cast<String>();
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signs'] = this.signs;
    data['side'] = this.side;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({required this.png, required this.svg, required this.alt});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    data['alt'] = this.alt;
    return data;
  }
}

class CoatOfArms {
  String? png;
  String?svg;

  CoatOfArms({this.png, this.svg});

  CoatOfArms.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    return data;
  }
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({required this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng = json['latlng'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latlng'] = this.latlng;
    return data;
  }
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({required this.format, required this.regex});

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    regex = json['regex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['format'] = this.format;
    data['regex'] = this.regex;
    return data;
  }
}
