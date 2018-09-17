.class public Lcom/android/server/DualAppManagerService$OpChangeListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DualAppManagerService$OpChangeListener;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 12

    const/4 v8, 0x0

    sget v4, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    if-eqz v4, :cond_f

    const-string/jumbo v4, "DualAppManagerService"

    const-string/jumbo v5, "onOpChanged() is in progress"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const/4 v4, 0x1

    sput v4, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    :try_start_12
    invoke-static {}, Lcom/android/server/DualAppManagerService;->-get0()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {}, Lcom/android/server/DualAppManagerService;->-get1()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_61
    .catchall {:try_start_12 .. :try_end_28} :catchall_5d

    if-nez v3, :cond_2d

    sput v8, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    return-void

    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v1, p1, v4, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, p1, v4, p2, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-string/jumbo v7, "Permission related app op changed"

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5a} :catch_61
    .catchall {:try_start_2d .. :try_end_5a} :catchall_5d

    :goto_5a
    sput v8, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    return-void

    :catchall_5d
    move-exception v4

    sput v8, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    throw v4

    :catch_61
    move-exception v0

    goto :goto_5a
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "DualAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOpChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
