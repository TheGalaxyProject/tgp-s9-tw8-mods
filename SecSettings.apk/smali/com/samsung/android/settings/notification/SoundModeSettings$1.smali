.class Lcom/samsung/android/settings/notification/SoundModeSettings$1;
.super Landroid/database/ContentObserver;
.source "SoundModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$1;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    :cond_d
    return-void
.end method
