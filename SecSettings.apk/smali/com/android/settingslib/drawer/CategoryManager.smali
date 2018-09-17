.class public Lcom/android/settingslib/drawer/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field private static sInstance:Lcom/android/settingslib/drawer/CategoryManager;


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryByKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraAction:Ljava/lang/String;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private mSecurityCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileByComponentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    iput-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;
    .registers 3

    sget-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/settingslib/drawer/CategoryManager;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/drawer/CategoryManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    :cond_b
    sget-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    return-object v0
.end method

.method static synthetic lambda$-com_android_settingslib_drawer_CategoryManager_12984(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .registers 9

    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v4, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    iget v4, p2, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v5, p1, Lcom/android/settingslib/drawer/Tile;->priority:I

    sub-int v3, v4, v5

    if-eqz v3, :cond_23

    return v3

    :cond_23
    if-eqz v2, :cond_35

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, -0x1

    return v4

    :cond_2d
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    return v4

    :cond_35
    return v2
.end method

.method private declared-synchronized sortCategoriesForExternalTiles(Landroid/content/Context;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    new-instance v2, Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;

    invoke-direct {v2, v0}, Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;ZLjava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;ZLjava/lang/String;Z)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_67

    if-eqz p2, :cond_26

    const-string/jumbo v0, "CategoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceClearCache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_26
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    iget-object v1, v6, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_3f

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->sortCategories(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->filterDuplicateTiles(Ljava/util/Map;)V
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_53

    :cond_67
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized tryInitSecurityCategories(Landroid/content/Context;ZLjava/lang/String;Z)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mSecurityCategories:Ljava/util/List;

    if-eqz v0, :cond_7

    if-eqz p4, :cond_69

    :cond_7
    if-eqz p2, :cond_28

    const-string/jumbo v0, "CategoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceClearCache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_28
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mSecurityCategories:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mSecurityCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    iget-object v1, v6, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_55

    goto :goto_41

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->sortCategories(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->filterDuplicateTiles(Ljava/util/Map;)V
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_55

    :cond_69
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V
    .registers 19
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_41

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v5, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-nez v11, :cond_34

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_e

    :catchall_3e
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_41
    :try_start_41
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_61
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    sget-object v14, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v15, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    const/4 v13, 0x1

    goto :goto_61

    :cond_79
    const/4 v12, 0x1

    :cond_7a
    if-eqz v13, :cond_49

    xor-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_49

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_84
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    sget-object v14, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v15, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v3, :cond_b0

    new-instance v3, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v3}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    iget-object v14, v3, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catchall {:try_start_41 .. :try_end_b5} :catchall_3e

    goto :goto_84

    :cond_b6
    monitor-exit p0

    return-void
.end method

.method declared-synchronized filterDuplicateTiles(Ljava/util/Map;)V
    .registers 13
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    add-int/lit8 v5, v4, -0x1

    :goto_28
    if-ltz v5, :cond_9

    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/Tile;

    iget-object v8, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v8, :cond_39

    :goto_36
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    :cond_39
    iget-object v8, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    const-string/jumbo v8, "CategoryManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "filterDuplicateTiles : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_67

    goto :goto_36

    :catchall_67
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_6a
    :try_start_6a
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_67

    goto :goto_36

    :cond_6e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getCategories(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->getCategories(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCategories(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/drawer/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTilesByCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "com.android.settings.category.ia.security"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitSecurityCategories(Landroid/content/Context;ZLjava/lang/String;Z)V

    :goto_f
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d

    monitor-exit p0

    return-object v0

    :cond_19
    :try_start_19
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_f

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    const-string/jumbo v1, "CategoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reloadAllCategories( : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized sortCategories(Landroid/content/Context;Ljava/util/Map;)V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v2}, Lcom/android/settingslib/drawer/CategoryManager;->sortCategoriesForExternalTiles(Landroid/content/Context;Lcom/android/settingslib/drawer/DashboardCategory;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_9

    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_22
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateCategoryFromBlacklist(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v5, :cond_e

    const-string/jumbo v5, "CategoryManager"

    const-string/jumbo v6, "Category is null, skipping blacklist update"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string/jumbo v5, "CategoryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCategories.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2f
    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5e

    const-string/jumbo v6, "CategoryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCategories : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v5, v5, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_c2

    iget-object v5, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    const/4 v2, 0x0

    move v3, v2

    :goto_71
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_bf

    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    const-string/jumbo v5, "CategoryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCategoryFromBlacklist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_bb
    .catchall {:try_start_1 .. :try_end_bb} :catchall_c4

    :goto_bb
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_71

    :cond_bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_c2
    monitor-exit p0

    return-void

    :catchall_c4
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_c7
    move v2, v3

    goto :goto_bb
.end method
