.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "Vision"

    const-string/jumbo v2, "VoiceAssistant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/VoiceAssistantPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string/jumbo v2, "VoiceAssistantHelp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "Vision"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/accessibility/vision/VoiceAssistantHelpPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_25

    :cond_42
    const-string/jumbo v2, "DarkScreenOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string/jumbo v2, "DarkScreenOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    :cond_54
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_25

    :cond_64
    const-string/jumbo v2, "RapidKeyInputOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string/jumbo v2, "RapidKeyInputOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    :cond_76
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/accessibility/vision/RapidKeyInputPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_25

    :cond_86
    const-string/jumbo v2, "VoiceLabel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/VoiceLabelPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_25

    :cond_9f
    const-string/jumbo v2, "ScreenZoomAndFont"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/FontPreviewPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    goto/16 :goto_25

    :cond_b9
    const-string/jumbo v2, "HighContrastFontsOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    const-string/jumbo v2, "HighContrastFontsOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    :cond_cb
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_dc
    const-string/jumbo v2, "ShowButtonShapesOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    const-string/jumbo v2, "ShowButtonShapesOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    :cond_ee
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_ff
    const-string/jumbo v2, "MagnifierWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/MagnifierWindowPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    goto/16 :goto_25

    :cond_119
    const-string/jumbo v2, "Magnification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/MagnificationPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    goto/16 :goto_25

    :cond_133
    const-string/jumbo v2, "LargeMousePointerOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_145

    const-string/jumbo v2, "LargeMousePointerOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    :cond_145
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/LargePointerPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    goto/16 :goto_25

    :cond_156
    const-string/jumbo v2, "NegativeColorsOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_168

    const-string/jumbo v2, "NegativeColorsOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    :cond_168
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_179
    const-string/jumbo v2, "ColorAdjustment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    goto/16 :goto_25

    :cond_193
    const-string/jumbo v2, "ColorLens"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/vision/ColorLensPreferenceController;->onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V

    goto/16 :goto_25
.end method
