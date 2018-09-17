.class public Lcom/android/systemui/MultiWindowUtilsProvider;
.super Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;
.source "MultiWindowUtilsProvider.java"


# instance fields
.field private final mIam:Landroid/app/IActivityManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;-><init>()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/MultiWindowUtilsProvider;->mIam:Landroid/app/IActivityManager;

    return-void
.end method

.method private getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/MultiWindowUtilsProvider;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    :goto_7
    return-object v1

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public static initialize()Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;
    .registers 1

    new-instance v0, Lcom/android/systemui/MultiWindowUtilsProvider;

    invoke-direct {v0}, Lcom/android/systemui/MultiWindowUtilsProvider;-><init>()V

    sput-object v0, Lcom/android/systemui/MultiWindowUtilsProvider;->sPluginMultiWindowUtils:Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;

    sget-object v0, Lcom/android/systemui/MultiWindowUtilsProvider;->sPluginMultiWindowUtils:Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;

    return-object v0
.end method


# virtual methods
.method public getConfiguration()I
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/MultiWindowUtilsProvider;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    :goto_9
    return v1

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public getPackageNameOfTopActivity(I)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/MultiWindowUtilsProvider;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    return-object v2
.end method

.method public getStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 3

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    return v0
.end method

.method public getTaskIdsOfStackInfo(I)[I
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/MultiWindowUtilsProvider;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    return-object v1

    :cond_e
    return-object v2
.end method

.method public isExistStackInfo(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/MultiWindowUtilsProvider;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTopActivityRecent()Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/MultiWindowUtilsProvider;->mIam:Landroid/app/IActivityManager;

    sget v3, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->RECENTS_STACK_ID:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_23

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_21

    iget-boolean v2, v1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v2, :cond_21

    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_21

    const-string/jumbo v2, "com.android.systemui.recents.RecentsActivity"

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20

    :catch_23
    move-exception v0

    goto :goto_9
.end method

.method public moveTaskToStack(IIZ)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/MultiWindowUtilsProvider;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
