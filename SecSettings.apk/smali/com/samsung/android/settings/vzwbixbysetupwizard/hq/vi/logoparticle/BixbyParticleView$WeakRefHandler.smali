.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;
.super Landroid/os/Handler;
.source "BixbyParticleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakRefHandler"
.end annotation


# instance fields
.field mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    if-eqz v0, :cond_16

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->handleMessage(Z)V

    :cond_16
    return-void

    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method
