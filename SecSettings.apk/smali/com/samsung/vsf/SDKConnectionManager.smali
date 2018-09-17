.class public Lcom/samsung/vsf/SDKConnectionManager;
.super Ljava/lang/Object;
.source "SDKConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;,
        Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;
    }
.end annotation


# static fields
.field private static mServiceConnectionState:I


# instance fields
.field private clientParamsBundle:Landroid/os/Bundle;

.field private handlerThread:Landroid/os/HandlerThread;

.field private mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

.field private mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

.field private mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

.field private mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

.field private waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;-><init>(Lcom/samsung/vsf/SDKConnectionManager;Lcom/samsung/vsf/SDKConnectionManager$1;)V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    iput-object p2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    iput-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->clientParamsBundle:Landroid/os/Bundle;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ASRServiceComm"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;-><init>(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v0, 0x1

    sput v0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    new-instance v1, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-virtual {v2}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/vsf/SDKConnectionManager;Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;
    .registers 2

    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    return-object p1
.end method

.method static synthetic access$202(I)I
    .registers 1

    sput p0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/vsf/SDKConnectionManager;)Ljava/util/Queue;
    .registers 2

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/vsf/SDKConnectionManager;)Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/vsf/SDKConnectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->notifyConnectionError()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/vsf/SDKConnectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/vsf/SDKConnectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->connect()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/vsf/SDKConnectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->disconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/vsf/SDKConnectionManager;->handleServiceControl(Landroid/os/Message;)V

    return-void
.end method

.method private cleanUpSDKComponents()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    if-nez v0, :cond_8

    :goto_5
    iput-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_5
.end method

.method private connect()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "ASRClient-CM"

    const-string/jumbo v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.svoice"

    const-string/jumbo v2, "com.samsung.android.svoice.asrservice.ASRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "ASRClient-CM"

    const-string/jumbo v2, "ASR service binding in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v4, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    :goto_2e
    return-void

    :cond_2f
    const-string/jumbo v1, "ASRClient-CM"

    const-string/jumbo v2, "ASR service binding failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v3, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->notifyConnectionError()V

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    goto :goto_2e
.end method

.method private disconnect()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    if-nez v0, :cond_1c

    :goto_e
    sput v2, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_e
.end method

.method private handleServiceControl(Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    if-eqz v0, :cond_a

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    :cond_9
    :goto_9
    return-void

    :cond_a
    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "handleServiceControl, mService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->startListening()V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->stopListening()V

    goto :goto_9

    :pswitch_20
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->cancelRecognition()V

    goto :goto_9

    :pswitch_26
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->destroy()V

    goto :goto_9

    :pswitch_2c
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    invoke-interface {v1, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V

    goto :goto_9

    :pswitch_36
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->unregisterResponseListener()V

    goto :goto_9

    :pswitch_3c
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->sendAudio([B)V

    goto :goto_9

    :pswitch_4a
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->setClientParams()V

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->clientParamsBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->setClientParams(Landroid/os/Bundle;)V

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    invoke-interface {v1, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->setConfig(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V

    goto :goto_9

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1a
        :pswitch_4a
        :pswitch_20
        :pswitch_26
        :pswitch_3c
        :pswitch_2c
        :pswitch_36
    .end packed-switch
.end method

.method private notifyConnectionError()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    const-string/jumbo v2, "internal error"

    invoke-interface {v1, v2}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;->onError(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_4

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private requestService(Landroid/os/Message;)V
    .registers 7

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    invoke-virtual {v1, p1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget v1, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    if-eqz v1, :cond_19

    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ASR service is null and state disconnected , state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ASRClient-CM"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_3b

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    return-void

    :cond_3b
    sput v3, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    new-instance v3, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    iget-object v4, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-virtual {v4}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    iget-object v3, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    const/4 v4, 0x7

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method private setClientParams()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->clientParamsBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "clientPackageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method destroy(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "destroy isForced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ASRClient-CM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_20

    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->disconnect()V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendEmptyMessage(I)Z

    goto :goto_1f
.end method

.method registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerResponseListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ASRClient-CM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    return-void
.end method

.method startListening()V
    .registers 3

    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    return-void
.end method

.method stopListening()V
    .registers 3

    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    return-void
.end method

.method unregisterResponseListener()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterResponseListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ASRClient-CM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    return-void
.end method
