.class final Lcom/samsung/android/settings/notification/SoundSettings$H;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$H;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;Lcom/samsung/android/settings/notification/SoundSettings$H;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings$H;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$H;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_14
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$H;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundSettings;->-get12(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_22
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$H;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundSettings;->-get11(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_6
        :pswitch_22
        :pswitch_5
        :pswitch_14
    .end packed-switch
.end method
