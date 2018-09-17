.class public Lcom/android/settings/datausage/AppDataUsageActivity;
.super Lcom/android/settings/SettingsActivity;
.source "AppDataUsageActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_26

    :cond_c
    const-string/jumbo v9, "AppDataUsageActivity"

    const-string/jumbo v10, "intent data is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_15
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1c
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    :goto_1b
    return-void

    :catch_1c
    move-exception v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    goto :goto_1b

    :catchall_21
    move-exception v9

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    throw v9

    :cond_26
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v9, 0x0

    :try_start_33
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_36} :catch_70

    move-result v8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/android/settingslib/AppItem;

    invoke-direct {v0, v8}, Lcom/android/settingslib/AppItem;-><init>(I)V

    invoke-virtual {v0, v8}, Lcom/android/settingslib/AppItem;->addUid(I)V

    const-string/jumbo v9, "app_item"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v9, ":settings:show_fragment_args"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v9, ":settings:show_fragment"

    const-class v10, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, ":settings:show_fragment_title_resid"

    const v10, 0x7f1201bf

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, ":android:no_headers"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :catch_70
    move-exception v2

    const-string/jumbo v9, "AppDataUsageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8b
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_92
    .catchall {:try_start_8b .. :try_end_8e} :catchall_97

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    :goto_91
    return-void

    :catch_92
    move-exception v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    goto :goto_91

    :catchall_97
    move-exception v9

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    throw v9
.end method
