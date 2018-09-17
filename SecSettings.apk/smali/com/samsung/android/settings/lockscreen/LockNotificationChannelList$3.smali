.class Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;
.super Ljava/lang/Object;
.source "LockNotificationChannelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;

    move-result-object v29

    monitor-enter v29

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get0()Z

    move-result v28

    if-eqz v28, :cond_22

    const-string/jumbo v28, "LockNotiChannelList"

    const-string/jumbo v30, "Collecting apps..."

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get15(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_113

    move-result-object v28

    if-nez v28, :cond_4f

    monitor-exit v29

    return-void

    :cond_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get10(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/content/pm/LauncherApps;

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

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get0()Z

    move-result v28

    if-eqz v28, :cond_8f

    const-string/jumbo v28, "LockNotiChannelList"

    const-string/jumbo v30, "  launchable activities:"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_93
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_11b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get0()Z

    move-result v28

    if-eqz v28, :cond_cb

    const-string/jumbo v28, "LockNotiChannelList"

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

    :cond_cb
    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get6(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_116

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/settings/Utils;->showBlockNotiication(Ljava/lang/String;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_116

    const-string/jumbo v28, "XPC"

    const-string/jumbo v30, "continue"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_4f .. :try_end_112} :catchall_113

    goto :goto_93

    :catchall_113
    move-exception v28

    monitor-exit v29

    throw v28

    :cond_116
    :try_start_116
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_93

    :cond_11b
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v21

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get0()Z

    move-result v28

    if-eqz v28, :cond_132

    const-string/jumbo v28, "LockNotiChannelList"

    const-string/jumbo v30, "  config activities:"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_136
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1d1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get0()Z

    move-result v28

    if-eqz v28, :cond_189

    const-string/jumbo v28, "LockNotiChannelList"

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

    :cond_189
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

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get6(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_1cc

    const-string/jumbo v28, "XPC"

    const-string/jumbo v30, "222 continue"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_136

    :cond_1cc
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_136

    :cond_1d1
    const/16 v28, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v17

    const/4 v7, 0x0

    :goto_1dc
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
    :try_end_1df
    .catchall {:try_start_116 .. :try_end_1df} :catchall_113

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_232

    :try_start_1e4
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

    if-eqz v28, :cond_22a

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

    if-eqz v28, :cond_22a

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e4 .. :try_end_22a} :catch_22d
    .catchall {:try_start_1e4 .. :try_end_22a} :catchall_113

    :cond_22a
    :goto_22a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1dc

    :catch_22d
    move-exception v6

    :try_start_22e
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_22a

    :cond_232
    const/4 v7, 0x0

    :goto_233
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_2ec

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get16(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_27e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get16(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_25f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_27e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25f

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_27e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get1(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)[Ljava/lang/String;

    move-result-object v30

    const/16 v28, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_28f
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_2aa

    aget-object v18, v30, v28

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e6

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get9(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Z

    move-result v28

    if-eqz v28, :cond_2e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get2(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)[Ljava/lang/String;

    move-result-object v30

    const/16 v28, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_2c7
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_2e2

    aget-object v18, v30, v28

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e9

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_2e2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_233

    :cond_2e6
    add-int/lit8 v28, v28, 0x1

    goto :goto_28f

    :cond_2e9
    add-int/lit8 v28, v28, 0x1

    goto :goto_2c7

    :cond_2ec
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2f0
    :goto_2f0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_340

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get5(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get6(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-static {v0, v10, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;Landroid/content/Context;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f0

    :cond_340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get15(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get15(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get13()Ljava/util/Comparator;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get8(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get12(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/lang/Runnable;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v8, v30, v26

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get0()Z

    move-result v28

    if-eqz v28, :cond_407

    const-string/jumbo v28, "LockNotiChannelList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Collected "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;

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

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get15(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/ArrayList;

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
    :try_end_407
    .catchall {:try_start_22e .. :try_end_407} :catchall_113

    :cond_407
    monitor-exit v29

    return-void
.end method
