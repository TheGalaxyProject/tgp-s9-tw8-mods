.class Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SecVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5

    const-string/jumbo v0, "VolumeSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange - focusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_42

    :cond_1d
    :goto_1d
    return-void

    :pswitch_1e
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get6(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get6(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/preference/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_2f
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get7(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get7(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->stopSample()V

    goto :goto_1d

    nop

    :pswitch_data_42
    .packed-switch -0x3
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method
