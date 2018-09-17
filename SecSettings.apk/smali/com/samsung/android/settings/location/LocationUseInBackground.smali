.class public Lcom/samsung/android/settings/location/LocationUseInBackground;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationUseInBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;,
        Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;
    }
.end annotation


# instance fields
.field private final OPTION_MENU_NOTIFICATION:I

.field private TAG:Ljava/lang/String;

.field private mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

.field private mOFF:Landroid/view/View;

.field private mON:Landroid/view/View;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/location/LocationUseInBackground;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getLocationPermissionPackage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/location/LocationUseInBackground;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setLocationListUp(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-class v0, Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->OPTION_MENU_NOTIFICATION:I

    return-void
.end method

.method private getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v4

    return-object v4

    :catch_a
    move-exception v0

    :try_start_b
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1c} :catch_1d

    return-object v3

    :catch_1d
    move-exception v1

    const/4 v4, 0x0

    return-object v4
.end method

.method private getLocationPermissionPackage()Ljava/util/ArrayList;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "android.permission-group.LOCATION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_15

    const/4 v3, 0x0

    return-object v3

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v29, Landroid/content/Intent;

    const-string/jumbo v30, "android.intent.action.MAIN"

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v30, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_66
    const-string/jumbo v3, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/location/LocationManager;

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v24 .. v24}, Landroid/location/LocationManager;->getLocWhitelist()Ljava/util/HashMap;

    move-result-object v23

    const-string/jumbo v9, ""

    const/4 v6, 0x1

    const/16 v19, 0x0

    const-string/jumbo v5, ""

    const/16 v3, 0x1000

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    const/16 v16, 0x0

    :goto_8d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_263

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_a4

    :cond_a1
    :goto_a1
    add-int/lit8 v16, v16, 0x1

    goto :goto_8d

    :cond_a4
    const/16 v20, 0x0

    :goto_a6
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_a1

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    :cond_b5
    :goto_b5
    add-int/lit8 v20, v20, 0x1

    goto :goto_a6

    :cond_b8
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v27, v3, v20

    const/16 v28, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_c2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_e6

    move/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    move/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/PermissionInfo;

    const/16 v19, 0x1

    :cond_e6
    if-eqz v19, :cond_b5

    const-string/jumbo v3, "android.permission-group.LOCATION"

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v4, v3, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-static {v4}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystem(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_137

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_137

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "[system package name ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :cond_134
    add-int/lit8 v21, v21, 0x1

    goto :goto_c2

    :cond_137
    if-eqz v23, :cond_181

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_181

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v3, v0, :cond_181

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "[whitelist package name ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    :cond_181
    invoke-static {v4}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_b5

    :try_start_187
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v29, 0x2710

    move/from16 v0, v29

    if-lt v3, v0, :cond_b5

    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v29, 0x4e1f

    move/from16 v0, v29

    if-gt v3, v0, :cond_b5

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v25

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v29, 0x16

    move/from16 v0, v29

    if-le v3, v0, :cond_254

    const/4 v8, 0x1

    :goto_1b5
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v20

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_257

    const/4 v7, 0x1

    :goto_1be
    if-nez v8, :cond_207

    const-string/jumbo v3, "android"

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25a

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_1d9
    if-eqz v11, :cond_25f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    const-class v29, Landroid/app/AppOpsManager;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v3, v11, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_25d

    const/4 v12, 0x1

    :goto_200
    if-eqz v7, :cond_261

    if-eqz v11, :cond_206

    if-eqz v12, :cond_261

    :cond_206
    const/4 v7, 0x1

    :cond_207
    :goto_207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "[package name ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "] [Granted = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_252
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_187 .. :try_end_252} :catch_267

    goto/16 :goto_a1

    :cond_254
    const/4 v8, 0x0

    goto/16 :goto_1b5

    :cond_257
    const/4 v7, 0x0

    goto/16 :goto_1be

    :cond_25a
    const/4 v11, 0x0

    goto/16 :goto_1d9

    :cond_25d
    const/4 v12, 0x0

    goto :goto_200

    :cond_25f
    const/4 v12, 0x0

    goto :goto_200

    :cond_261
    const/4 v7, 0x0

    goto :goto_207

    :cond_263
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v10

    :catch_267
    move-exception v14

    goto/16 :goto_b5
.end method

.method public static isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "android.permission-group.LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isNetworkLocationProvider(Ljava/lang/String;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isNetworkLocationProvider(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    :try_start_b
    invoke-interface {v1}, Landroid/location/ILocationManager;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_14

    move-result v2

    return v2

    :catch_14
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private static isSystem(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public static isSystemFixed(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method private setLocationListUp(Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    const-string/jumbo v15, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/LocationManager;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v10}, Landroid/location/LocationManager;->getLocBlacklist()Ljava/util/HashMap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0300da

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_152

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iget v13, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-boolean v11, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    new-instance v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_10a

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->clearItems()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItems([Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setGrantedState(Z)V

    if-eqz v9, :cond_148

    if-eqz v11, :cond_13c

    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7b

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_115

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    const/4 v6, 0x1

    :cond_a6
    :goto_a6
    if-nez v6, :cond_b0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    :cond_b0
    :goto_b0
    invoke-virtual {v1, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPersistent(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-boolean v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIsRuntimePermission(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageInfo(Landroid/content/pm/PackageInfo;)V

    new-instance v5, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v5, v15}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0704d6

    invoke-virtual {v5, v15}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v15}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_10a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v15, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2b

    :cond_115
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_a6

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ge v13, v15, :cond_a6

    const/4 v6, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto/16 :goto_a6

    :cond_13c
    if-nez v11, :cond_b0

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto/16 :goto_b0

    :cond_148
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto/16 :goto_b0

    :cond_152
    return-void
.end method

.method public static shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1, p2}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x3f

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    const v0, 0x7f150088

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "location_use_in_background_app_list_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setHasOptionsMenu(Z)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1300fe

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f1202e8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_a0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d017e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v4, 0x7f0a04cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v4, 0x7f0a04cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "background_location_noti_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_8f

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_51
    :goto_51
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$1;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$2;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f1202ec

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/location/LocationUseInBackground$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$3;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return v5

    :cond_8f
    if-nez v1, :cond_51

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_51

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1a
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v3, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;)V

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_29
    if-eqz v1, :cond_3d

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.intent.action.NSFLP_CLEAR_NOTI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3d
    return-void
.end method
