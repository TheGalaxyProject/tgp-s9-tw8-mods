.class Lcom/samsung/android/settings/display/SecDisplaySettings$4;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$4;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$4;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$4;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    const-string/jumbo v2, "auto_rotate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$4;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_28
    return-void
.end method
