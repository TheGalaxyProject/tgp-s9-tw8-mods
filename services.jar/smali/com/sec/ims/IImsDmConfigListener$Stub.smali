.class public abstract Lcom/sec/ims/IImsDmConfigListener$Stub;
.super Landroid/os/Binder;
.source "IImsDmConfigListener.java"

# interfaces
.implements Lcom/sec/ims/IImsDmConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsDmConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsDmConfigListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IImsDmConfigListener"

.field static final TRANSACTION_onChangeDmValue:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.IImsDmConfigListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/IImsDmConfigListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.sec.ims.IImsDmConfigListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/IImsDmConfigListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/sec/ims/IImsDmConfigListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/sec/ims/IImsDmConfigListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/IImsDmConfigListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_28

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_9
    const-string/jumbo v2, "com.sec.ims.IImsDmConfigListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_10
    const-string/jumbo v2, "com.sec.ims.IImsDmConfigListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    :goto_21
    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/IImsDmConfigListener$Stub;->onChangeDmValue(Ljava/lang/String;Z)V

    return v3

    :cond_25
    const/4 v1, 0x0

    goto :goto_21

    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
