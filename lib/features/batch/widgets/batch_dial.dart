import 'package:flutter/material.dart' show BuildContext, Colors, Icon, Icons, Key, Navigator, StatelessWidget, TextStyle, Theme, Widget, showDialog;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../generated/l10n.dart';
import '../../../main.dart';
import '../../../routes.dart';
import '../../../util/batch_extension.dart';
import '../../../widget/batch_dialog/batch_dialog.dart';
import '../../speeddial/cubit/speed_dial_cubit.dart';
import '../../speeddial/speeddial.dart';
import '../cubit/batch_cubit.dart';

class BatchDial extends StatelessWidget {
  const BatchDial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SpeedDialCubit, SpeedDialState>(
      cubit: sl<SpeedDialCubit>(),
      listener: (context, state) {
        if (state is GoToHome) {
          Navigator.pushNamed(context, Routes.home);
        }
      },
      child: BlocBuilder<BatchCubit, BatchState>(
        cubit: sl<BatchCubit>(),
        builder: (context, state) {
          return BlackoutDial(
            builder: (context) {
              var children = <SpeedDialChild>[
                SpeedDialChild(
                  child: const Icon(Icons.home),
                  backgroundColor: Theme.of(context).accentColor,
                  label: S.of(context).SPEEDDIAL_GOTO_HOME,
                  labelStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                  onTap: () => sl<SpeedDialCubit>().tapOnGoToHome(),
                ),
              ];
              if (state is ShowBatch) {
                var batch = state.batch;
                children.addAll([
                  SpeedDialChild(
                    child: const Icon(Icons.add),
                    backgroundColor: Theme.of(context).accentColor,
                    label: S.of(context).SPEEDDIAL_ADD_TO_BATCH,
                    labelStyle: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (context) => BatchDialog(
                          title: S.of(context).DIALOG_ADD_TO_BATCH,
                          unit: batch.unit,
                          mode: BatchMode.add,
                          callback: (value) async {
                            sl<SpeedDialCubit>().addToBatch(batch, value);
                            Navigator.pop(context);
                          },
                        ),
                      );
                    },
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.remove),
                    backgroundColor: Theme.of(context).accentColor,
                    label: S.of(context).SPEEDDIAL_TAKE_FROM_BATCH,
                    labelStyle: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (context) => BatchDialog(
                          title: S.of(context).DIALOG_TAKE_FROM_BATCH,
                          initialValue: batch.scientificAmount,
                          unit: batch.unit,
                          mode: BatchMode.take,
                          callback: (value) async {
                            sl<SpeedDialCubit>().takeFromBatch(batch, value.startsWith("-") ? value : "-$value");
                            Navigator.pop(context);
                          },
                        ),
                      );
                    },
                  )
                ]);
              }
              return children;
            },
          );
        },
      ),
    );
  }
}
