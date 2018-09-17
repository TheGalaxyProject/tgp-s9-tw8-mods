.class public Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AlphaComparator;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;,
        Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
    }
.end annotation


# instance fields
.field private grid_view:Landroid/widget/GridView;

.field handler:Landroid/os/Handler;

.field private mAppListAdapter:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

.field private mLoading:Landroid/view/ViewGroup;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPressType:I

.field private mState:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppListAdapter:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mAppListAdapter:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getAppListAdapter()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->startLoading()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->stopLoading()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->handler:Landroid/os/Handler;

    return-void
.end method

.method private doAppLoading(Z)V
    .registers 7

    const/4 v4, 0x1

    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->clear()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d

    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->startLoading()V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_d
.end method

.method private getAppImage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_1e

    move-result-object v0

    :goto_11
    if-nez v0, :cond_19

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_19
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->reSizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method private getAppListAdapter()Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;",
            ">;"
        }
    .end annotation

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->isAdded()Z

    move-result v5

    if-nez v5, :cond_c

    return-object v19

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v21

    if-nez v21, :cond_13

    return-object v19

    :cond_13
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v22, 0x200

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, v22

    invoke-virtual {v5, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_43
    :goto_43
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v5, :cond_43

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_43

    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_43

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getAppImage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_a4
    const/16 v22, 0x80

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, v22

    invoke-virtual {v5, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_b4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_128

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getAppImage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->isBlackList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_122

    :cond_11f
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIsEnabled:Z

    :cond_122
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    :cond_128
    new-instance v16, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AlphaComparator;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AlphaComparator;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_186

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    const-string/jumbo v8, "torch"

    const-string/jumbo v9, "torch"

    const v5, 0x7f12223a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f0807b4

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    const-string/jumbo v5, "torch/torch"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_176

    const-string/jumbo v5, "torch"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->isBlackList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_179

    :cond_176
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIsEnabled:Z

    :cond_179
    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v23

    :cond_186
    return-object v19
.end method

.method private getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private isBlackList(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    return v3

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    return v2

    :cond_20
    return v3
.end method

.method private reSizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6

    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07050a

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method private startLoading()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private stopLoading()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xc4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "pressed_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    :goto_2b
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a00ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    new-instance v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a04c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v3

    if-eqz v3, :cond_b7

    const v3, 0x7f122239

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_6c
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0185

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mBlackList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;)V

    iput-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    iget-boolean v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mState:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    return-void

    :cond_a4
    const-string/jumbo v3, "double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    goto/16 :goto_2b

    :cond_b2
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    goto/16 :goto_2b

    :cond_b7
    const v3, 0x7f120fea

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f0d0181

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iput-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mLoading:Landroid/view/ViewGroup;

    :cond_13
    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1b
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 5

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->restorePressActionFromBackup(Landroid/content/Context;I)V

    :goto_b
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->doAppLoading(Z)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->removePressActionAndMakeBackup(Landroid/content/Context;I)V

    goto :goto_b
.end method

.method protected savePressActionApp(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->mPressType:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->savePressActionApp(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
