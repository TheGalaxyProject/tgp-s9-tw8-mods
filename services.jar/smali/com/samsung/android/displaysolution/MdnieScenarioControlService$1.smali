.class Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPid(I)Ljava/lang/String;
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1a

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v2

    :cond_2d
    const-string/jumbo v2, ""

    return-object v2
.end method

.method getPidFromPackageName(Ljava/lang/String;)I
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_1a

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v2

    :cond_33
    const/4 v2, -0x1

    return v2
.end method

.method getUidFromPackageName(Ljava/lang/String;)I
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_1a

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    return v2

    :cond_33
    const/4 v2, -0x1

    return v2
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 16

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v8

    if-nez v8, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, p1

    move v5, p2

    const/4 v8, -0x1

    if-eq p1, v8, :cond_31

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v9

    int-to-long v10, v9

    add-long/2addr v10, v6

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_31
    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_9c

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_50

    return-void

    :cond_50
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v8, "MdnieScenarioControlService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "    className : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set0(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)Ljava/lang/String;

    :cond_9c
    if-eqz v2, :cond_cd

    if-eqz v0, :cond_cd

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v8, 0x0

    iput v8, v1, Landroid/os/Message;->what:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v3, v1, Landroid/os/Message;->arg1:I

    iput v5, v1, Landroid/os/Message;->arg2:I

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_cd
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
