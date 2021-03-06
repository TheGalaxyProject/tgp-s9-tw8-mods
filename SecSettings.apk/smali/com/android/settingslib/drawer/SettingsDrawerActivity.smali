.class public Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

.field private mSettingsUIObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Landroid/util/ArraySet;
    .registers 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSettingPkg()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.android.settings"

    return-object v0
.end method

.method protected onCategoriesChanged()V
    .registers 4

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    sget v2, Lcom/android/settingslib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public onNavigateUp()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onProfileTileOpen()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "settings_ui"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_18
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v1, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentView(I)V
    .registers 4

    sget v1, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_d
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v4, :cond_43

    const/4 v0, 0x1

    :goto_c
    const-string/jumbo v3, "SettingsDrawerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTileEnabled :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p2, :cond_35

    if-nez v2, :cond_42

    :cond_35
    if-eqz p2, :cond_45

    sget-object v3, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_3c
    if-eqz p2, :cond_4b

    move v3, v4

    :goto_3f
    invoke-virtual {v1, p1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_42
    return-void

    :cond_43
    const/4 v0, 0x0

    goto :goto_c

    :cond_45
    sget-object v3, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_4b
    const/4 v3, 0x2

    goto :goto_3f
.end method

.method public updateCategories()V
    .registers 3

    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
