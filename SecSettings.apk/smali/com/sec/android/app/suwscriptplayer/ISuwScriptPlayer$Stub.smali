.class public abstract Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;
.super Landroid/os/Binder;
.source "ISuwScriptPlayer.java"

# interfaces
.implements Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_5a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_a
    const-string/jumbo v3, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayer"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_11
    const-string/jumbo v5, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;->isPlaying()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_21

    move v3, v4

    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_25
    const-string/jumbo v5, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;->PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_41

    move v3, v4

    :cond_41
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_45
    const-string/jumbo v5, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;->StopScript()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_55

    move v3, v4

    :cond_55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_45
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
