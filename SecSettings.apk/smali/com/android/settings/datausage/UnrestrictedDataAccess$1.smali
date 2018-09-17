.class Lcom/android/settings/datausage/UnrestrictedDataAccess$1;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AllowUnrestrictedDataUsageOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "AllowUnrestrictedDataUsageOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_1c
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-wrap0(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    :goto_21
    return-void

    :cond_22
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v2, "AllowUnrestrictedDataUsageShowSystemApps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_21

    :cond_4c
    const-string/jumbo v2, "AllowUnrestrictedDataUsageHideSystemApps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_40

    :cond_61
    const-string/jumbo v2, "AllowUnrestrictedDataUsageByAllowedAppFirst"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_40

    :cond_76
    const-string/jumbo v2, "AllowUnrestrictedDataUsageByName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_40
.end method
