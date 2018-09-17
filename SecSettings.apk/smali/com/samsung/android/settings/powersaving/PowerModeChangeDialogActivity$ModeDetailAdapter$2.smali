.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

.field final synthetic val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "restricted_device_performance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "restricted_device_performance"

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v4

    if-eqz p2, :cond_32

    :goto_25
    invoke-static {v2, v3, v5, v4, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->-get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;)Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    return-void

    :cond_32
    move v0, v1

    goto :goto_25

    :cond_34
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "psm_network_power_saving"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v2

    if-ne v2, v0, :cond_6e

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "low_power_back_data_off"

    if-eqz p2, :cond_6c

    :goto_68
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_28

    :cond_6c
    move v1, v0

    goto :goto_68

    :cond_6e
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_power_mode_back_data_off"

    if-eqz p2, :cond_83

    :goto_7f
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_28

    :cond_83
    move v1, v0

    goto :goto_7f

    :cond_85
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "psm_network_power_saving"

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v4

    if-eqz p2, :cond_9e

    :goto_9a
    invoke-static {v2, v3, v5, v4, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_28

    :cond_9e
    move v0, v1

    goto :goto_9a

    :cond_a0
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "psm_always_on_display_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "psm_always_on_display_mode"

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v4

    if-eqz p2, :cond_c7

    :goto_c2
    invoke-static {v2, v3, v5, v4, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_28

    :cond_c7
    move v1, v0

    goto :goto_c2
.end method
