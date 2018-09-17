.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get16(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get16(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_3f

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get16(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v1

    if-ne v1, v3, :cond_78

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "low_power_back_data_off"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_76

    move v1, v2

    :goto_3c
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get18(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_72

    move v2, v3

    :cond_72
    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    return v3

    :cond_76
    move v1, v3

    goto :goto_3c

    :cond_78
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ultra_power_mode_back_data_off"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_8e

    move v1, v2

    :goto_8a
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3f

    :cond_8e
    move v1, v3

    goto :goto_8a
.end method
