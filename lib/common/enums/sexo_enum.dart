enum SexoEnum { masculino, feminino, naoDeclarado }

extension SexoEnumExtension on SexoEnum {
  String get label {
    switch (this) { 
      case SexoEnum.masculino:
        return 'Masculino';
      case SexoEnum.feminino:
        return 'Feminino';
      case SexoEnum.naoDeclarado:
        return 'Não Declarado';
      default:
        return '';
    }
  }

  String get sigla {
    switch (this) { 
      case SexoEnum.masculino:
        return 'M';
      case SexoEnum.feminino:
        return 'F';
      case SexoEnum.naoDeclarado:
        return 'N';
      default:
        return '';
    }
  }

  static SexoEnum fromString(String valor) {
    final valor0 = valor.toLowerCase();
    if (valor0 == 'f' || valor0 == 'fem' || valor0 == 'feminino') {
      return SexoEnum.feminino;
    } else if (valor0 == 'm' || valor0 == 'masc' || valor0 == 'masculino') {
      return SexoEnum.masculino;
    }
    return SexoEnum.naoDeclarado;
  }

  static enumValue(String sexo) {}
}
