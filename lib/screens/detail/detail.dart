import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/screens/detail/widgets/detail_sliver_delegate.dart';
import 'package:game_store/screens/detail/widgets/game_info.dart';

class DetailPage extends StatelessWidget {
  final Game game;
  const DetailPage(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
            game: game,
            expandedHeight: 360,
            roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          )
        ],
      )
    );
  }
}