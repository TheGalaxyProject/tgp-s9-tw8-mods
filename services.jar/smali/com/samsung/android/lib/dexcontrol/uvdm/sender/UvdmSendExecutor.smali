.class public abstract Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.super Ljava/lang/Object;
.source "UvdmSendExecutor.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;
    }
.end annotation


# static fields
.field static final MAX_TRY:I = 0xa

.field static final MAX_TRY_OPEN:I = 0x10

.field static final MAX_TRY_READ:I = 0xa

.field static final MAX_TRY_WRITE:I = 0xa

.field static final RETRY_SLEEP_TIME:I = 0x1f4


# instance fields
.field private mIsEnabled:Z

.field mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mPid:I

.field private mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

.field mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;


# direct methods
.method constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;-><init>(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$1;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->startThread()V

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mPid:I

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->stopThread()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->isSending()Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_20
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    goto :goto_12

    :cond_23
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    goto :goto_20
.end method

.method final enqueueRequest([BI)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mRequestProvider:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->enqueueRequest([BI)V

    goto :goto_4
.end method

.method getPid()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mPid:I

    return v0
.end method

.method getSenderEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mIsEnabled:Z

    return v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public send([B)V
    .registers 3

    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->send([BI)V

    return-void
.end method

.method public send([BI)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->getSenderEnable()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sender is not enabled."

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    if-nez p1, :cond_1e

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "message is wrong."

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1e
    array-length v0, p1

    if-lez v0, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->enqueueRequest([BI)V

    goto :goto_10
.end method

.method protected abstract sendData([BI)V
.end method

.method public setInMsgMinLength(I)V
    .registers 2

    return-void
.end method

.method public setResponseListener(Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    return-void
.end method
