.class Lcom/android/settings/SettingsListPreference$2;
.super Ljava/lang/Object;
.source "SettingsListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsListPreference;->setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsListPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsListPreference$2;->this$0:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/SettingsListPreference$2;->this$0:Lcom/android/settings/SettingsListPreference;

    iget-object v0, v0, Lcom/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/SettingsListPreference$2;->this$0:Lcom/android/settings/SettingsListPreference;

    iget-object v0, v0, Lcom/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/SettingsListPreference$2;->this$0:Lcom/android/settings/SettingsListPreference;

    iget-object v0, v0, Lcom/android/settings/SettingsListPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_17
    return-void
.end method
