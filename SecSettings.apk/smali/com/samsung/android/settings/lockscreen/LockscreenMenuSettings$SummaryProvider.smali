.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .registers 6

    if-eqz p1, :cond_c4

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.app.aodservice"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120178

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f12037e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f120b24

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_bf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f120e61

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_bf
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_c4
    return-void

    :cond_c5
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f1210d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19
.end method
