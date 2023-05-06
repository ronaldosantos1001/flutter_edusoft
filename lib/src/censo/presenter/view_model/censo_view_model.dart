import 'package:flutter/material.dart';
import 'package:flutter_edusoft/common/enums/sexo_enum.dart';
import 'package:flutter_edusoft/common/enums/size_enum.dart';
import 'package:flutter_edusoft/common/routes/DTO/censo_details_argument.dart';
import 'package:flutter_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:flutter_edusoft/src/censo/presenter/screens/censo_details_screen.dart';



class CensoViewModel {
  final NomeCensoModel _censo;

  const CensoViewModel(this._censo);

  String get title => _censo.nome;

  String get subtitle => "Rank: ${_censo.rank}";

  Widget listTile(BuildContext context) => Card(
        elevation: 2.0,
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          subtitle: Text(subtitle),
          onTap: () => Navigator.of(context).pushNamed(
            CensoDetailsScreen.id,
            arguments: CensoDetailsArgument(this),
          ),
        ),
      );

  Widget detailsCard(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: _resolveFrom(ScreenSizesExtension.fromSize(size.width)),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              _textLabel(label: 'Nome:', text: _censo.nome),
              _textLabel(label: 'Rank:', text: _censo.rank.toString()),
              _textLabel(
                  label: 'Frequência:', text: _censo.frequencia.toString()),
              _textLabel(label: 'Região:', text: _censo.regiao.toString()),
              _textLabel(label: 'Sexo:', text: _censo.sexoEnum.label),
            ],
          ),
        ),
      ),
    );
  }

  BoxConstraints _resolveFrom(ScreenSizesEnum size) {
    switch (size) {
      case ScreenSizesEnum.xs:
        return const BoxConstraints(maxWidth: 360);
      case ScreenSizesEnum.sm:
        return const BoxConstraints(maxWidth: 400);
      case ScreenSizesEnum.md:
      case ScreenSizesEnum.lg:
        return const BoxConstraints(maxWidth: 440);
    }
  }

  Widget _textLabel({required String label, required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
