.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initSeekbar()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get19(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-result-object v1

    if-ne p1, v1, :cond_7b

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "PowerSavingValueFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PSM onPreferenceChange(screen): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get19(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "screen_resolution_state"

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v1, v2, v4, v3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get18(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get15(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventWithDetailLog(Landroid/content/Context;III)V

    :cond_7b
    const/4 v1, 0x1

    return v1
.end method
