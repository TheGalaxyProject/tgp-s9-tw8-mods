.class Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "TaskBarModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;I[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mOp:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v24, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mOp:I

    packed-switch v3, :pswitch_data_22a

    :cond_26
    :goto_26
    const/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z

    if-eqz v3, :cond_1c9

    return-void

    :pswitch_35
    const/16 v27, 0x0

    :goto_37
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_71

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageUpdatedTask.updatePackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v30, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskbarLoader:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v6, v30, v27

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->updatePackage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_37

    :cond_71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->hasLocaleChanged()Z

    move-result v3

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->startLoaderFromBackground(Z)V

    goto :goto_26

    :pswitch_84
    const/16 v27, 0x0

    :goto_86
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_26

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_ac

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageUpdatedTask.removePackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v30, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskbarLoader:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v6, v30, v27

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6, v7, v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_86

    :pswitch_c0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_114

    const/4 v13, 0x1

    :goto_c8
    const/16 v27, 0x0

    :goto_ca
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_26

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_fb

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageUpdatedTask.updatePackageAvailability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v30, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v9, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskbarLoader:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

    sget-object v11, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v12, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object v10, v4

    move-object v14, v7

    move-object v15, v8

    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->updatePackageAvailability(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_ca

    :cond_114
    const/4 v13, 0x0

    goto :goto_c8

    :pswitch_116
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_16d

    const/16 v17, 0x1

    :goto_11f
    const/16 v27, 0x0

    :goto_121
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_26

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_154

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageUpdatedTask.updatePackageSuspended  suspended="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  packges="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v30, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v14, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskbarLoader:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

    sget-object v16, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v18, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v20, v0

    move-object v15, v4

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v20}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->updatePackageSuspended(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_121

    :cond_16d
    const/16 v17, 0x0

    goto :goto_11f

    :pswitch_170
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mOp:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1c6

    const/16 v21, 0x1

    :goto_17a
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_1ad

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageUpdatedTask.updatePackageAsUser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskbarLoader:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

    move-object/from16 v18, v0

    sget-object v20, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v23, v0

    move-object/from16 v19, v4

    move-object/from16 v22, v8

    invoke-virtual/range {v18 .. v23}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->updatePackageAsUserAvailable(Landroid/content/Context;Ljava/util/Map;ZLjava/util/List;Landroid/os/UserHandle;)V

    goto/16 :goto_26

    :cond_1c6
    const/16 v21, 0x0

    goto :goto_17a

    :cond_1c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1d9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e3

    :cond_1d9
    const-string/jumbo v3, "[DS]TaskBarpModel"

    const-string/jumbo v5, "Nobody to tell about the app changes. Launcher is not running."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1fb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_1fb
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_213

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_213
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-direct {v5, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_22a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_35
        :pswitch_84
        :pswitch_c0
        :pswitch_c0
        :pswitch_116
        :pswitch_116
        :pswitch_170
        :pswitch_170
    .end packed-switch
.end method
