.class final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    }
.end annotation


# static fields
.field private static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"

.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;",
            ">;"
        }
    .end annotation
.end field

.field final mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

.field final mBindIntent:Landroid/content/Intent;

.field mBound:Z

.field final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field final mCallingUid:I

.field mCanceled:Z

.field final mContext:Landroid/content/Context;

.field final mFullConnection:Landroid/content/ServiceConnection;

.field mFullyBound:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveAssistData:Z

.field mHaveScreenshot:Z

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final mLock:Ljava/lang/Object;

.field mPendingAssistDataCount:I

.field mPendingShowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionOwner:Landroid/os/IBinder;

.field mScreenshot:Landroid/graphics/Bitmap;

.field final mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

.field mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/IVoiceInteractionSession;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field mShowArgs:Landroid/os/Bundle;

.field private mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

.field mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field mShowFlags:I

.field mShown:Z

.field final mToken:Landroid/os/IBinder;

.field final mUser:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksFailedLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksShownLocked()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    iput p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    :try_start_67
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voicesession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_84} :catch_ba

    move-result-object v1

    :goto_85
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.voice.VoiceInteractionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v5, 0x31

    invoke-virtual {v2, v3, p0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v2, :cond_d0

    :try_start_af
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    const/16 v4, 0x7ef

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b9} :catch_c5

    :goto_b9
    return-void

    :catch_ba
    move-exception v0

    const-string/jumbo v2, "voicesession"

    const-string/jumbo v3, "AM dead"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    :catch_c5
    move-exception v0

    const-string/jumbo v2, "VoiceInteractionServiceManager"

    const-string/jumbo v3, "Failed adding window token"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b9

    :cond_d0
    const-string/jumbo v2, "VoiceInteractionServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed binding to voice interaction session service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9
.end method

.method private deliverSessionDataLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;)V
    .registers 15

    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    const-string/jumbo v2, "structure"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/assist/AssistStructure;

    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistContent;

    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    const-string/jumbo v2, "android.intent.extra.ASSIST_UID"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_66

    if-eqz v7, :cond_66

    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_53

    invoke-virtual {v12}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v2

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    :cond_53
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_66

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    :cond_66
    :try_start_66
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget v8, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityIndex:I

    iget v9, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityCount:I

    move-object v5, v10

    invoke-interface/range {v4 .. v9}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_71

    :goto_70
    return-void

    :catch_71
    move-exception v11

    goto :goto_70
.end method

.method private notifyPendingShowCallbacksFailedLocked()V
    .registers 4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :catch_1d
    move-exception v0

    goto :goto_14
.end method

.method private notifyPendingShowCallbacksShownLocked()V
    .registers 4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_17
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :catch_1d
    move-exception v0

    goto :goto_14
.end method


# virtual methods
.method public cancelLocked(Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_15

    :try_start_10
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_45

    :cond_15
    :goto_15
    if-eqz p1, :cond_22

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_22

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_5b

    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :try_start_27
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_50

    :goto_2f
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    iput-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    iput-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    :cond_37
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    :cond_44
    return-void

    :catch_45
    move-exception v0

    const-string/jumbo v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "Voice interation session already dead"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catch_50
    move-exception v0

    const-string/jumbo v1, "VoiceInteractionServiceManager"

    const-string/jumbo v2, "Failed removing window token"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :catch_5b
    move-exception v0

    goto :goto_22
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 7

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v1, :cond_1a

    :try_start_8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {p1, v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_1c

    :goto_17
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    :cond_1a
    const/4 v1, 0x1

    return v1

    :catch_1c
    move-exception v0

    goto :goto_17
.end method

.method deliverSessionDataLocked()V
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    :try_start_13
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_82

    :cond_1d
    :goto_1d
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    if-gtz v0, :cond_23

    iput-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    :cond_23
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    if-eqz v0, :cond_32

    :try_start_27
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_80

    :goto_2e
    iput-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    iput-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    :cond_32
    return-void

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    if-gtz v0, :cond_5b

    const-string/jumbo v0, "VoiceInteractionServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingAssistDataCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;

    iget-object v0, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    if-nez v0, :cond_7c

    :try_start_6d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget v4, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityIndex:I

    iget v5, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_79} :catch_7a

    goto :goto_33

    :catch_7a
    move-exception v7

    goto :goto_33

    :cond_7c
    invoke-direct {p0, v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;)V

    goto :goto_33

    :catch_80
    move-exception v7

    goto :goto_2e

    :catch_82
    move-exception v7

    goto :goto_1d
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowArgs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v0, :cond_78

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSession="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInteractor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_78
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    if-eqz v0, :cond_98

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_98
    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assist_structure_enabled"

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assist_screenshot_enabled"

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_27

    or-int/lit8 v0, v0, 0x2

    :cond_27
    return v0
.end method

.method grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V
    .registers 13

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    :cond_12
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    :cond_2a
    return-void
.end method

.method grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .registers 14

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_16

    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 18

    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_12
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    const/4 v2, 0x0

    move v1, p3

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const/4 v5, 0x1

    move v2, p3

    move-object/from16 v3, p5

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3e} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3e} :catch_42
    .catchall {:try_start_12 .. :try_end_3e} :catchall_55

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_41
    return-void

    :catch_42
    move-exception v9

    :try_start_43
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    const-string/jumbo v1, "Can\'t propagate permission"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_55

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_41

    :catch_50
    move-exception v8

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_41

    :catchall_55
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public hideLocked()Z
    .registers 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v1, :cond_4f

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v1, :cond_40

    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iput v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_25

    :try_start_20
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_54

    :cond_25
    :goto_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_52

    :goto_30
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_3b

    :try_start_34
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_50

    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionHidden(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    :cond_40
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    :cond_4d
    const/4 v1, 0x1

    return v1

    :cond_4f
    return v6

    :catch_50
    move-exception v0

    goto :goto_3b

    :catch_52
    move-exception v0

    goto :goto_30

    :catch_54
    move-exception v0

    goto :goto_25
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_25

    if-nez v1, :cond_18

    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {v1, v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_1a
    .catchall {:try_start_d .. :try_end_18} :catchall_25

    :cond_18
    :goto_18
    monitor-exit v2

    return-void

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    const-string/jumbo v3, "Failed adding window token"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_18

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;Ljava/util/List;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "II",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v1, :cond_151

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    const v7, 0xc000001

    invoke-virtual {v1, v2, v3, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    :cond_1e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    const/4 v11, 0x1

    :try_start_22
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_161

    move-result v11

    :goto_28
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result v1

    or-int p3, p3, v1

    if-eqz v11, :cond_ac

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_aa

    const/4 v14, 0x1

    :goto_35
    if-eqz v11, :cond_b0

    if-eqz v14, :cond_b0

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_ae

    const/4 v13, 0x1

    :goto_3e
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    const/4 v12, 0x0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_136

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x31

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12d

    if-eqz v14, :cond_12d

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p5, :cond_b2

    const/4 v8, 0x1

    :goto_6d
    const/4 v10, 0x0

    :goto_6e
    if-ge v10, v8, :cond_cf

    const/4 v1, 0x1

    if-ne v8, v1, :cond_b7

    move-object/from16 v5, p5

    :goto_75
    :try_start_75
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "assist_with_context"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "index"

    invoke-virtual {v4, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "count"

    invoke-virtual {v4, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    if-nez v10, :cond_c0

    const/4 v6, 0x1

    :goto_96
    if-nez v10, :cond_c2

    const/4 v7, 0x1

    :goto_99
    const/4 v2, 0x1

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    if-eqz v1, :cond_c4

    const/4 v12, 0x1

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_a7} :catch_15e

    :cond_a7
    :goto_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    :cond_aa
    const/4 v14, 0x0

    goto :goto_35

    :cond_ac
    const/4 v14, 0x0

    goto :goto_35

    :cond_ae
    const/4 v13, 0x0

    goto :goto_3e

    :cond_b0
    const/4 v13, 0x0

    goto :goto_3e

    :cond_b2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_6d

    :cond_b7
    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    goto :goto_75

    :cond_c0
    const/4 v6, 0x0

    goto :goto_96

    :cond_c2
    const/4 v7, 0x0

    goto :goto_99

    :cond_c4
    if-nez v10, :cond_a7

    const/4 v1, 0x1

    :try_start_c7
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_ce} :catch_15e

    const/4 v13, 0x0

    :cond_cf
    :goto_cf
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_143

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x32

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13c

    if-eqz v13, :cond_13c

    :try_start_ea
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "assist_with_screen"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v12, 0x1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_fb} :catch_15c

    :goto_fb
    if-eqz v12, :cond_10e

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_10e

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10e
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_147

    :try_start_112
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    move-object/from16 v0, p4

    invoke-interface {v1, v2, v3, v0}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_123} :catch_15a

    :goto_123
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    :cond_126
    :goto_126
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionShown(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    const/4 v1, 0x1

    return v1

    :cond_12d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_cf

    :cond_136
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_cf

    :cond_13c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    goto :goto_fb

    :cond_143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    goto :goto_fb

    :cond_147
    if-eqz p4, :cond_126

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    :cond_151
    if-eqz p4, :cond_156

    :try_start_153
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_156} :catch_158

    :cond_156
    :goto_156
    const/4 v1, 0x0

    return v1

    :catch_158
    move-exception v9

    goto :goto_156

    :catch_15a
    move-exception v9

    goto :goto_123

    :catch_15c
    move-exception v9

    goto :goto_fb

    :catch_15e
    move-exception v9

    goto/16 :goto_a7

    :catch_161
    move-exception v9

    goto/16 :goto_28
.end method
