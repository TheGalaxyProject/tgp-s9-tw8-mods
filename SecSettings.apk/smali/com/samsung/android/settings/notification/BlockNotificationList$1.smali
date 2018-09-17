.class Lcom/samsung/android/settings/notification/BlockNotificationList$1;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v29

    monitor-enter v29

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    const-string/jumbo v28, "BlockNotificationList"

    const-string/jumbo v30, "Collecting apps..."

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_101

    move-result-object v28

    if-nez v28, :cond_49

    monitor-exit v29

    return-void

    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get8(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;

    move-result-object v28

    new-instance v30, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v31

    invoke-direct/range {v30 .. v31}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v16

    const-string/jumbo v28, "BlockNotificationList"

    const-string/jumbo v30, "  launchable activities:"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_87
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_108

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/LauncherActivityInfo;

    const-string/jumbo v28, "BlockNotificationList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "    "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_104

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->showBlockNotiication(Ljava/lang/String;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_104

    const-string/jumbo v28, "XPC"

    const-string/jumbo v30, "continue"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catchall {:try_start_49 .. :try_end_100} :catchall_101

    goto :goto_87

    :catchall_101
    move-exception v28

    monitor-exit v29

    throw v28

    :cond_104
    :try_start_104
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_108
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/notification/BlockNotificationList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v21

    const-string/jumbo v28, "BlockNotificationList"

    const-string/jumbo v30, "  config activities:"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_11d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1b2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v28, "BlockNotificationList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "    "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_1ad

    const-string/jumbo v28, "XPC"

    const-string/jumbo v30, "222 continue"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    :cond_1ad
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :cond_1b2
    const/16 v28, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v17

    const/4 v7, 0x0

    :goto_1bd
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
    :try_end_1c0
    .catchall {:try_start_104 .. :try_end_1c0} :catchall_101

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_213

    :try_start_1c5
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v30, 0x80

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    if-eqz v28, :cond_20b

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string/jumbo v30, "com.samsung.android.notification.blockable"

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_20b

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c5 .. :try_end_20b} :catch_20e
    .catchall {:try_start_1c5 .. :try_end_20b} :catchall_101

    :cond_20b
    :goto_20b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1bd

    :catch_20e
    move-exception v6

    :try_start_20f
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_20b

    :cond_213
    const/4 v7, 0x0

    :goto_214
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_2c5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_25f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_240
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_25f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_240

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_25f
    sget-object v30, Lcom/samsung/android/settings/notification/SecNotiUtils;->excludeKnoxApp:[Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_268
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_283

    aget-object v18, v30, v28

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2bf

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get7(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v28

    if-eqz v28, :cond_2bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get0(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;

    move-result-object v30

    const/16 v28, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_2a0
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_2bb

    aget-object v18, v30, v28

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2c2

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_2bb
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_214

    :cond_2bf
    add-int/lit8 v28, v28, 0x1

    goto :goto_268

    :cond_2c2
    add-int/lit8 v28, v28, 0x1

    goto :goto_2a0

    :cond_2c5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2c9
    :goto_2c9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_319

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-static {v0, v10, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;Landroid/content/Context;)Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c9

    :cond_319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get12()Ljava/util/Comparator;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v28

    if-eqz v28, :cond_387

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get6(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get11(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v8, v30, v26

    const-string/jumbo v28, "BlockNotificationList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Collected "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " apps in "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "ms"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " mSortedRows.size=="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e6
    .catchall {:try_start_20f .. :try_end_3e6} :catchall_101

    monitor-exit v29

    return-void
.end method
