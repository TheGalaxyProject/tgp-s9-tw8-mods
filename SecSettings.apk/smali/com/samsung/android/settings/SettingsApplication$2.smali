.class Lcom/samsung/android/settings/SettingsApplication$2;
.super Ljava/lang/Object;
.source "SettingsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SettingsApplication;->checkFotaBadgeCountOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SettingsApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SettingsApplication;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/SettingsApplication$2;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v2, p0, Lcom/samsung/android/settings/SettingsApplication$2;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SettingsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUsingATTFota(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v0}, Lcom/android/settings/Utils;->isUsingVZWFota(Landroid/content/Context;)Z

    move-result v1

    :goto_10
    if-eqz v1, :cond_1b

    invoke-static {v0}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_1b

    invoke-static {v0}, Lcom/android/settings/Utils;->resetFotaBadgeCount(Landroid/content/Context;)V

    :cond_1b
    return-void

    :cond_1c
    const/4 v1, 0x1

    goto :goto_10
.end method
