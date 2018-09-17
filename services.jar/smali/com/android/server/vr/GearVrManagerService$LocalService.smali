.class final Lcom/android/server/vr/GearVrManagerService$LocalService;
.super Lcom/samsung/android/vr/GearVrManagerInternal;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/GearVrManagerService;Lcom/android/server/vr/GearVrManagerService$LocalService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService$LocalService;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    return-void
.end method


# virtual methods
.method public getVrActivityType(Landroid/content/pm/ActivityInfo;)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap19(Lcom/android/server/vr/GearVrManagerService;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public getVrRecentsMode()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap20(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public hasHmtFeature()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap0(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isDock()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap1(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isGearVrInputDevice(Landroid/view/InputDevice;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v0

    return v0
.end method

.method public isGearVrReady()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap2(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isHomeKeyBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap3(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap4(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isOverlayRestrictionWindow(Ljava/lang/String;II)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap5(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isStartActivityAllowed(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap6(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap7(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isVrServiceAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceAvailable()Z

    move-result v0

    return v0
.end method

.method public notifyDeviceEventChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap33(Lcom/android/server/vr/GearVrManagerService;I)V

    return-void
.end method

.method public notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap34(Lcom/android/server/vr/GearVrManagerService;Landroid/app/ApplicationErrorReport;)V

    return-void
.end method

.method public readyForVrMode(Landroid/content/ComponentName;Landroid/content/Intent;II)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->-wrap8(Lcom/android/server/vr/GearVrManagerService;Landroid/content/ComponentName;Landroid/content/Intent;II)Z

    move-result v0

    return v0
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public startVrHome()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap43(Lcom/android/server/vr/GearVrManagerService;)V

    return-void
.end method

.method public startVrRecents()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap44(Lcom/android/server/vr/GearVrManagerService;)V

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap35(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method
