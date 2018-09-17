.class Lcom/samsung/android/settings/CloudAccountSettings$1;
.super Ljava/lang/Object;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/CloudAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/CloudAccountSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/CloudAccountSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings$1;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .registers 2

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings$1;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings$1;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_13
    return-void
.end method
