.class public Lcom/android/settings/ManagedLockPasswordProvider;
.super Ljava/lang/Object;
.source "ManagedLockPasswordProvider.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;
    .registers 3

    new-instance v0, Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-direct {v0}, Lcom/android/settings/ManagedLockPasswordProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method createIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method getPickerOptionTitle(Z)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getResIdForLockUnlockScreen(Z)I
    .registers 3

    if-eqz p1, :cond_6

    const v0, 0x7f1500ed

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f1500ec

    goto :goto_5
.end method

.method getResIdForLockUnlockSubScreen()I
    .registers 2

    const v0, 0x7f1500ee

    return v0
.end method

.method isManagedPasswordChoosable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isSettingManagedPasswordSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
