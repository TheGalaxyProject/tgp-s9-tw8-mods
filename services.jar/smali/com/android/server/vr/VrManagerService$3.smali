.class Lcom/android/server/vr/VrManagerService$3;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get1(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "VrManagerService"

    invoke-static {v8, v9, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v8

    if-nez v8, :cond_10

    return-void

    :cond_10
    const-string/jumbo v8, "********* Dump of VrManagerService *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VR mode is currently: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get6(Lcom/android/server/vr/VrManagerService;)Z

    move-result v8

    if-eqz v8, :cond_97

    const-string/jumbo v8, "allowed"

    :goto_2d
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Persistent VR mode is currently: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get4(Lcom/android/server/vr/VrManagerService;)Z

    move-result v8

    if-eqz v8, :cond_9b

    const-string/jumbo v8, "enabled"

    :goto_4f
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "Previous state transitions:\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  "

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, p2}, Lcom/android/server/vr/VrManagerService;->-wrap7(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    const-string/jumbo v8, "\n\nRemote Callbacks:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get7(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v2, v1

    :goto_79
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_9f

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get7(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v1, :cond_95

    const-string/jumbo v8, ","

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_95
    move v2, v1

    goto :goto_79

    :cond_97
    const-string/jumbo v8, "disallowed"

    goto :goto_2d

    :cond_9b
    const-string/jumbo v8, "disabled"

    goto :goto_4f

    :cond_9f
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get7(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v8, "\n\nPersistent Vr State Remote Callbacks:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get5(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v2, v1

    :goto_b9
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_d7

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get5(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v1, :cond_d5

    const-string/jumbo v8, ","

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d5
    move v2, v1

    goto :goto_b9

    :cond_d7
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get5(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "Installed VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get2(Lcom/android/server/vr/VrManagerService;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    move-result-object v3

    if-eqz v3, :cond_104

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_135

    :cond_104
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10a
    const-string/jumbo v8, "Enabled VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_122

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_150

    :cond_122
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_128
    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "********* End of VrManagerService Dump *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_135
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_139
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_139

    :cond_150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_154
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_128

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_154
.end method

.method public getVr2dDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap2(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrModeState()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap0(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap5(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method public registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap4(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap15(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap12(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method public unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap11(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method
