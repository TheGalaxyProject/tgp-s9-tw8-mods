.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;
.super Landroid/database/ContentObserver;
.source "VibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get5(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get5(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get5(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->setCurrentProgress()V

    :cond_1d
    return-void
.end method
