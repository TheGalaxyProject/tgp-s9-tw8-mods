.class public Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisPreveiwStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;
    }
.end annotation


# instance fields
.field isFlags:Ljava/lang/Boolean;

.field mGridView:Landroid/widget/GridView;

.field private mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

.field public final mIrisPreviewImages:[I

.field private mPreviewImgResIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mStyleNum:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->isFlags:Ljava/lang/Boolean;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    return-void

    :array_14
    .array-data 4
        0x7f080362
        0x7f080363
        0x7f080364
        0x7f080365
        0x7f080366
        0x7f080367
        0x7f080368
        0x7f080369
        0x7f08036a
        0x7f08036b
        0x7f08036c
        0x7f08036d
        0x7f08036e
        0x7f08036f
        0x7f080370
        0x7f080371
        0x7f080372
        0x7f080373
    .end array-data
.end method

.method public static getDrawableFromAssets(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "iris_mask/Iris_mask.qmg"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_1d
    .catchall {:try_start_2 .. :try_end_11} :catchall_2c

    move-result-object v0

    if-eqz v2, :cond_17

    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catch_1d
    move-exception v1

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    if-eqz v2, :cond_17

    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_17

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_2c
    move-exception v3

    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    throw v3

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6

    new-instance v1, Lcom/samsung/android/settings/iris/IrisIconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/iris/IrisIconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07049f

    const v3, 0x7f07049d

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/iris/IrisIconResizer;->setIconSize(II)V

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/iris/IrisIconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method private refreshLayout()V
    .registers 12

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v7, 0x0

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070498

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07049a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07049f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v8, v5

    div-float v4, v8, v0

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v8, v0, v8

    if-lez v8, :cond_44

    float-to-int v8, v4

    mul-int/lit8 v5, v8, 0x3

    iget-object v8, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_44
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v10, :cond_65

    iget-object v8, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    mul-int/lit8 v8, v5, 0x3

    sub-int v8, v6, v8

    mul-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x2

    iget-object v8, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v7, v3, v7, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    :goto_64
    return-void

    :cond_65
    iget-object v8, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    mul-int/lit8 v8, v5, 0x2

    sub-int v8, v6, v8

    sub-int/2addr v8, v2

    div-int/lit8 v7, v8, 0x2

    iget-object v8, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v7, v3, v7, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    goto :goto_64
.end method

.method private setContent()V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_d
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_53

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    array-length v5, v5

    if-ne v1, v5, :cond_3d

    if-nez v4, :cond_1e

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    const/4 v3, 0x0

    :try_start_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getDrawableFromAssets(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_37} :catch_38

    goto :goto_1b

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1b

    :cond_3d
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_53
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private viewInit()V
    .registers 5

    const-string/jumbo v0, "IrisPreveiwStyleFragment"

    const-string/jumbo v1, "viewInit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a038c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    const v3, 0x7f0d015b

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "iris_preview_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2084

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->refreshLayout()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f120e48

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f0d015c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_50

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :pswitch_1e
    :try_start_1e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "themestore://MainPage?contentsType=themes"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_36} :catch_4a

    :goto_36
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0299

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const/4 v2, 0x1

    return v2

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_36

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->viewInit()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->setContent()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->refreshLayout()V

    return-void
.end method
