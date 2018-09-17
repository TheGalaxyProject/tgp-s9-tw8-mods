.class public interface abstract Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.super Ljava/lang/Object;
.source "ConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationListener"
.end annotation


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    return-void
.end method
