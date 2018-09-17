.class Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;
.super Ljava/lang/Object;
.source "DualSoundRingtoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v1

    if-ne v1, v5, :cond_3e

    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/support/v7/preference/Preference;I)V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1f} :catch_60

    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v1

    if-ne v1, v5, :cond_4e

    :try_start_2f
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    const/16 v3, 0x100

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/support/v7/preference/Preference;I)V
    :try_end_3d
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_3d} :catch_5e

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/support/v7/preference/Preference;I)V
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_4b} :catch_4c

    goto :goto_1f

    :catch_4c
    move-exception v0

    goto :goto_1f

    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/support/v7/preference/Preference;I)V
    :try_end_5b
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_5b} :catch_5c

    goto :goto_3d

    :catch_5c
    move-exception v0

    goto :goto_3d

    :catch_5e
    move-exception v0

    goto :goto_3d

    :catch_60
    move-exception v0

    goto :goto_1f
.end method
