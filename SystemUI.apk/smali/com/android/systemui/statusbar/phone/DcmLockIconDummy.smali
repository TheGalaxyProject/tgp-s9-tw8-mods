.class public Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;
.super Lcom/android/systemui/statusbar/phone/LockIcon;
.source "DcmLockIconDummy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isLockIconSelected(FF)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .registers 2

    return-void
.end method

.method public setDeviceInteractive(Z)V
    .registers 2

    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2

    return-void
.end method

.method public setTransientFpError(Z)V
    .registers 2

    return-void
.end method

.method public update()V
    .registers 1

    return-void
.end method

.method public update(Z)V
    .registers 2

    return-void
.end method
