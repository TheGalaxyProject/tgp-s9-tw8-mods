.class Lcom/android/systemui/volume/SecVolumeDialogImpl$5;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_44

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get44(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/media/SemSoundAssistantManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get10()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set5(J)J

    :goto_16
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get5(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const-string/jumbo v1, "com.android.systemui.volume"

    const-string/jumbo v2, "VKFM"

    if-eqz p2, :cond_57

    const-string/jumbo v3, "ON: "

    :goto_3a
    if-eqz p2, :cond_5b

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get10()J

    move-result-wide v4

    :goto_40
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap11(Lcom/android/systemui/volume/SecVolumeDialogImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get44(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/media/SemSoundAssistantManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get11()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set6(J)J

    goto :goto_16

    :cond_57
    const-string/jumbo v3, "OFF: "

    goto :goto_3a

    :cond_5b
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get11()J

    move-result-wide v4

    goto :goto_40
.end method
