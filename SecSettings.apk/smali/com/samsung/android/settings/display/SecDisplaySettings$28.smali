.class Lcom/samsung/android/settings/display/SecDisplaySettings$28;
.super Ljava/lang/Object;
.source "SecDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

.field final synthetic val$accessibility:I

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;II)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    iput p3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    sparse-switch v0, :sswitch_data_a6

    :cond_14
    :goto_14
    return-void

    :sswitch_15
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14

    :sswitch_22
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get13(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14

    :cond_44
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    if-ne v0, v2, :cond_73

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_b0

    goto :goto_14

    :pswitch_66
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14

    :cond_73
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "FmMagnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_b6

    goto/16 :goto_14

    :pswitch_97
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14

    nop

    :sswitch_data_a6
    .sparse-switch
        0x7f120178 -> :sswitch_15
        0x7f12130e -> :sswitch_22
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x7f120178
        :pswitch_66
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x7f120178
        :pswitch_97
    .end packed-switch
.end method
