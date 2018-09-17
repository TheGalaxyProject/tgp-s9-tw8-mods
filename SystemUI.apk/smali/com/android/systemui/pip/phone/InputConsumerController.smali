.class public Lcom/android/systemui/pip/phone/InputConsumerController;
.super Ljava/lang/Object;
.source "InputConsumerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;,
        Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;,
        Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

.field private mListener:Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

.field private mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/InputConsumerController;)Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mListener:Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "registered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    :goto_3f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4b
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method public isRegistered()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public registerInputConsumer()V
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-nez v2, :cond_2e

    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    :try_start_9
    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v3, "pip_input_consumer"

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v3, "pip_input_consumer"

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_2f

    :goto_19
    new-instance v2, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;-><init>(Lcom/android/systemui/pip/phone/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_2e
    return-void

    :catch_2f
    move-exception v0

    sget-object v2, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to create PIP input consumer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public setRegistrationListener(Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-interface {v1, v0}, Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setTouchListener(Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mListener:Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

    return-void
.end method

.method public unregisterInputConsumer()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    if-eqz v1, :cond_1e

    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v2, "pip_input_consumer"

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1f

    :goto_d
    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;->dispose()V

    iput-object v3, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/pip/phone/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_1e
    return-void

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/android/systemui/pip/phone/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to destroy PIP input consumer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
