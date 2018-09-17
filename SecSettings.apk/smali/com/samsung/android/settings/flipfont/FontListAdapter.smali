.class public Lcom/samsung/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# static fields
.field private static mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# instance fields
.field context:Landroid/content/Context;

.field private currentThemePath:Ljava/lang/String;

.field private downloadFontString:Ljava/lang/String;

.field private droidSansFont:Landroid/graphics/Typeface;

.field private mContext:Landroid/content/Context;

.field private mCurrentFontString:Ljava/lang/String;

.field private mCurrentThemeFontIndex:I

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentSelectedThemeFont:Z

.field private mIsCurrentThemeAdapted:Z

.field private mIsFontPreviewActivity:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 13

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v6, Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v6}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    iput-boolean v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    iput v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v6, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120c37

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1206ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    :try_start_7e
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8a
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_c7

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.monotype.android.font."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c4

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    :cond_c4
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_c7
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_d4} :catch_ec

    :goto_d4
    :try_start_d4
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/system/fonts/UIFont.ttf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_108

    const-string/jumbo v6, "/system/fonts/UIFont.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_eb} :catch_112

    :goto_eb
    return-void

    :catch_ec
    move-exception v1

    const-string/jumbo v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "font package not found, just use default font, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_108
    :try_start_108
    const-string/jumbo v6, "/system/fonts/DroidSans.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_111} :catch_112

    goto :goto_eb

    :catch_112
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_eb
.end method

.method public static destroyInstance()V
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_7

    sput-object v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_7
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 18

    const-string/jumbo v12, ".xml"

    const-string/jumbo v13, ".ttf"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :cond_13
    const-string/jumbo v12, "shaonv"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2e

    const-string/jumbo v12, "kaiti"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2e

    const-string/jumbo v12, "miao"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b4

    :cond_2e
    move-object v2, v3

    const-string/jumbo v12, ".ttf"

    const-string/jumbo v13, "_prev.ttf"

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_3a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "/system/fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_51} :catch_53

    move-result-object v4

    return-object v4

    :catch_53
    move-exception v6

    const/4 v12, 0x0

    :try_start_55
    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_71} :catch_a9

    :try_start_71
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8e} :catch_ac

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v12, v13}, Lcom/samsung/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12

    :catch_a9
    move-exception v7

    const/4 v12, 0x0

    return-object v12

    :catch_ac
    move-exception v9

    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12

    :cond_b4
    const/4 v12, 0x0

    :try_start_b5
    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d1} :catch_109

    :try_start_d1
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_ee} :catch_10c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v12, v13}, Lcom/samsung/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12

    :catch_109
    move-exception v6

    const/4 v12, 0x0

    return-object v12

    :catch_10c
    move-exception v5

    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 22

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_7d

    move-result-object v3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "content://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/fonts/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/4 v11, 0x0

    :try_start_37
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_81

    move-result-object v11

    const/4 v10, 0x0

    :try_start_3e
    const-string/jumbo v17, "font"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_46} :catch_85

    move-result-object v10

    const/4 v8, 0x0

    const/4 v12, 0x0

    :try_start_49
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4e} :catch_f5
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_b1
    .catchall {:try_start_49 .. :try_end_4e} :catchall_d0

    :try_start_4e
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_53} :catch_f8
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_53} :catch_fc
    .catchall {:try_start_4e .. :try_end_53} :catchall_ee

    const/16 v17, 0x400

    :try_start_55
    move/from16 v0, v17

    new-array v2, v0, [B

    const/4 v14, 0x0

    :goto_5a
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_8e

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v2, v0, v14}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_67} :catch_68
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_67} :catch_ff
    .catchall {:try_start_55 .. :try_end_67} :catchall_f1

    goto :goto_5a

    :catch_68
    move-exception v4

    move-object v12, v13

    move-object v8, v9

    :goto_6b
    const/16 v17, 0x0

    if-eqz v12, :cond_72

    :try_start_6f
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_ca

    :cond_72
    :goto_72
    if-eqz v8, :cond_77

    :try_start_74
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_cc

    :cond_77
    :goto_77
    if-eqz v11, :cond_7c

    :try_start_79
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_ce

    :cond_7c
    :goto_7c
    return-object v17

    :catch_7d
    move-exception v6

    const/16 v17, 0x0

    return-object v17

    :catch_81
    move-exception v6

    const/16 v17, 0x0

    return-object v17

    :catch_85
    move-exception v5

    :try_start_86
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8c

    :goto_89
    const/16 v17, 0x0

    return-object v17

    :catch_8c
    move-exception v7

    goto :goto_89

    :cond_8e
    :try_start_8e
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_94
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_94} :catch_68
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_94} :catch_ff
    .catchall {:try_start_8e .. :try_end_94} :catchall_f1

    if-eqz v13, :cond_99

    :try_start_96
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_ab

    :cond_99
    :goto_99
    if-eqz v9, :cond_9e

    :try_start_9b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_ad

    :cond_9e
    :goto_9e
    if-eqz v11, :cond_a3

    :try_start_a0
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_af

    :cond_a3
    :goto_a3
    :try_start_a3
    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_aa} :catch_e7

    return-object v15

    :catch_ab
    move-exception v5

    goto :goto_99

    :catch_ad
    move-exception v5

    goto :goto_9e

    :catch_af
    move-exception v5

    goto :goto_a3

    :catch_b1
    move-exception v5

    :goto_b2
    const/16 v17, 0x0

    if-eqz v12, :cond_b9

    :try_start_b6
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_c4

    :cond_b9
    :goto_b9
    if-eqz v8, :cond_be

    :try_start_bb
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c6

    :cond_be
    :goto_be
    if-eqz v11, :cond_c3

    :try_start_c0
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c8

    :cond_c3
    :goto_c3
    return-object v17

    :catch_c4
    move-exception v5

    goto :goto_b9

    :catch_c6
    move-exception v5

    goto :goto_be

    :catch_c8
    move-exception v5

    goto :goto_c3

    :catch_ca
    move-exception v5

    goto :goto_72

    :catch_cc
    move-exception v5

    goto :goto_77

    :catch_ce
    move-exception v5

    goto :goto_7c

    :catchall_d0
    move-exception v17

    :goto_d1
    if-eqz v12, :cond_d6

    :try_start_d3
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_e1

    :cond_d6
    :goto_d6
    if-eqz v8, :cond_db

    :try_start_d8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_e3

    :cond_db
    :goto_db
    if-eqz v11, :cond_e0

    :try_start_dd
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e5

    :cond_e0
    :goto_e0
    throw v17

    :catch_e1
    move-exception v5

    goto :goto_d6

    :catch_e3
    move-exception v5

    goto :goto_db

    :catch_e5
    move-exception v5

    goto :goto_e0

    :catch_e7
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v17, 0x0

    return-object v17

    :catchall_ee
    move-exception v17

    move-object v8, v9

    goto :goto_d1

    :catchall_f1
    move-exception v17

    move-object v12, v13

    move-object v8, v9

    goto :goto_d1

    :catch_f5
    move-exception v4

    goto/16 :goto_6b

    :catch_f8
    move-exception v4

    move-object v8, v9

    goto/16 :goto_6b

    :catch_fc
    move-exception v5

    move-object v8, v9

    goto :goto_b2

    :catch_ff
    move-exception v5

    move-object v12, v13

    move-object v8, v9

    goto :goto_b2
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_18

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :goto_c
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput-object p0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0

    :cond_18
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1211c6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v3, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_c
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_f

    monitor-exit v2

    return-void

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v2

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentThemeFontIndex()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    return v0
.end method

.method public getCurrentThemeString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .registers 7

    const v4, 0x7f1211d3

    const v3, 0x7f1211cb

    const v2, 0x7f1211ca

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    const-string/jumbo v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_26

    :cond_3d
    const-string/jumbo v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_26

    :cond_53
    const-string/jumbo v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_26

    :cond_69
    const-string/jumbo v1, "Chococooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_26

    :cond_7f
    const-string/jumbo v1, "Cooljazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_26

    :cond_95
    const-string/jumbo v1, "Samsungsans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    const-string/jumbo v1, "SamsungSans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    :cond_a7
    const-string/jumbo v0, "Samsung Sans"

    goto/16 :goto_26

    :cond_ac
    const-string/jumbo v1, "Applemint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_c6
    const-string/jumbo v1, "Tinkerbell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_e0
    const-string/jumbo v1, "Shaonv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_fa
    const-string/jumbo v1, "Kaiti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_114
    const-string/jumbo v1, "Miao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_12e
    const-string/jumbo v1, "UDRGothic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_148
    const-string/jumbo v1, "UDMincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_162
    const-string/jumbo v1, "Pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_17c
    const-string/jumbo v1, "Current theme\'s default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_196

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_196
    const-string/jumbo v1, "Foundation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_26

    :cond_1b0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    goto/16 :goto_26
.end method

.method public getFontTypeface(I)Landroid/graphics/Typeface;
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, p1, :cond_27

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_27
    if-nez v3, :cond_30

    :try_start_29
    const-string/jumbo v4, "/system/fonts/DroidSans.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_31

    move-result-object v3

    :cond_30
    :goto_30
    return-object v3

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getThemeFontCurrentPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const v8, 0x1020014

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d034d

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_16
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00ed

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v2, v7, v6, v7, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_48
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    if-eqz v2, :cond_5b

    return-object v2

    :cond_51
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0177

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_16

    :cond_5b
    return-object v1
.end method

.method public isCurrentThemeFontInstalled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    return v0
.end method

.method public isCurrentThemeFontSelected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    return v0
.end method

.method public loadTypefaces()V
    .registers 13

    const v11, 0x14000020

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1211e1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1211c5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v9, :cond_62

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_7d

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_7d

    :cond_62
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    sget-object v10, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v10, v10, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7d

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_7d
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_88
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_c2

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_ba

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_88

    :cond_ba
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_c2
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v9, :cond_103

    :try_start_c6
    const-string/jumbo v9, "FontListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadTypefaces currentThemePath : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v9, :cond_ed

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    :cond_ed
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v9, :cond_104

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_f6} :catch_112

    :cond_f6
    :goto_f6
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_103
    return-void

    :cond_104
    :try_start_104
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_f6

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_111} :catch_112

    goto :goto_f6

    :catch_112
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f6
.end method

.method public setInitDownloadFontAndThemeFont()V
    .registers 15

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    if-eqz v9, :cond_dd

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    if-eqz v9, :cond_dd

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_dd

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    const-string/jumbo v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/data/app_fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/sans.loc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_4b
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_50} :catch_ef
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_e0
    .catchall {:try_start_4b .. :try_end_50} :catchall_fc

    :try_start_50
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_5a} :catch_130
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5a} :catch_137
    .catchall {:try_start_50 .. :try_end_5a} :catchall_129

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6c

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_6c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_72} :catch_133
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_72} :catch_13a
    .catchall {:try_start_5a .. :try_end_72} :catchall_12c

    if-eqz v6, :cond_77

    :try_start_74
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_de

    :cond_77
    :goto_77
    move-object v0, v1

    move-object v5, v6

    :cond_79
    :goto_79
    const-string/jumbo v9, "Theme"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    iput-boolean v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    :goto_84
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v9, :cond_109

    const-string/jumbo v9, ""

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_109

    iput-boolean v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    :goto_97
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v9, :cond_10c

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v12, :cond_10c

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lez v9, :cond_c5

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    :cond_c5
    :goto_c5
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v12, :cond_dd

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_dd
    return-void

    :catch_de
    move-exception v3

    goto :goto_77

    :catch_e0
    move-exception v3

    :goto_e1
    :try_start_e1
    const-string/jumbo v8, "default"

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_fc

    if-eqz v5, :cond_79

    :try_start_e9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_79

    :catch_ed
    move-exception v3

    goto :goto_79

    :catch_ef
    move-exception v2

    :goto_f0
    :try_start_f0
    const-string/jumbo v8, "default"
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_fc

    if-eqz v5, :cond_79

    :try_start_f5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    goto :goto_79

    :catch_f9
    move-exception v3

    goto/16 :goto_79

    :catchall_fc
    move-exception v9

    :goto_fd
    if-eqz v5, :cond_102

    :try_start_ff
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_103

    :cond_102
    :goto_102
    throw v9

    :catch_103
    move-exception v3

    goto :goto_102

    :cond_105
    iput-boolean v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    goto/16 :goto_84

    :cond_109
    iput-boolean v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    goto :goto_97

    :cond_10c
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-nez v9, :cond_c5

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_c5

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_c5

    :catchall_129
    move-exception v9

    move-object v5, v6

    goto :goto_fd

    :catchall_12c
    move-exception v9

    move-object v0, v1

    move-object v5, v6

    goto :goto_fd

    :catch_130
    move-exception v2

    move-object v5, v6

    goto :goto_f0

    :catch_133
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    goto :goto_f0

    :catch_137
    move-exception v3

    move-object v5, v6

    goto :goto_e1

    :catch_13a
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_e1
.end method

.method public setmIsFontPreviewActivity(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    return-void
.end method
