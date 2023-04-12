class CountriesCapitals {
  final Name? name;
  final List<String>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Currencies? currencies;
  final Idd? idd;
  final List<String>? capital;
  final List<String>? altSpellings;
  final String? region;
  final String? subregion;
  final Languages? languages;
  final Translations? translations;
  final List<double>? latlng;
  final bool? landlocked;
  final double? area;
  final Demonyms? demonyms;
  final String? flag;
  final Maps? maps;
  final int? population;
  final String? fifa;
  final Car? car;
  final List<String>? timezones;
  final List<String>? continents;
  final Flags? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  CountriesCapitals({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  CountriesCapitals.fromJson(Map<String, dynamic> json)
    : name = (json['name'] as Map<String,dynamic>?) != null ? Name.fromJson(json['name'] as Map<String,dynamic>) : null,
      tld = (json['tld'] as List?)?.map((dynamic e) => e as String).toList(),
      cca2 = json['cca2'] as String?,
      ccn3 = json['ccn3'] as String?,
      cca3 = json['cca3'] as String?,
      cioc = json['cioc'] as String?,
      independent = json['independent'] as bool?,
      status = json['status'] as String?,
      unMember = json['unMember'] as bool?,
      currencies = (json['currencies'] as Map<String,dynamic>?) != null ? Currencies.fromJson(json['currencies'] as Map<String,dynamic>) : null,
      idd = (json['idd'] as Map<String,dynamic>?) != null ? Idd.fromJson(json['idd'] as Map<String,dynamic>) : null,
      capital = (json['capital'] as List?)?.map((dynamic e) => e as String).toList()??[],
      altSpellings = (json['altSpellings'] as List?)?.map((dynamic e) => e as String).toList(),
      region = json['region'] as String?,
      subregion = json['subregion'] as String?,
      languages = (json['languages'] as Map<String,dynamic>?) != null ? Languages.fromJson(json['languages'] as Map<String,dynamic>) : null,
      translations = (json['translations'] as Map<String,dynamic>?) != null ? Translations.fromJson(json['translations'] as Map<String,dynamic>) : null,
      latlng = (json['latlng'] as List?)?.map((dynamic e) => e as double).toList(),
      landlocked = json['landlocked'] as bool?,
      area = json['area'] as double?,
      demonyms = (json['demonyms'] as Map<String,dynamic>?) != null ? Demonyms.fromJson(json['demonyms'] as Map<String,dynamic>) : null,
      flag = json['flag'] as String?,
      maps = (json['maps'] as Map<String,dynamic>?) != null ? Maps.fromJson(json['maps'] as Map<String,dynamic>) : null,
      population = json['population'] as int?,
      fifa = json['fifa'] as String?,
      car = (json['car'] as Map<String,dynamic>?) != null ? Car.fromJson(json['car'] as Map<String,dynamic>) : null,
      timezones = (json['timezones'] as List?)?.map((dynamic e) => e as String).toList(),
      continents = (json['continents'] as List?)?.map((dynamic e) => e as String).toList(),
      flags = (json['flags'] as Map<String,dynamic>?) != null ? Flags.fromJson(json['flags'] as Map<String,dynamic>) : null,
      coatOfArms = (json['coatOfArms'] as Map<String,dynamic>?) != null ? CoatOfArms.fromJson(json['coatOfArms'] as Map<String,dynamic>) : null,
      startOfWeek = json['startOfWeek'] as String?,
      capitalInfo = (json['capitalInfo'] as Map<String,dynamic>?) != null ? CapitalInfo.fromJson(json['capitalInfo'] as Map<String,dynamic>) : null,
      postalCode = (json['postalCode'] as Map<String,dynamic>?) != null ? PostalCode.fromJson(json['postalCode'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'name' : name?.toJson(),
    'tld' : tld,
    'cca2' : cca2,
    'ccn3' : ccn3,
    'cca3' : cca3,
    'cioc' : cioc,
    'independent' : independent,
    'status' : status,
    'unMember' : unMember,
    'currencies' : currencies?.toJson(),
    'idd' : idd?.toJson(),
    'capital' : capital,
    'altSpellings' : altSpellings,
    'region' : region,
    'subregion' : subregion,
    'languages' : languages?.toJson(),
    'translations' : translations?.toJson(),
    'latlng' : latlng,
    'landlocked' : landlocked,
    'area' : area,
    'demonyms' : demonyms?.toJson(),
    'flag' : flag,
    'maps' : maps?.toJson(),
    'population' : population,
    'fifa' : fifa,
    'car' : car?.toJson(),
    'timezones' : timezones,
    'continents' : continents,
    'flags' : flags?.toJson(),
    'coatOfArms' : coatOfArms?.toJson(),
    'startOfWeek' : startOfWeek,
    'capitalInfo' : capitalInfo?.toJson(),
    'postalCode' : postalCode?.toJson()
  };
}

class Name {
  final String? common;
  final String? official;
  final NativeName? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  Name.fromJson(Map<String, dynamic> json)
    : common = json['common'] as String?,
      official = json['official'] as String?,
      nativeName = (json['nativeName'] as Map<String,dynamic>?) != null ? NativeName.fromJson(json['nativeName'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'common' : common,
    'official' : official,
    'nativeName' : nativeName?.toJson()
  };
}

class NativeName {
  final Eng? eng;

  NativeName({
    this.eng,
  });

  NativeName.fromJson(Map<String, dynamic> json)
    : eng = (json['eng'] as Map<String,dynamic>?) != null ? Eng.fromJson(json['eng'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'eng' : eng?.toJson()
  };
}

class Eng {
  final String? official;
  final String? common;

  Eng({
    this.official,
    this.common,
  });

  Eng.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Currencies {
  final BBD? bBD;

  Currencies({
    this.bBD,
  });

  Currencies.fromJson(Map<String, dynamic> json)
    : bBD = (json['BBD'] as Map<String,dynamic>?) != null ? BBD.fromJson(json['BBD'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'BBD' : bBD?.toJson()
  };
}

class BBD {
  final String? name;
  final String? symbol;

  BBD({
    this.name,
    this.symbol,
  });

  BBD.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String?,
      symbol = json['symbol'] as String?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'symbol' : symbol
  };
}

class Idd {
  final String? root;
  final List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  Idd.fromJson(Map<String, dynamic> json)
    : root = json['root'] as String?,
      suffixes = (json['suffixes'] as List?)?.map((dynamic e) => e as String).toList();

  Map<String, dynamic> toJson() => {
    'root' : root,
    'suffixes' : suffixes
  };
}

class Languages {
  final String? eng;

  Languages({
    this.eng,
  });

  Languages.fromJson(Map<String, dynamic> json)
    : eng = json['eng'] as String?;

  Map<String, dynamic> toJson() => {
    'eng' : eng
  };
}

class Translations {
  final Ara? ara;
  final Bre? bre;
  final Ces? ces;
  final Cym? cym;
  final Deu? deu;
  final Est? est;
  final Fin? fin;
  final Fra? fra;
  final Hrv? hrv;
  final Hun? hun;
  final Ita? ita;
  final Jpn? jpn;
  final Kor? kor;
  final Nld? nld;
  final Per? per;
  final Pol? pol;
  final Por? por;
  final Rus? rus;
  final Slk? slk;
  final Spa? spa;
  final Srp? srp;
  final Swe? swe;
  final Tur? tur;
  final Urd? urd;
  final Zho? zho;

  Translations({
    this.ara,
    this.bre,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.srp,
    this.swe,
    this.tur,
    this.urd,
    this.zho,
  });

  Translations.fromJson(Map<String, dynamic> json)
    : ara = (json['ara'] as Map<String,dynamic>?) != null ? Ara.fromJson(json['ara'] as Map<String,dynamic>) : null,
      bre = (json['bre'] as Map<String,dynamic>?) != null ? Bre.fromJson(json['bre'] as Map<String,dynamic>) : null,
      ces = (json['ces'] as Map<String,dynamic>?) != null ? Ces.fromJson(json['ces'] as Map<String,dynamic>) : null,
      cym = (json['cym'] as Map<String,dynamic>?) != null ? Cym.fromJson(json['cym'] as Map<String,dynamic>) : null,
      deu = (json['deu'] as Map<String,dynamic>?) != null ? Deu.fromJson(json['deu'] as Map<String,dynamic>) : null,
      est = (json['est'] as Map<String,dynamic>?) != null ? Est.fromJson(json['est'] as Map<String,dynamic>) : null,
      fin = (json['fin'] as Map<String,dynamic>?) != null ? Fin.fromJson(json['fin'] as Map<String,dynamic>) : null,
      fra = (json['fra'] as Map<String,dynamic>?) != null ? Fra.fromJson(json['fra'] as Map<String,dynamic>) : null,
      hrv = (json['hrv'] as Map<String,dynamic>?) != null ? Hrv.fromJson(json['hrv'] as Map<String,dynamic>) : null,
      hun = (json['hun'] as Map<String,dynamic>?) != null ? Hun.fromJson(json['hun'] as Map<String,dynamic>) : null,
      ita = (json['ita'] as Map<String,dynamic>?) != null ? Ita.fromJson(json['ita'] as Map<String,dynamic>) : null,
      jpn = (json['jpn'] as Map<String,dynamic>?) != null ? Jpn.fromJson(json['jpn'] as Map<String,dynamic>) : null,
      kor = (json['kor'] as Map<String,dynamic>?) != null ? Kor.fromJson(json['kor'] as Map<String,dynamic>) : null,
      nld = (json['nld'] as Map<String,dynamic>?) != null ? Nld.fromJson(json['nld'] as Map<String,dynamic>) : null,
      per = (json['per'] as Map<String,dynamic>?) != null ? Per.fromJson(json['per'] as Map<String,dynamic>) : null,
      pol = (json['pol'] as Map<String,dynamic>?) != null ? Pol.fromJson(json['pol'] as Map<String,dynamic>) : null,
      por = (json['por'] as Map<String,dynamic>?) != null ? Por.fromJson(json['por'] as Map<String,dynamic>) : null,
      rus = (json['rus'] as Map<String,dynamic>?) != null ? Rus.fromJson(json['rus'] as Map<String,dynamic>) : null,
      slk = (json['slk'] as Map<String,dynamic>?) != null ? Slk.fromJson(json['slk'] as Map<String,dynamic>) : null,
      spa = (json['spa'] as Map<String,dynamic>?) != null ? Spa.fromJson(json['spa'] as Map<String,dynamic>) : null,
      srp = (json['srp'] as Map<String,dynamic>?) != null ? Srp.fromJson(json['srp'] as Map<String,dynamic>) : null,
      swe = (json['swe'] as Map<String,dynamic>?) != null ? Swe.fromJson(json['swe'] as Map<String,dynamic>) : null,
      tur = (json['tur'] as Map<String,dynamic>?) != null ? Tur.fromJson(json['tur'] as Map<String,dynamic>) : null,
      urd = (json['urd'] as Map<String,dynamic>?) != null ? Urd.fromJson(json['urd'] as Map<String,dynamic>) : null,
      zho = (json['zho'] as Map<String,dynamic>?) != null ? Zho.fromJson(json['zho'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'ara' : ara?.toJson(),
    'bre' : bre?.toJson(),
    'ces' : ces?.toJson(),
    'cym' : cym?.toJson(),
    'deu' : deu?.toJson(),
    'est' : est?.toJson(),
    'fin' : fin?.toJson(),
    'fra' : fra?.toJson(),
    'hrv' : hrv?.toJson(),
    'hun' : hun?.toJson(),
    'ita' : ita?.toJson(),
    'jpn' : jpn?.toJson(),
    'kor' : kor?.toJson(),
    'nld' : nld?.toJson(),
    'per' : per?.toJson(),
    'pol' : pol?.toJson(),
    'por' : por?.toJson(),
    'rus' : rus?.toJson(),
    'slk' : slk?.toJson(),
    'spa' : spa?.toJson(),
    'srp' : srp?.toJson(),
    'swe' : swe?.toJson(),
    'tur' : tur?.toJson(),
    'urd' : urd?.toJson(),
    'zho' : zho?.toJson()
  };
}

class Ara {
  final String? official;
  final String? common;

  Ara({
    this.official,
    this.common,
  });

  Ara.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Bre {
  final String? official;
  final String? common;

  Bre({
    this.official,
    this.common,
  });

  Bre.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Ces {
  final String? official;
  final String? common;

  Ces({
    this.official,
    this.common,
  });

  Ces.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Cym {
  final String? official;
  final String? common;

  Cym({
    this.official,
    this.common,
  });

  Cym.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Deu {
  final String? official;
  final String? common;

  Deu({
    this.official,
    this.common,
  });

  Deu.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Est {
  final String? official;
  final String? common;

  Est({
    this.official,
    this.common,
  });

  Est.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Fin {
  final String? official;
  final String? common;

  Fin({
    this.official,
    this.common,
  });

  Fin.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Fra {
  final String? official;
  final String? common;

  Fra({
    this.official,
    this.common,
  });

  Fra.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Hrv {
  final String? official;
  final String? common;

  Hrv({
    this.official,
    this.common,
  });

  Hrv.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Hun {
  final String? official;
  final String? common;

  Hun({
    this.official,
    this.common,
  });

  Hun.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Ita {
  final String? official;
  final String? common;

  Ita({
    this.official,
    this.common,
  });

  Ita.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Jpn {
  final String? official;
  final String? common;

  Jpn({
    this.official,
    this.common,
  });

  Jpn.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Kor {
  final String? official;
  final String? common;

  Kor({
    this.official,
    this.common,
  });

  Kor.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Nld {
  final String? official;
  final String? common;

  Nld({
    this.official,
    this.common,
  });

  Nld.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Per {
  final String? official;
  final String? common;

  Per({
    this.official,
    this.common,
  });

  Per.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Pol {
  final String? official;
  final String? common;

  Pol({
    this.official,
    this.common,
  });

  Pol.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Por {
  final String? official;
  final String? common;

  Por({
    this.official,
    this.common,
  });

  Por.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Rus {
  final String? official;
  final String? common;

  Rus({
    this.official,
    this.common,
  });

  Rus.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Slk {
  final String? official;
  final String? common;

  Slk({
    this.official,
    this.common,
  });

  Slk.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Spa {
  final String? official;
  final String? common;

  Spa({
    this.official,
    this.common,
  });

  Spa.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Srp {
  final String? official;
  final String? common;

  Srp({
    this.official,
    this.common,
  });

  Srp.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Swe {
  final String? official;
  final String? common;

  Swe({
    this.official,
    this.common,
  });

  Swe.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Tur {
  final String? official;
  final String? common;

  Tur({
    this.official,
    this.common,
  });

  Tur.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Urd {
  final String? official;
  final String? common;

  Urd({
    this.official,
    this.common,
  });

  Urd.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Zho {
  final String? official;
  final String? common;

  Zho({
    this.official,
    this.common,
  });

  Zho.fromJson(Map<String, dynamic> json)
    : official = json['official'] as String?,
      common = json['common'] as String?;

  Map<String, dynamic> toJson() => {
    'official' : official,
    'common' : common
  };
}

class Demonyms {
  final Eng? eng;
  final Fra? fra;

  Demonyms({
    this.eng,
    this.fra,
  });

  Demonyms.fromJson(Map<String, dynamic> json)
    : eng = (json['eng'] as Map<String,dynamic>?) != null ? Eng.fromJson(json['eng'] as Map<String,dynamic>) : null,
      fra = (json['fra'] as Map<String,dynamic>?) != null ? Fra.fromJson(json['fra'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'eng' : eng?.toJson(),
    'fra' : fra?.toJson()
  };
}

// class Eng {
//   final String? f;
//   final String? m;

//   Eng({
//     this.f,
//     this.m,
//   });

//   Eng.fromJson(Map<String, dynamic> json)
//     : f = json['f'] as String?,
//       m = json['m'] as String?;

//   Map<String, dynamic> toJson() => {
//     'f' : f,
//     'm' : m
//   };
// }

// class Fra {
//   final String? f;
//   final String? m;

//   Fra({
//     this.f,
//     this.m,
//   });

//   Fra.fromJson(Map<String, dynamic> json)
//     : f = json['f'] as String?,
//       m = json['m'] as String?;

//   Map<String, dynamic> toJson() => {
//     'f' : f,
//     'm' : m
//   };
// }

class Maps {
  final String? googleMaps;
  final String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  Maps.fromJson(Map<String, dynamic> json)
    : googleMaps = json['googleMaps'] as String?,
      openStreetMaps = json['openStreetMaps'] as String?;

  Map<String, dynamic> toJson() => {
    'googleMaps' : googleMaps,
    'openStreetMaps' : openStreetMaps
  };
}

class Car {
  final List<String>? signs;
  final String? side;

  Car({
    this.signs,
    this.side,
  });

  Car.fromJson(Map<String, dynamic> json)
    : signs = (json['signs'] as List?)?.map((dynamic e) => e as String).toList(),
      side = json['side'] as String?;

  Map<String, dynamic> toJson() => {
    'signs' : signs,
    'side' : side
  };
}

class Flags {
  final String? png;
  final String? svg;
  final String? alt;

  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  Flags.fromJson(Map<String, dynamic> json)
    : png = json['png'] as String?,
      svg = json['svg'] as String?,
      alt = json['alt'] as String?;

  Map<String, dynamic> toJson() => {
    'png' : png,
    'svg' : svg,
    'alt' : alt
  };
}

class CoatOfArms {
  final String? png;
  final String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  CoatOfArms.fromJson(Map<String, dynamic> json)
    : png = json['png'] as String?,
      svg = json['svg'] as String?;

  Map<String, dynamic> toJson() => {
    'png' : png,
    'svg' : svg
  };
}

class CapitalInfo {
  final List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  CapitalInfo.fromJson(Map<String, dynamic> json)
    : latlng = (json['latlng'] as List?)?.map((dynamic e) => e as double).toList();

  Map<String, dynamic> toJson() => {
    'latlng' : latlng
  };
}

class PostalCode {
  final String? format;
  final String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  PostalCode.fromJson(Map<String, dynamic> json)
    : format = json['format'] as String?,
      regex = json['regex'] as String?;

  Map<String, dynamic> toJson() => {
    'format' : format,
    'regex' : regex
  };
}