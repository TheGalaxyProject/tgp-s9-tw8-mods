.class public Lcom/android/server/am/MARsHandler;
.super Ljava/lang/Object;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsHandler$MainHandler;,
        Lcom/android/server/am/MARsHandler$MainThread;
    }
.end annotation


# static fields
.field static final MARS_MH_ALERT_TOAST_WIN_MSG:I = 0xb

.field static final MARS_MH_ARES_MEMORY_NOT_ENOUGH_MSG:I = 0x3

.field static final MARS_MH_BIGDATA_SEND_TO_HQM_MSG:I = 0xe

.field static final MARS_MH_CANCEL_JOB_SCHEDULER_MSG:I = 0xd

.field static final MARS_MH_CANCEL_POLICY_MSG:I = 0x6

.field static final MARS_MH_CANCEL_UDS_POLICY_MSG:I = 0x7

.field static final MARS_MH_NOTI_BAR_CLICKED_MSG:I = 0xc

.field static final MARS_MH_PACKAGE_STATUS_CHANGED_MSG:I = 0x9

.field static final MARS_MH_RUN_POLICY_SPECIFIC_PKG_MSG:I = 0x4

.field static final MARS_MH_TIME_CHANGED_MSG:I = 0xa

.field static final MARS_MH_TRIGGER_POLICY_MSG:I = 0x2

.field static final MARS_MH_TRIGGER_SBIKE_POLICY_MSG:I = 0x8

.field static final MARS_MH_TRIGGER_UDS_POLICY_MSG:I = 0x5

.field static final MARS_MH_UPDATE_PACKAGES_MSG:I = 0x1

.field static final TAG:Ljava/lang/String; = "MARsHandler"


# instance fields
.field mContext:Landroid/content/Context;

.field public mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/MARsHandler$MainThread;

    const-string/jumbo v1, "MARsMainThread"

    const/4 v2, -0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsHandler$MainThread;-><init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler$MainThread;->start()V

    return-void
.end method


# virtual methods
.method public sendAREsMemoryNotEnoughMsgToMainHandler(IZ)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "emergencyKillForce"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendAlertToastWindowMsgToMainHandler(Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendBigDataInfoFromMARs(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "policy"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "packageVersion"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "skipReason"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "caller"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "hostingType"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "componentName"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCancelJobPkgMsgToMainHandler(Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCancelPolicyMsgToMainHandler(Ljava/lang/String;II)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCancelUDSPolicyToMainHandler(Ljava/util/ArrayList;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageList"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendNotiBarClickedMsgToMainHandler(Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendPkgStatusChangedMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isReInstall"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendRunPolicySepcificPkgMsgToMainHandler(ILjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packageList"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTimeChangedMsgToMainHandler(J)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "changedTime"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "trigger-reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTriggerSBikePolicyMsgToMainHandler(ILjava/lang/String;ILjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "trigger-reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packageList"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTriggerUDSPolicyMsgToMainHandler(ILjava/lang/String;ILjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "trigger-reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packageList"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdatePkgMsgToMainHandler(J)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
