const rootRoute = "/";

const VocabularyPageDisplayName = "Vocabulary";
const VocabularyPagePageRoute = "/vocabulary";

const GrammerCorrectionPageDisplayName = "GrammerCorrection";
const GrammerCorrectionPageRoute = "/grammerCorrection";

const MinimalPairPageDisplayName = "MinimalPair";
const MinimalPairPagePageRoute = "/minimalPair";

const DatasetPageDisplayName = "Dataset";
const DatasetPagePageRoute = "/dataset";


class DrawerItem {
  final String name;
  final String route;

  DrawerItem(this.name, this.route);
}



List<DrawerItem> sideDrawerItemRoutes = [
  DrawerItem(VocabularyPageDisplayName, VocabularyPagePageRoute),
  DrawerItem(GrammerCorrectionPageDisplayName, GrammerCorrectionPageRoute),
  DrawerItem(MinimalPairPageDisplayName, MinimalPairPagePageRoute),
  DrawerItem(DatasetPageDisplayName, DatasetPagePageRoute),
];