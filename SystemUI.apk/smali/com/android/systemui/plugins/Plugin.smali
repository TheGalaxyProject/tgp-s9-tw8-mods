.class public interface abstract Lcom/android/systemui/plugins/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# virtual methods
.method public getVersion()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .registers 3

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method
