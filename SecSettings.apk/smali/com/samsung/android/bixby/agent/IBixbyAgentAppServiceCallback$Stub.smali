.class public abstract Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IBixbyAgentAppServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.bixby.agent.IBixbyAgentAppServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const-string/jumbo v1, "com.samsung.android.bixby.agent.IBixbyAgentAppServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_c
    new-instance v1, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_12
    return-object v1

    :cond_13
    instance-of v1, v0, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_22

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "com.samsung.android.bixby.agent.IBixbyAgentAppServiceCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v1, "com.samsung.android.bixby.agent.IBixbyAgentAppServiceCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback$Stub;->onResponse(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
