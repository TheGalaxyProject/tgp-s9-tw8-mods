.class Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SecVolumeSeekBarPreference;->init()V
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

    iput-object p1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get2(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_11

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get8(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-set0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0, p2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-set1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-wrap2(Lcom/android/settings/notification/SecVolumeSeekBarPreference;Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    :cond_17
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_3a

    :cond_5f
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_83

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_3a

    :cond_83
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a7

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_3a

    :cond_a7
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_3a
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-wrap0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "SeekBarVolumizer onSampleStarting() : request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    return-void

    :cond_23
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "SeekBarVolumizer : can\'t request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method
