.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get22(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "send_emergency_message"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    :goto_19
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get22(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    if-eqz v0, :cond_2a

    const v1, 0x7f121b7e

    :goto_24
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_19

    :cond_2a
    const v1, 0x7f121b7d

    goto :goto_24
.end method
