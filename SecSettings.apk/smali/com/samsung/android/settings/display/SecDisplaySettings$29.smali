.class Lcom/samsung/android/settings/display/SecDisplaySettings$29;
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

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->val$menu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->val$menu:I

    sparse-switch v0, :sswitch_data_1e

    :goto_6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :sswitch_a
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_6

    :sswitch_14
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$29;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_6

    :sswitch_data_1e
    .sparse-switch
        0x7f120178 -> :sswitch_a
        0x7f12130e -> :sswitch_14
    .end sparse-switch
.end method
