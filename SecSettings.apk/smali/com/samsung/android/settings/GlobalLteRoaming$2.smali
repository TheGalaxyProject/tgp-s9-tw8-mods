.class Lcom/samsung/android/settings/GlobalLteRoaming$2;
.super Landroid/database/ContentObserver;
.source "GlobalLteRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalLteRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalLteRoaming;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalLteRoaming;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$2;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/settings/GlobalLteRoaming$2;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-static {v3}, Lcom/samsung/android/settings/GlobalLteRoaming;->-get1(Lcom/samsung/android/settings/GlobalLteRoaming;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/GlobalLteRoaming$2;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-static {v4}, Lcom/samsung/android/settings/GlobalLteRoaming;->-wrap0(Lcom/samsung/android/settings/GlobalLteRoaming;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lte_roaming_mode_on"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1c

    :goto_18
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1b} :catch_1e

    :goto_1b
    return-void

    :cond_1c
    move v1, v2

    goto :goto_18

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1b
.end method
