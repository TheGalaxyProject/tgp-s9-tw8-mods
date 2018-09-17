.class public abstract Lcom/sec/android/app/sysscope/service/c;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/sec/android/app/sysscope/service/b;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/b;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/sysscope/service/b;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/sec/android/app/sysscope/service/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_5a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/c;->a()V

    goto :goto_8

    :sswitch_18
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/c;->a(I)V

    goto :goto_8

    :sswitch_25
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sysscope/service/c;->a(ILjava/lang/String;)V

    goto :goto_8

    :sswitch_36
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sysscope/service/c;->a(ZLjava/lang/String;)V

    goto :goto_8

    :cond_4a
    const/4 v0, 0x0

    goto :goto_42

    :sswitch_4c
    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/c;->b(I)V

    goto :goto_8

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_18
        0x3 -> :sswitch_25
        0x4 -> :sswitch_36
        0x5 -> :sswitch_4c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
