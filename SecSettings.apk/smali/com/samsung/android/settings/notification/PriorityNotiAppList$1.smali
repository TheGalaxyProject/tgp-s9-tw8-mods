.class Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v25

    monitor-enter v25

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_22

    const-string/jumbo v24, "PriorityNotiAppList"

    const-string/jumbo v26, "Collecting apps..."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_e5

    move-result-object v24

    if-nez v24, :cond_4f

    monitor-exit v25

    return-void

    :cond_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get10(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v24

    new-instance v26, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v15

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_8f

    const-string/jumbo v24, "PriorityNotiAppList"

    const-string/jumbo v26, "  launchable activities:"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_93
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_cb

    const-string/jumbo v24, "PriorityNotiAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catchall {:try_start_4f .. :try_end_e4} :catchall_e5

    goto :goto_93

    :catchall_e5
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_e8
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get11(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_109

    const-string/jumbo v24, "PriorityNotiAppList"

    const-string/jumbo v26, "  config activities:"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_10d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_180

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_160

    const-string/jumbo v24, "PriorityNotiAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_160
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10d

    :cond_180
    const/4 v8, 0x0

    :goto_181
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v8, v0, :cond_1fc

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get1(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_1a0
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_1bb

    aget-object v16, v26, v24

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f6

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get8(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Z

    move-result v24

    if-eqz v24, :cond_1f3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get2(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_1d8
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_1f3

    aget-object v16, v26, v24

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f9

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    :cond_1f3
    add-int/lit8 v8, v8, 0x1

    goto :goto_181

    :cond_1f6
    add-int/lit8 v24, v24, 0x1

    goto :goto_1a0

    :cond_1f9
    add-int/lit8 v24, v24, 0x1

    goto :goto_1d8

    :cond_1fc
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_200
    :goto_200
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_24e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_200

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get11(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get4(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v9, v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_200

    :cond_24e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get11(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get13()Ljava/util/Comparator;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get7(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get12(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v6, v26, v22

    invoke-static {}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get0()Z

    move-result v24

    if-eqz v24, :cond_31f

    const-string/jumbo v24, "PriorityNotiAppList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Collected "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get14(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " apps in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mSortedRows.size=="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31f
    .catchall {:try_start_e8 .. :try_end_31f} :catchall_e5

    :cond_31f
    monitor-exit v25

    return-void
.end method
