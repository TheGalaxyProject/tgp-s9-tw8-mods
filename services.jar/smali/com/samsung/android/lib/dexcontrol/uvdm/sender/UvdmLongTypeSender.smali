.class public Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;
.super Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.source "UvdmLongTypeSender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInMsgMinLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    return-void
.end method

.method private close()V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_close()I

    move-result v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ccic_close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private replyError([BI)V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v1, p2, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onFail(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method private sleep(I)V
    .registers 6

    int-to-long v2, p1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected sendData([BI)V
    .registers 16

    const/16 v12, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    const-class v9, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    monitor-enter v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_c
    const/16 v9, 0x10

    if-lt v3, v9, :cond_2d

    :cond_10
    if-eqz v4, :cond_76

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_14
    if-lt v3, v12, :cond_86

    :cond_16
    if-eqz v4, :cond_c3

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-lt v3, v12, :cond_d6

    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-nez v7, :cond_11f

    :goto_25
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_146

    :goto_2b
    monitor-exit v0

    return-void

    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v9

    if-eqz v9, :cond_10

    if-nez v4, :cond_10

    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v9, :cond_3b

    monitor-exit v0

    return-void

    :cond_3b
    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v9}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_open()I

    move-result v6

    if-gez v6, :cond_4b

    move v4, v7

    :goto_44
    if-eqz v4, :cond_4d

    :goto_46
    if-eqz v4, :cond_6a

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_4b
    move v4, v8

    goto :goto_44

    :cond_4d
    sget-object v9, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ccic_open failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_1c .. :try_end_69} :catchall_67

    throw v1

    :cond_6a
    :try_start_6a
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0x1f4

    invoke-direct {p0, v9}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->sleep(I)V

    goto :goto_48

    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_82

    const/4 v7, -0x1

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    :goto_80
    monitor-exit v0

    return-void

    :cond_82
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    goto :goto_80

    :cond_86
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v9

    if-eqz v9, :cond_16

    if-nez v4, :cond_16

    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v9, :cond_94

    monitor-exit v0

    return-void

    :cond_94
    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getPid()I

    move-result v10

    invoke-virtual {v9, v10, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataWrite(I[B)I

    move-result v6

    if-gez v6, :cond_a7

    move v4, v7

    :goto_a1
    if-eqz v4, :cond_a9

    :goto_a3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    :cond_a7
    move v4, v8

    goto :goto_a1

    :cond_a9
    sget-object v9, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ccic_write failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    :cond_c3
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_d2

    const/4 v7, -0x2

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    :goto_d0
    monitor-exit v0

    return-void

    :cond_d2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    goto :goto_d0

    :cond_d6
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v7

    if-eqz v7, :cond_1c

    if-nez v4, :cond_1c

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-nez v7, :cond_e4

    monitor-exit v0

    return-void

    :cond_e4
    if-gtz p2, :cond_114

    :goto_e6
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getPid()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataRead(I)[B

    move-result-object v2

    if-nez v2, :cond_118

    :cond_f2
    sget-object v7, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ccic_read failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_110
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    :cond_114
    invoke-direct {p0, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->sleep(I)V

    goto :goto_e6

    :cond_118
    array-length v7, v2

    iget v8, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    if-lt v7, v8, :cond_f2

    const/4 v4, 0x1

    goto :goto_110

    :cond_11f
    if-nez v4, :cond_127

    const/4 v7, -0x3

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    goto/16 :goto_25

    :cond_127
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    if-nez v7, :cond_137

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "callback is null"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_137
    new-instance v5, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-direct {v5}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;-><init>()V

    invoke-virtual {v5, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v7, v5}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_25

    :cond_146
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;
    :try_end_149
    .catchall {:try_start_6a .. :try_end_149} :catchall_67

    goto/16 :goto_2b
.end method

.method public setInMsgMinLength(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    return-void
.end method
