.class public Lcom/samsung/android/settings/deviceinfo/PreloadedApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreloadedApps.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOptionMenuText:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mPreloadedPackageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->listUpPreloadedApps()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->listUpSystemApps()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method private listUpPreloadedApps()V
    .registers 19

    const/4 v4, 0x0

    const/4 v9, 0x0

    :try_start_2
    new-instance v6, Ljava/io/File;

    const-string/jumbo v15, "/efs/sec_efs/preloadinstalled.lst"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_28

    new-instance v15, Ljava/io/FileNotFoundException;

    const-string/jumbo v16, "There isn\'t file : /efs/sec_efs/preloadinstalled.lst"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_bb

    :catch_19
    move-exception v3

    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_bb

    if-eqz v4, :cond_22

    :try_start_1f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_af

    :cond_22
    :goto_22
    if-eqz v9, :cond_27

    :try_start_24
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_b5

    :cond_27
    :goto_27
    return-void

    :cond_28
    :try_start_28
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_19
    .catchall {:try_start_28 .. :try_end_2d} :catchall_bb

    :try_start_2d
    new-instance v10, Ljava/io/ObjectInputStream;

    invoke-direct {v10, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_d8
    .catchall {:try_start_2d .. :try_end_32} :catchall_d1

    :try_start_32
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    instance-of v15, v8, Ljava/util/HashSet;

    if-eqz v15, :cond_43

    move-object v0, v8

    check-cast v0, Ljava/util/HashSet;

    move-object v13, v0

    :cond_43
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_4c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8f

    const-string/jumbo v12, ""
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_55} :catch_8b
    .catchall {:try_start_32 .. :try_end_55} :catchall_d4

    :try_start_55
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6c} :catch_8b
    .catchall {:try_start_55 .. :try_end_6c} :catchall_d4

    goto :goto_4c

    :catch_6d
    move-exception v1

    :try_start_6e
    const-string/jumbo v15, "PreloadedApps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "This package is already removed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :catch_8b
    move-exception v3

    move-object v9, v10

    move-object v4, v5

    goto :goto_1a

    :cond_8f
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList(Ljava/util/List;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_98} :catch_8b
    .catchall {:try_start_6e .. :try_end_98} :catchall_d4

    if-eqz v5, :cond_9d

    :try_start_9a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a5

    :cond_9d
    :goto_9d
    if-eqz v10, :cond_a2

    :try_start_9f
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_aa

    :cond_a2
    :goto_a2
    move-object v9, v10

    move-object v4, v5

    goto :goto_27

    :catch_a5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    :catch_aa
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    :catch_af
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_22

    :catch_b5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_27

    :catchall_bb
    move-exception v15

    :goto_bc
    if-eqz v4, :cond_c1

    :try_start_be
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c7

    :cond_c1
    :goto_c1
    if-eqz v9, :cond_c6

    :try_start_c3
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_cc

    :cond_c6
    :goto_c6
    throw v15

    :catch_c7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c1

    :catch_cc
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c6

    :catchall_d1
    move-exception v15

    move-object v4, v5

    goto :goto_bc

    :catchall_d4
    move-exception v15

    move-object v9, v10

    move-object v4, v5

    goto :goto_bc

    :catch_d8
    move-exception v3

    move-object v4, v5

    goto/16 :goto_1a
.end method

.method private listUpSystemApps()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x100000

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v3, :cond_33

    const/4 v1, 0x0

    :goto_1d
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_33

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_33
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList(Ljava/util/List;)V

    return-void
.end method

.method private setList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;-><init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4b

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    new-instance v2, Lcom/samsung/android/settings/IconResizer;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0704d6

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v4, Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_4b
    return-void
.end method

.method private startAsyncTask(Z)V
    .registers 5

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;-><init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12117f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setHasOptionsMenu(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v0, v0, v2

    const v1, 0x44b59fe

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :goto_9
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    goto :goto_9

    :cond_27
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    goto :goto_9

    nop

    :pswitch_data_38
    .packed-switch 0x44b59fe
        :pswitch_e
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
