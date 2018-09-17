.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/OptionsMenuFragment;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MasterClear$1;,
        Lcom/android/settings/MasterClear$2;,
        Lcom/android/settings/MasterClear$3;
    }
.end annotation


# static fields
.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mAllPreloadApps:Landroid/widget/RadioButton;

.field private mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mExceptRemovedApps:Landroid/widget/RadioButton;

.field private mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mPinConfirmed:Z

.field private mPreloadAppsRestoreDescription:Landroid/widget/TextView;

.field private mPreloadAppsRestoreOption:I

.field private mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

.field private mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

.field private mStrSdVolumeId:Ljava/lang/String;

.field private mTipSmartSwitchLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/MasterClear;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/MasterClear;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/MasterClear;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/MasterClear;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/MasterClear;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->setPreloadAppsResetOption(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/MasterClear;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/MasterClear;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showResetBatteryCheckDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/MasterClear$2;

    invoke-direct {v0}, Lcom/android/settings/MasterClear$2;-><init>()V

    sput-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    iput-object v1, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    iput v0, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/MasterClear$3;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .registers 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f0a0505

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f0a06e2

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    const/4 v8, 0x0

    :try_start_2f
    new-instance v24, Ljava/io/FileInputStream;

    new-instance v34, Ljava/io/File;

    const-string/jumbo v35, "/system/etc/removable_preload.txt"

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_40} :catch_294
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_40} :catch_b5
    .catchall {:try_start_2f .. :try_end_40} :catchall_d8

    :try_start_40
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v34, Ljava/io/InputStreamReader;

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_50} :catch_297
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_50} :catch_29c
    .catchall {:try_start_40 .. :try_end_50} :catchall_289

    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_9d

    const-string/jumbo v34, "name="

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_50

    const-string/jumbo v34, "name=\'"

    const-string/jumbo v35, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "\'"

    const-string/jumbo v36, ""

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_84} :catch_85
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_84} :catch_2a1
    .catchall {:try_start_50 .. :try_end_84} :catchall_28e

    goto :goto_50

    :catch_85
    move-exception v15

    move-object v8, v9

    move-object/from16 v23, v24

    :goto_89
    :try_start_89
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_d8

    if-eqz v8, :cond_91

    :try_start_8e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_ce

    :cond_91
    :goto_91
    if-eqz v23, :cond_96

    :try_start_93
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_d3

    :cond_96
    :goto_96
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_ee

    return-void

    :cond_9d
    if-eqz v9, :cond_a2

    :try_start_9f
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ab

    :cond_a2
    :goto_a2
    if-eqz v24, :cond_a7

    :try_start_a4
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_b0

    :cond_a7
    :goto_a7
    move-object v8, v9

    move-object/from16 v23, v24

    goto :goto_96

    :catch_ab
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    :catch_b0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7

    :catch_b5
    move-exception v14

    :goto_b6
    :try_start_b6
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_d8

    if-eqz v8, :cond_be

    :try_start_bb
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c9

    :cond_be
    :goto_be
    if-eqz v23, :cond_96

    :try_start_c0
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_96

    :catch_c4
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    :catch_c9
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_be

    :catch_ce
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_91

    :catch_d3
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    :catchall_d8
    move-exception v34

    :goto_d9
    if-eqz v8, :cond_de

    :try_start_db
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e4

    :cond_de
    :goto_de
    if-eqz v23, :cond_e3

    :try_start_e0
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e9

    :cond_e3
    :goto_e3
    throw v34

    :catch_e4
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_de

    :catch_e9
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e3

    :cond_ee
    new-instance v19, Ljava/util/HashSet;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string/jumbo v34, "layout_inflater"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :goto_11b
    move/from16 v0, v20

    if-ge v0, v5, :cond_216

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    :try_start_123
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v30

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v34, v0
    :try_end_153
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_123 .. :try_end_153} :catch_286

    and-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_15a

    :goto_157
    add-int/lit8 v20, v20, 0x1

    goto :goto_11b

    :cond_15a
    const/16 v21, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const v34, 0x7f0d0193

    const/16 v35, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v21, :cond_1c5

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0704d6

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v18

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1c5
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const-string/jumbo v35, "\\."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v25, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v35, v0

    :goto_1df
    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_203

    aget-object v27, v28, v34

    const-string/jumbo v36, "sec"

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_201

    const-string/jumbo v36, "samsung"

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_20c

    :cond_201
    const/16 v25, 0x1

    :cond_203
    if-eqz v25, :cond_20f

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_157

    :cond_20c
    add-int/lit8 v34, v34, 0x1

    goto :goto_1df

    :cond_20f
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_157

    :cond_216
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_223

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_223

    return-void

    :cond_223
    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static/range {v33 .. v34}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v7, :cond_26f

    const/16 v20, 0x0

    :goto_235
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_251

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_235

    :cond_251
    const/16 v20, 0x0

    :goto_253
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_26f

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_253

    :cond_26f
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v7, :cond_285

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_285
    return-void

    :catch_286
    move-exception v13

    goto/16 :goto_157

    :catchall_289
    move-exception v34

    move-object/from16 v23, v24

    goto/16 :goto_d9

    :catchall_28e
    move-exception v34

    move-object v8, v9

    move-object/from16 v23, v24

    goto/16 :goto_d9

    :catch_294
    move-exception v15

    goto/16 :goto_89

    :catch_297
    move-exception v15

    move-object/from16 v23, v24

    goto/16 :goto_89

    :catch_29c
    move-exception v14

    move-object/from16 v23, v24

    goto/16 :goto_b6

    :catch_2a1
    move-exception v14

    move-object v8, v9

    move-object/from16 v23, v24

    goto/16 :goto_b6
.end method

.method private addSmartSwitchTipView()V
    .registers 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e4

    new-instance v7, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/MasterClear;->mTipSmartSwitchLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v7, p0, Lcom/android/settings/MasterClear;->mTipSmartSwitchLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v7, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->enableLinkDivider(Z)V

    iget-object v7, p0, Lcom/android/settings/MasterClear;->mTipSmartSwitchLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const v8, 0x7f120b7f

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->setTitleText(I)V

    iget-object v7, p0, Lcom/android/settings/MasterClear;->mTipSmartSwitchLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const v8, 0x7f121132

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushDescriptionText(I)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SMART_SWITCH"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b5

    const-string/jumbo v7, "setupwizard"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b5

    const-string/jumbo v7, "none"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_b5

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b5

    :try_start_70
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.android.easyMover"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_e5

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/content/ActivityNotFoundException; {:try_start_70 .. :try_end_89} :catch_ed

    const/high16 v7, 0x10000000

    :try_start_8b
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "EXTERNAL_BNR"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_95
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8b .. :try_end_95} :catch_fb

    move-object v2, v3

    :goto_96
    :try_start_96
    const-string/jumbo v7, "flowId"

    const/16 v8, 0x2333

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "callerMetric"

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V
    :try_end_ad
    .catch Landroid/content/ActivityNotFoundException; {:try_start_96 .. :try_end_ad} :catch_ed

    :try_start_ad
    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v7, 0x7f1219d5

    iput v7, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I
    :try_end_b4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ad .. :try_end_b4} :catch_fe

    move-object v4, v5

    :cond_b5
    :goto_b5
    if-eqz v4, :cond_e4

    iget-object v7, p0, Lcom/android/settings/MasterClear;->mTipSmartSwitchLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.sec.android.easyMover"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d4

    new-instance v7, Lcom/android/settings/MasterClear$8;

    invoke-direct {v7, p0}, Lcom/android/settings/MasterClear$8;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d4
    iget-object v8, p0, Lcom/android/settings/MasterClear;->mTipSmartSwitchLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v7, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0a07e7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;->attachToLayout(Landroid/widget/LinearLayout;)V

    :cond_e4
    return-void

    :cond_e5
    :try_start_e5
    const-string/jumbo v7, "EXTERNAL_BNR"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_ec
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e5 .. :try_end_ec} :catch_ed

    goto :goto_96

    :catch_ed
    move-exception v0

    :goto_ee
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "not found activity"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :catch_fb
    move-exception v0

    move-object v2, v3

    goto :goto_ee

    :catch_fe
    move-exception v0

    move-object v4, v5

    goto :goto_ee
.end method

.method private checkReactivationLock()Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    sget-object v2, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_43

    const/4 v1, 0x1

    const-string/jumbo v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return v1

    :cond_43
    const/4 v2, 0x0

    return v2
.end method

.method private establishInitialState()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a042b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a02d6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a02d5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v9

    if-nez v9, :cond_5e

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-nez v18, :cond_3cd

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v18

    if-eqz v18, :cond_3cd

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a02d7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a0079

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f121124

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12111b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12111c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12111f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f121121

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f121120

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f121123

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12111e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_3b1

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_191
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v18

    if-eqz v18, :cond_1cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a007a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12180a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    xor-int/lit8 v19, v9, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1da
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    const-string/jumbo v18, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_219

    const-string/jumbo v18, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_219

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v18

    if-nez v18, :cond_219

    const-string/jumbo v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2bf

    :cond_219
    if-eqz v9, :cond_2bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a02d9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v18, 0x7f1209a7

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a02d8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v18, 0x7f1209a6

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "storage"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_25e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_29a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/VolumeInfo;

    if-eqz v15, :cond_25e

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v18

    if-nez v18, :cond_25e

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v18

    if-eqz v18, :cond_25e

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v18

    if-eqz v18, :cond_25e

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v18

    if-eqz v18, :cond_25e

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    :cond_29a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2bf
    const-string/jumbo v18, "ro.config.rm_preload_enabled"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->addDescriptionForRemovingPreloadApp()V

    :cond_2d3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v19, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_396

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a0656

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a0073

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a02ec

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a0072

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a02eb

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a0657

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear;->setPreloadAppsResetOption(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$6;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$7;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_396
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0a0503

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3b1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_191

    :cond_3cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1da
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_7

    return-void

    :cond_7
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1f

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_33

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_33

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .registers 3

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .registers 41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f0a0021

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f0a0020

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v25

    const-string/jumbo v36, "layout_inflater"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    const/16 v29, 0x0

    :goto_45
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_226

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v35

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    new-instance v34, Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v36

    if-nez v36, :cond_70

    invoke-virtual/range {v35 .. v35}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v36

    if-eqz v36, :cond_73

    :cond_70
    :goto_70
    add-int/lit8 v29, v29, 0x1

    goto :goto_45

    :cond_73
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    array-length v6, v8

    if-eqz v6, :cond_70

    add-int/2addr v9, v6

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    const v36, 0x1020016

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    invoke-virtual/range {v35 .. v35}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v36

    if-eqz v36, :cond_10b

    const v36, 0x7f120586

    :goto_aa
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v21, 0x0

    :goto_b8
    move/from16 v0, v21

    if-ge v0, v6, :cond_20f

    aget-object v7, v8, v21

    const/4 v15, 0x0

    const/16 v24, 0x0

    :goto_c1
    move/from16 v0, v24

    if-ge v0, v5, :cond_d9

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    aget-object v37, v16, v24

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10f

    aget-object v15, v16, v24

    :cond_d9
    if-nez v15, :cond_112

    const-string/jumbo v36, "MasterClear"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "No descriptor for account name="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " type="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_108
    add-int/lit8 v21, v21, 0x1

    goto :goto_b8

    :cond_10b
    const v36, 0x7f120585

    goto :goto_aa

    :cond_10f
    add-int/lit8 v24, v24, 0x1

    goto :goto_c1

    :cond_112
    const/16 v22, 0x0

    :try_start_114
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v36, v0

    if-eqz v36, :cond_15c

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v34

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1b2

    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    const/16 v37, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_15b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_114 .. :try_end_15b} :catch_1ee
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_114 .. :try_end_15b} :catch_1c7

    move-result-object v22

    :cond_15c
    :goto_15c
    if-nez v22, :cond_166

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    :cond_166
    const v36, 0x7f0d0193

    const/16 v37, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0704d6

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v20

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_108

    :cond_1b2
    :try_start_1b2
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_1c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b2 .. :try_end_1c5} :catch_1ee
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b2 .. :try_end_1c5} :catch_1c7

    move-result-object v22

    goto :goto_15c

    :catch_1c7
    move-exception v18

    const-string/jumbo v36, "MasterClear"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Invalid icon id for account type "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15c

    :catch_1ee
    move-exception v17

    const-string/jumbo v36, "MasterClear"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Bad package name for account type "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    :cond_20f
    if-nez v28, :cond_70

    invoke-static {v14}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v36

    const v37, 0x7f0d0193

    const v38, 0x7f0704d6

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/app/SemDualAppManager;->addDualAppAccounts(Landroid/widget/LinearLayout;II)V

    goto/16 :goto_70

    :cond_226
    if-lez v9, :cond_236

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f0a0603

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v36

    sub-int v36, v36, v31

    if-lez v36, :cond_259

    const/16 v19, 0x1

    :goto_24d
    if-eqz v19, :cond_25c

    const/16 v36, 0x0

    :goto_251
    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_259
    const/16 v19, 0x0

    goto :goto_24d

    :cond_25c
    const/16 v36, 0x8

    goto :goto_251
.end method

.method private runKeyguardConfirmation(I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private setPreloadAppsResetOption(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOption:I

    packed-switch p1, :pswitch_data_3e

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12150e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_23
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121510

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_23
    .end packed-switch
.end method

.method private showFinalConfirmation()V
    .registers 9

    const/4 v5, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "erase_sd"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "erase_sd_id"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "can_erase_sd_on_fuse"

    iget-boolean v1, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "preload_apps_restore_option"

    iget v1, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOption:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_37
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f121134

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private showResetBatteryCheckDialog()V
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    :cond_f
    iput-object v3, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/MasterClear$9;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$9;-><init>(Lcom/android/settings/MasterClear;)V

    new-instance v0, Lcom/android/settings/MasterClear$10;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$10;-><init>(Lcom/android/settings/MasterClear;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1210e5

    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_76

    const v2, 0x7f12112d

    :goto_40
    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120608

    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_76
    const v2, 0x7f12112c

    goto :goto_40
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OptionsMenuFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x38

    if-ne p1, v0, :cond_e

    if-ne p2, v1, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    :cond_d
    return-void

    :cond_e
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_17

    const/16 v0, 0x37

    if-eq p1, v0, :cond_17

    return-void

    :cond_17
    packed-switch p1, :pswitch_data_30

    :goto_1a
    :pswitch_1a
    return-void

    :pswitch_1b
    if-ne p2, v1, :cond_21

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_1a

    :cond_21
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_1a

    :pswitch_25
    if-ne p2, v1, :cond_2b

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_1a

    :cond_2b
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_1a

    nop

    :pswitch_data_30
    .packed-switch 0x37
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_25
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_30
    const v3, 0x7f0d0195

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_38
    if-eqz v0, :cond_4c

    const v3, 0x7f0d002f

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v0, v7}, Lcom/android/settings/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    return-object v2

    :cond_4c
    const v3, 0x7f0d0192

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->addSmartSwitchTipView()V

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v3
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onPause()V

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MasterClear"

    const-string/jumbo v2, "no BatteryReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public onResume()V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkReactivationLock()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_my_mobile"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2a
    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v3, :cond_3b

    iput-boolean v2, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    :cond_3b
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v5, "isFactoryResetAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v3, :cond_57

    const/4 v3, -0x1

    if-eq v0, v3, :cond_57

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-ne v0, v1, :cond_67

    :goto_54
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_57
    return-void

    :cond_58
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_my_mobile"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2a

    :cond_67
    move v1, v2

    goto :goto_54
.end method
