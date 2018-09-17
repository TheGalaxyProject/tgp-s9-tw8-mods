.class Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;
.super Landroid/os/Handler;
.source "DualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DualSoundRingtoneSettings;
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

    iput-object p1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_14
    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
        :pswitch_14
    .end packed-switch
.end method
