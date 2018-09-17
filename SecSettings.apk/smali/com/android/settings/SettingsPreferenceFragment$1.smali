.class Lcom/android/settings/SettingsPreferenceFragment$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method
